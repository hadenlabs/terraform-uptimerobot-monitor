import * as path from 'path'
import fs from 'fs'

export const hyphenate = (text: string): string => {
  return text.replace(/([a-zA-Z])(?=[A-Z])/g, '$1-').toLowerCase()
}

export const baseGeneratorPath = path.join(__dirname, '../../../../')
export const baseTemplatesPath = path.join(__dirname, '../templates')

export function pathExists(path: string) {
  return fs.existsSync(path)
}

export function pathMake(path: string) {
  return fs.mkdirSync(path)
}
