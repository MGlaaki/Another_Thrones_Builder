require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get cards_url
    assert_response :success
  end

  test "should get new" do
    get new_card_url
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post cards_url, params: { card: { ci: @card.ci, claim: @card.claim, cost: @card.cost, deck_limit: @card.deck_limit, faction_code: @card.faction_code, faction_name: @card.faction_name, flavor: @card.flavor, illustrator: @card.illustrator, image_url: @card.image_url, income: @card.income, initiative: @card.initiative, is_intrigue: @card.is_intrigue, is_loyal: @card.is_loyal, is_military: @card.is_military, is_multiple: @card.is_multiple, is_power: @card.is_power, is_unique: @card.is_unique, label: @card.label, name: @card.name, pack_code: @card.pack_code, pack_name: @card.pack_name, position: @card.position, reserve: @card.reserve, si: @card.si, strength: @card.strength, text: @card.text, traits: @card.traits, type_code: @card.type_code, type_name: @card.type_name } }
    end

    assert_redirected_to card_url(Card.last)
  end

  test "should show card" do
    get card_url(@card)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_url(@card)
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { ci: @card.ci, claim: @card.claim, cost: @card.cost, deck_limit: @card.deck_limit, faction_code: @card.faction_code, faction_name: @card.faction_name, flavor: @card.flavor, illustrator: @card.illustrator, image_url: @card.image_url, income: @card.income, initiative: @card.initiative, is_intrigue: @card.is_intrigue, is_loyal: @card.is_loyal, is_military: @card.is_military, is_multiple: @card.is_multiple, is_power: @card.is_power, is_unique: @card.is_unique, label: @card.label, name: @card.name, pack_code: @card.pack_code, pack_name: @card.pack_name, position: @card.position, reserve: @card.reserve, si: @card.si, strength: @card.strength, text: @card.text, traits: @card.traits, type_code: @card.type_code, type_name: @card.type_name } }
    assert_redirected_to card_url(@card)
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card)
    end

    assert_redirected_to cards_url
  end
end
