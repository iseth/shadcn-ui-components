# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "motion" # @10.17.0
pin "@motionone/animation", to: "@motionone--animation.js" # @10.17.0
pin "@motionone/dom", to: "@motionone--dom.js" # @10.17.0
pin "@motionone/easing", to: "@motionone--easing.js" # @10.17.0
pin "@motionone/generators", to: "@motionone--generators.js" # @10.17.0
pin "@motionone/types", to: "@motionone--types.js" # @10.17.0
pin "@motionone/utils", to: "@motionone--utils.js" # @10.17.0
pin "hey-listen" # @1.0.8
pin "tslib" # @2.6.2
pin "tippy.js" # @6.3.7
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
