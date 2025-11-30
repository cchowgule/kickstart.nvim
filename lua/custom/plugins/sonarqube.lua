return {
  'iamkarasik/sonarqube.nvim',
  enabled = false,
  config = function()
    require('sonarqube').setup {}
  end,
}
