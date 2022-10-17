<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		{{{ if pagination.pages.length }}}
		<div><!-- IMPORT partials/category-selector.tpl --></div>
		{{{ else }}}
		<h1 class="categories-title">[[pages:categories]]</h1>
		{{{ end }}}
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
			<!-- MFF change: Section display -->
			{{{each categories}}}
			<!-- IF categories.isSection -->
			<!-- IMPORT partials/categories/section_item.tpl -->
			<!-- ELSE -->
			<!-- IMPORT partials/categories/item.tpl -->
			<!-- ENDIF categories.isSection -->
			{{{end}}}
			<!-- MFF change: Section display END -->
		</ul>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
