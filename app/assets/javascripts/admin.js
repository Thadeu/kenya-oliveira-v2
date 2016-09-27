// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require semantic
//= require turbolinks
//
// require_tree .

$(document).on('page:change', function(){

  /**
   * Dimmer for hover Cards Specials
   * @private
   * @param {String|Object|Array|Boolean|Number} paramName Describe this parameter
   * @returns Describe what it returns
   * @type String|Object|Array|Boolean|Number
   */
  
  $('.menu.open').on("click",function(e){
    e.preventDefault();
    $('.ui.sidebar.main').sidebar('toggle');
  });

  $('.special.cards .image').dimmer({
    on: 'hover'
  });

  /**
   * Modal Semantic-UI para confirmação de cadastros e exclusões
   * Utiliza o bootbox reescrito por Thadeu Esteves para Semantic-UI
   * @param  {[type]} '.basic.gespar.modal' [description]
   * @return {[type]}                       [description]
   */
   $('.ui.modal').modal('show');

  /**
   * Ativa o Dropdown
   * @param  {[type]} '.ui.dropdown' [description]
   * @return {[type]}                [description]
   */
  $('.ui.dropdown').dropdown();

  /**
   * Ativa o Acoordion
   * @param  {[type]} '.ui.accordion' [description]
   * @return {[type]}                 [description]
   */
  $('.ui.accordion').accordion();

  /**
   * Ativa as tabs
   * @param  {[type]} '.menu .item'        [description]
   * @return {[type]}        [description]
   */
  $('.menu .item').tab();

  /**
   * Ativa os checkbox e radio input
   * @param  {[type]} '.ui.radio.checkbox' [description]
   * @return {[type]}                      [description]
   */
  $('.ui.radio.checkbox').checkbox();
  $('.ui.checkbox').checkbox();

  /**
   * Fecha a janela de messagens do sistema.
   * @param  {[type]} '.message .close'       [description]
   * @return {[type]}           [description]
   */
  $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade');
  });

  /**
   * Fecha uma mensagem de aviso se ela estiver visible em 5s
   * @param  {[type]} $('.message' [description]
   * @return {[type]}              [description]
   */
  var type_message = '.message.error, .message.success, .message.info';
  if($(type_message).is(':visible')){
    setTimeout(function(){
      $(type_message).find('.close').trigger('click');
    }, 5000);
  }

  /**
   * Abrir Popup em qualquer link que tenha title e data-title
   * @param  {[type]} '.item' [description]
   * @return {[type]}         [description]
   */
  $('.open-popup, .popup, .popup-info')
  .popup({
    on: 'hover'
  });
  /**
   * Trigger destinada a disparar o popup caso haja evento de mouseover em um link
   * @param  {[type]} '.open-popup' [description]
   * @return {[type]}               [description]
   */
  $('.open-popup').trigger('mouseover');

  /**
   * Ativa o modulo de tab-active
   * @param  {[type]} '.tab.menu .item'        [description]
   * @return {[type]}            [description]
   */
  $('.tab .item').tab();
});