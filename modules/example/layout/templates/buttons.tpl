{include:'{$CORE_PATH}/layout/templates/head.tpl'}
{include:'{$CORE_PATH}/layout/templates/nav.tpl'}

<div id="contentWrap">
	<div id="content">
		<header id="header" role="banner">
			<div class="container bar">
				<div class="title">
					<a id="toggleMenu" class="visible-xs iconLink" href="#">{$lblMenu|uppercase}</a>
					<h2>Buttons</h2>
				</div>
			</div>
		</header>

      	{include:'{$CORE_PATH}/layout/templates/notifications.tpl'}

		<section id="main" role="main">
			<div class="container">
				<h2>Default buttons</h2>
				<p>Button styles can be applied to anything with the <code>.btn</code> class applied. However, typically you'll want to apply these to only <code>&lt;a&gt;</code> and <code>&lt;button&gt;</code> elements for the best rendering.</p>
				<table class="table table-bordered table-striped">
					<thead>
					<tr>
						<th>Button</th>
						<th>class=""</th>
						<th>Description</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td><button type="button" class="btn btn-default">Default</button></td>
						<td><code>btn btn-default</code></td>
						<td>Standard gray button with gradient</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-primary">Primary</button></td>
						<td><code>btn btn-primary</code></td>
						<td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-info">Info</button></td>
						<td><code>btn btn-info</code></td>
						<td>Used as an alternative to the default styles</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-success">Success</button></td>
						<td><code>btn btn-success</code></td>
						<td>Indicates a successful or positive action</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-warning">Warning</button></td>
						<td><code>btn btn-warning</code></td>
						<td>Indicates caution should be taken with this action</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-danger">Danger</button></td>
						<td><code>btn btn-danger</code></td>
						<td>Indicates a dangerous or potentially negative action</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-link">Link</button></td>
						<td><code>btn btn-link</code></td>
						<td>Deemphasize a button by making it look like a link while maintaining button behavior</td>
					</tr>
					</tbody>
				</table>

				<h4>Cross browser compatibility</h4>
				<p>IE9 doesn't crop background gradients on rounded corners, so we remove it. Related, IE9 jankifies disabled <code>button</code> elements, rendering text gray with a nasty text-shadow that we cannot fix.</p>


				<h2>Button sizes</h2>
				<p>Fancy larger or smaller buttons? Add <code>.btn-lg</code>, <code>.btn-sm</code>, or <code>.btn-xs</code> for additional sizes.</p>
				<div class="bs-docs-example">
					<p>
						<button type="button" class="btn btn-lg btn-primary">Large button</button>
						<button type="button" class="btn btn-default btn-lg">Large button</button>
					</p>
					<p>
						<button type="button" class="btn btn-primary">Default button</button>
						<button type="button" class="btn btn-default">Default button</button>
					</p>
					<p>
						<button type="button" class="btn btn-sm btn-primary">Small button</button>
						<button type="button" class="btn btn-default btn-sm">Small button</button>
					</p>
					<p>
						<button type="button" class="btn btn-xs btn-primary">Extra small button</button>
						<button type="button" class="btn btn-default btn-xs">Extra small button</button>
					</p>
				</div>
				<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;p&gt;</span></li><li class="L1"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-lg btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Large button</span><span class="tag">&lt;/button&gt;</span></li><li class="L2"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default btn-lg"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Large button</span><span class="tag">&lt;/button&gt;</span></li><li class="L3"><span class="tag">&lt;/p&gt;</span></li><li class="L4"><span class="tag">&lt;p&gt;</span></li><li class="L5"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Default button</span><span class="tag">&lt;/button&gt;</span></li><li class="L6"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Default button</span><span class="tag">&lt;/button&gt;</span></li><li class="L7"><span class="tag">&lt;/p&gt;</span></li><li class="L8"><span class="tag">&lt;p&gt;</span></li><li class="L9"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-sm btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Small button</span><span class="tag">&lt;/button&gt;</span></li><li class="L0"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default btn-sm"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Small button</span><span class="tag">&lt;/button&gt;</span></li><li class="L1"><span class="tag">&lt;/p&gt;</span></li><li class="L2"><span class="tag">&lt;p&gt;</span></li><li class="L3"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-xs btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Extra snall button</span><span class="tag">&lt;/button&gt;</span></li><li class="L4"><span class="pln">  </span><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default btn-xs"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Extra small button</span><span class="tag">&lt;/button&gt;</span></li><li class="L5"><span class="tag">&lt;/p&gt;</span></li></ol></pre>
				<p>Create block level buttons—those that span the full width of a parent— by adding <code>.btn-block</code>.</p>
				<div class="bs-docs-example">
					<div class="well" style="max-width: 400px; margin: 0 auto 10px;">
						<button type="button" class="btn btn-lg btn-block btn-primary">Block level button</button>
						<button type="button" class="btn btn-default btn-lg btn-block">Block level button</button>
					</div>
				</div>
				<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-lg btn-block btn-primary"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Block level button</span><span class="tag">&lt;/button&gt;</span></li><li class="L1"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default btn-lg btn-block"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="tag">&gt;</span><span class="pln">Block level button</span><span class="tag">&lt;/button&gt;</span></li></ol></pre>


				<h2>Disabled state</h2>
				<p>Make buttons look unclickable by fading them back 50%.</p>

				<h3>Anchor element</h3>
				<p>Add the <code>.disabled</code> class to <code>&lt;a&gt;</code> buttons.</p>
				<p class="bs-docs-example">
					<a href="#" class="btn btn-lg btn-primary disabled">Primary link</a>
					<a href="#" class="btn btn-default btn-lg disabled">Link</a>
				</p>
				<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-lg btn-primary disabled"</span><span class="tag">&gt;</span><span class="pln">Primary link</span><span class="tag">&lt;/a&gt;</span></li><li class="L1"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">"#"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default btn-lg disabled"</span><span class="tag">&gt;</span><span class="pln">Link</span><span class="tag">&lt;/a&gt;</span></li></ol></pre>
				<p>
					<span class="label label-info">Heads up!</span>
					We use <code>.disabled</code> as a utility class here, similar to the common <code>.active</code> class, so no prefix is required. Also, this class is only for aesthetic; you must use custom JavaScript to disable links here.
				</p>

				<h3>Button element</h3>
				<p>Add the <code>disabled</code> attribute to <code>&lt;button&gt;</code> buttons.</p>
				<p class="bs-docs-example">
					<button type="button" class="btn btn-lg btn-primary" disabled="disabled">Primary button</button>
					<button type="button" class="btn btn-default btn-lg" disabled="disabled">Button</button>
				</p>
				<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-lg btn-primary"</span><span class="pln"> </span><span class="atn">disabled</span><span class="pun">=</span><span class="atv">"disabled"</span><span class="tag">&gt;</span><span class="pln">Primary button</span><span class="tag">&lt;/button&gt;</span></li><li class="L1"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default btn-lg"</span><span class="pln"> </span><span class="atn">disabled</span><span class="pun">=</span><span class="atv">"disabled"</span><span class="tag">&gt;</span><span class="pln">Button</span><span class="tag">&lt;/button&gt;</span></li></ol></pre>


				<h2>One class, multiple tags</h2>
				<p>Use the <code>.btn</code> class on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.</p>
				<form class="bs-docs-example">
					<a class="btn btn-default" href="">Link</a>
					<button class="btn btn-default" type="submit">Button</button>
					<input class="btn btn-default" type="button" value="Input">
					<input class="btn btn-default" type="submit" value="Submit">
				</form>
				<pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="tag">&lt;a</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn"</span><span class="pln"> </span><span class="atn">href</span><span class="pun">=</span><span class="atv">""</span><span class="tag">&gt;</span><span class="pln">Link</span><span class="tag">&lt;/a&gt;</span></li><li class="L1"><span class="tag">&lt;button</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="tag">&gt;</span><span class="pln">Button</span><span class="tag">&lt;/button&gt;</span></li><li class="L2"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"button"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"Input"</span><span class="tag">&gt;</span></li><li class="L3"><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"btn btn-default"</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"Submit"</span><span class="tag">&gt;</span></li></ol></pre>
				<p>As a best practice, try to match the element for your context to ensure matching cross-browser rendering. If you have an <code>input</code>, use an <code>&lt;input type="submit"&gt;</code> for your button.</p>
				<p>Among other things, there's a <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=697451">a Firefox bug</a> that prevents us from setting the <code>line-height</code> of <code>&lt;input&gt;</code>-based buttons, causing them to not exactly match the height of other buttons on Firefox.</p>
			</div>
		</section>
	</div>
</div>

{include:'{$CORE_PATH}/layout/templates/footer.tpl'}
