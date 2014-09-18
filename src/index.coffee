transform= require('coffee-react-transform')

module.exports = class ReactCompiler
  brunchPlugin: yes
  type: 'javascript'
  extension: 'cjsx'
  pattern: /\.cjsx/

  constructor: (@config) ->
    @includeHeader= @config?.plugins?.react?.autoIncludeCommentBlock is yes

  compile: (params, callback) ->
    source = if @includeHeader
        "# @cjsx React.DOM \n#{ params.data }"
      else
        params.data

    try
      output = transform(source)

    catch err
      console.log "ERROR", err
      return callback err.toString()

    callback null, data:output
