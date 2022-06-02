// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require actiontext
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery"
import "bootstrap"
import '../stylesheets/application.scss';
import '../stylesheets/header.scss'
import '../stylesheets/home';
import '../stylesheets/users.scss';
import '../stylesheets/curriculum_show.scss';
import '../stylesheets/keyframes.scss';


Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"

require("trix");
require("@rails/actiontext");

const images = require.context('../images', true)
