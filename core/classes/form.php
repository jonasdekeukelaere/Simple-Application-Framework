<?php

/**
 * This is our extended version of SpoonForm
 *
 * @package		site
 * @subpackage	core
 *
 * @author		Tijs Verkoyen <tijs@sumocoders.be>
 * @since		2.0
 */
class SiteForm extends SpoonForm
{
	/**
	 * Class constructor.
	 *
	 * @param	string $name				Name of the form.
	 * @param	string[optional] $action	The action (URL) whereto the form will be submitted, if not provided it will be autogenerated.
	 * @param	string[optional] $method	The method to use when submiting the form, default is POST.
	 * @param	bool[optional] $useToken	Should we automagically add a formtoken?
	 * @return void
	 */
	public function __construct($name, $action = null, $method = 'post', $useToken = false)
	{
		// no acion provided?
		$action = ($action === null) ? '/' . trim((string) $_SERVER['REQUEST_URI'], '/') : (string) $action;

		// call parent
		parent::__construct($name, $action, $method, $useToken);
	}

	/**
	 * Adds a single button.
	 *
	 * @return	SpoonFormButton
	 * @param	string $name				The name of the button.
	 * @param	string $value				The text that should appear on the button.
	 * @param	string[optional] $type		The type of button.
	 * @param	string[optional] $class		The CSS-class for the button.
	 */
	public function addButton($name, $value, $type = null, $class = 'inputButton btn')
	{
		// add element
		$this->add(new SpoonFormButton($name, $value, $type, $class));

		// return the element
		return $this->getField($name);
	}

	/**
	 * Generates an example template, based on the elements already added.
	 *
	 * @return	string
	 */
	public function getTemplateExample()
	{
		$fields = $this->getFields();
		unset($fields['_utf8']);

		// start form
		$value = "\n";
		$value .= '{form:' . $this->getName() . "}\n";
		$value .= '	<div class="form-horizontal">' . "\n";

		/**
		 * At first all the hidden fields need to be added to this form, since
		 * they're not shown and are best to be put right beneath the start of the form tag.
		 */
		foreach($fields as $object)
		{
			// is a hidden field
			if(($object instanceof SpoonFormHidden) && $object->getName() != 'form')
			{
				$value .= "\t" . '{$hid' . str_replace('[]', '', SpoonFilter::toCamelCase($object->getName())) . "}\n";
			}
		}

		/**
		 * Add all the objects that are NOT hidden fields. Based on the existance of some methods
		 * errors will or will not be shown.
		 */
		foreach($fields as $object)
		{
			// NOT a hidden field
			if(!($object instanceof SpoonFormHidden))
			{
				$name = str_replace('[]', '', SpoonFilter::toCamelCase($object->getName()));

				// buttons
				if($object instanceof SpoonFormButton)
				{
					$value .= '		<div class="control-group">' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				{$btn' . $name . '}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}

				// single checkboxes
				elseif($object instanceof SpoonFormCheckbox)
				{
					$value .= '		<div class="control-group{option:chk' . $name . 'Error} error{/option:chk' . $name . 'Error}">' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				<label for="' . $object->getAttribute('id') . '" class="checkbox">{$chk' . $name . '} ' . $name . '</label> {$chk' . $name . 'Error}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}

				// multi checkboxes
				elseif($object instanceof SpoonFormMultiCheckbox)
				{
					$value .= '		<div class="control-group{option:chk' . $name . 'Error} error{/option:chk' . $name . 'Error}">' . "\n";
					$value .= '			<label class="control-label">' . $name . '</label>' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				{iteration:' . $object->getName() . '}' . "\n";
					$value .= '					<label for="{$' . $object->getName() . '.id}" class="checkbox">{$' . $object->getName() . '.chk' . $name . '} {$' . $object->getName() . '.label}</label>' . "\n";
					$value .= '				{/iteration:' . $object->getName() . '}' . "\n";
					$value .= '				{$chk' . $name . 'Error}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}

				// dropdowns
				elseif($object instanceof SpoonFormDropdown)
				{
					$value .= '		<div class="control-group{option:ddm' . $name . 'Error} error{/option:ddm' . $name . 'Error}">' . "\n";
					$value .= '			<label for="' . $object->getAttribute('id') . '" class="control-label">' . $name;
					if(in_array('required', array_keys($object->getAttributes())));
					{
						$value .= '<abbr title="{$msgRequired}">*</abbr>';
					}
					$value .= '</label>' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				{$ddm' . $name . '} {$ddm' . $name . 'Error}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}

				// filefields
				elseif($object instanceof SpoonFormFile)
				{
					$value .= '		<div class="control-group{option:file' . $name . 'Error} error{/option:file' . $name . 'Error}">' . "\n";
					$value .= '			<label for="' . $object->getAttribute('id') . '" class="control-label">' . $name;
					if(in_array('required', array_keys($object->getAttributes())));
					{
						$value .= '<abbr title="{$msgRequired}">*</abbr>';
					}
					$value .= '</label>' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				{$file' . $name . '} {$file' . $name . 'Error}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}

				// radiobuttons
				elseif($object instanceof SpoonFormRadiobutton)
				{
					$value .= '		<div class="control-group{option:rbt' . $name . 'Error} error{/option:rbt' . $name . 'Error}">' . "\n";
					$value .= '			<label class="control-label">' . $name . '</label>' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				{iteration:' . $object->getName() . '}' . "\n";
					$value .= '					<label for="{$' . $object->getName() . '.id}">{$' . $object->getName() . '.rbt' . $name . '} {$' . $object->getName() . '.label}</label>' . "\n";
					$value .= '				{/iteration:' . $object->getName() . '}' . "\n";
					$value .= '				{$rbt' . $name . 'Error}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}

				// textfields
				elseif(($object instanceof SpoonFormDate) || ($object instanceof SpoonFormPassword) || ($object instanceof SpoonFormTextarea) || ($object instanceof SpoonFormText) || ($object instanceof SpoonFormTime))
				{
					$value .= '		<div class="control-group{option:txt' . $name . 'Error} error{/option:txt' . $name . 'Error}">' . "\n";
					$value .= '			<label for="' . $object->getAttribute('id') . '" class="control-label">' . $name;
					if(in_array('required', array_keys($object->getAttributes())));
					{
						$value .= '<abbr title="{$msgRequired}">*</abbr>';
					}
					$value .= '</label>' . "\n";
					$value .= '			<div class="controls">' . "\n";
					$value .= '				{$txt' . $name . '} {$txt' . $name . 'Error}' . "\n";
					$value .= '			</div>' . "\n";
					$value .= '		</div>' . "\n";
				}
			}
		}

		// close form tag
		$value .= '	</div>' ."\n";
		$value .= '{/form:' . $this->getName() . '}';

		return $value;
	}
}