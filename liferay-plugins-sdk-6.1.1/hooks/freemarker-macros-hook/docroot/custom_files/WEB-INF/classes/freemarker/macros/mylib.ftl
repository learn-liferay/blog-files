<#macro createTable items>
  <#assign rowNumber = 1>
  <table class="wcm-table">
  <#list items as item>
    <tr>
      <td class="wcm-td <@setRowColorClass rowNumber=rowNumber />">
        ${item.data}
      </td>
    </tr>
    <#assign rowNumber = rowNumber + 1>
  </#list>
  </table>
</#macro>

<#macro setRowColorClass rowNumber>
  <#if (rowNumber % 2 == 0)>
    even
  <#else>
    odd
  </#if>
</#macro>

