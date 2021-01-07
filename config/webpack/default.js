const { config, environment } = require('@rails/webpacker')
const { extname } = require('path')

const loaders = {
    javascript: {
        test: /\.js$/,
        use: [
            {
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env']
                }
            }
        ],
    },
    typescript: {
        test: /\.ts$/,
        use: [
            {
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-typescript']
                }
            }
        ]
    },
    css: {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
    },
    files: {
        test: path => config.static_assets_extensions.includes(extname(path)),
        use: ['file-loader'],
    }
}

environment.loaders = { values: () => Object.values(loaders) }
module.exports = environment
