window.ProposalsNew =
  skippedSuggestionStep: false
  groupId: null
  init: ->
    input = $('#proposal_interest_borders_tkn')
    input.tokenInput eiresis.paths.interest_borders.index, {
      propertyToSearch: 'text'
      crossDomain: false
      prePopulate: input.data("pre")
      hintText: eiresis.i18n.interestBorders.hintText
      noResultsText: eiresis.i18n.interestBorders.noResultsText
      searchingText: eiresis.i18n.interestBorders.searchingText
      preventDuplicates: true
      allowTabOut: true
    }

    input = $('#proposal_tags_list')
    input.tokenInput eiresis.paths.tags.index, {
      theme: "facebook"
      crossDomain: false
      allowFreeTagging: true
      minChars: 3,
      hintText: eiresis.i18n.tags.hintText
      searchingText: eiresis.i18n.tags.searchingText
      preventDuplicates: true
      allowTabOut: true
      tokenValue: "name"
    }

    $('#proposal_proposal_category_id').select2 {
      minimumResultsForSearch: -1
      templateResult: formatCategory
      templateSelection: formatCategory
      escapeMarkup: (m)->
        return m
      }
    .on 'select2:close', ->
      $('#new_proposal').formValidation 'revalidateField', 'proposal[proposal_category_id]'

    id = 'proposal_sections_attributes_0_paragraphs_attributes_0_content'
    if CKEDITOR.instances[id] is undefined
      CKEDITOR.replace id,
        'toolbar': 'proposal'
        'language': eiresis.i18n.locale

    new eiresis.QuorumSelector()
