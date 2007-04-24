{if $billers == null}
<P><em>$LANG['no_billers'].</em></p>
" {else}
<b>{$LANG.manage_billers} :: <a href='index.php?module=billers&view=add'>{$LANG.add_new_biller}</a></b>
<hr></hr>
<table class="ricoLiveGrid manage" id="rico_biller" align="center">
	<colgroup>
		<col style='width:15%;' />
		<col style='width:10%;' />
		<col style='width:40%;' />
		<!--
<col style='width:10%;' />
<col style='width:10%;' />
-->
		<col style='width:25%;' />
		<col style='width:10%;' />
	</colgroup>
	<thead>
		<tr class="sortHeader">
			<th class="noFilter sortable">{$LANG.action}</th>
			<th class=" index_table sortable">{$LANG.biller.id}</th>
			<th class="index_table sortable">{$LANG.biller_name}</th>
			<th class="index_table sortable">{$LANG.email}</th>
			<th class="noFilter index_table sortable">{$LANG.enabled}</th>
		</tr>
	</thead>
	{foreach from=$billers item=biller}
	<tr class='index_table'>
		<td class='index_table'><a class='index_table'
			href='index.php?module=billers&view=details&submit={$biller.b_id}&action=view'>
		{$LANG.view} </a> :: <a class='index_table'
			href='index.php?module=billers&view=details&submit={$biller.b_id}&action=edit'>
		{$LANG.edit} </a></td>
		<td class='index_table'>{$biller.b_id}</td>
		<td class='index_table'>{$biller.name}</td>
		<!--
	<td class='index_table'>{$biller.b_phone}</td>
	<td class='index_table'>{$biller.b_mobile_phone}</td>
	-->
		<td class='index_table'>{$biller.b_email}</td>
		<td class='index_table'>{$biller.b_enabled}</td>
	</tr>
	{/foreach}
</table>
{/if}
