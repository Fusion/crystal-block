module.exports =
class CrystalBlockView
  constructor: (serializeState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('crystal-block')

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element

  updateMessage: (rowNumber)->
    row = atom.workspace.getActiveTextEditor().lineTextForBufferRow(rowNumber)

    @element.removeChild(@element.firstChild) if @element.hasChildNodes()
    # Create message element
    message = document.createElement('div')
    message.textContent = "Line: #{rowNumber+1} #{row}"
    message.classList.add('message')
    @element.appendChild(message)
