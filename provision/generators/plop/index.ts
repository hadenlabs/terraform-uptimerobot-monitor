import { NodePlopAPI } from 'node-plop'
import { testGenerator } from './generators'
import shell from 'shelljs'
interface PrettifyCustomActionData {
  path: string
}

export default function plop(plop: NodePlopAPI) {
  plop.setGenerator('test', testGenerator)

  plop.setActionType('prettify', (answers, config) => {
    const data = config.data as PrettifyCustomActionData
    shell.exec(`yarn prettier:fix -- "${data.path}"`, { silent: true })
    return ''
  })
}
