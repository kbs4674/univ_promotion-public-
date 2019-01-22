require 'test_helper'

class UnivsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @univ = univs(:one)
  end

  test "should get index" do
    get univs_url
    assert_response :success
  end

  test "should get new" do
    get new_univ_url
    assert_response :success
  end

  test "should create univ" do
    assert_difference('Univ.count') do
      post univs_url, params: { univ: { aws_credit: @univ.aws_credit, content: @univ.content, edwith: @univ.edwith, etc: @univ.etc, github: @univ.github, goorm_ide: @univ.goorm_ide, inflearn: @univ.inflearn, job_planet: @univ.job_planet, ms_office: @univ.ms_office, naver_music: @univ.naver_music, univ_name_eng: @univ.univ_name_eng, univ_name_kor: @univ.univ_name_kor, win10: @univ.win10 } }
    end

    assert_redirected_to univ_url(Univ.last)
  end

  test "should show univ" do
    get univ_url(@univ)
    assert_response :success
  end

  test "should get edit" do
    get edit_univ_url(@univ)
    assert_response :success
  end

  test "should update univ" do
    patch univ_url(@univ), params: { univ: { aws_credit: @univ.aws_credit, content: @univ.content, edwith: @univ.edwith, etc: @univ.etc, github: @univ.github, goorm_ide: @univ.goorm_ide, inflearn: @univ.inflearn, job_planet: @univ.job_planet, ms_office: @univ.ms_office, naver_music: @univ.naver_music, univ_name_eng: @univ.univ_name_eng, univ_name_kor: @univ.univ_name_kor, win10: @univ.win10 } }
    assert_redirected_to univ_url(@univ)
  end

  test "should destroy univ" do
    assert_difference('Univ.count', -1) do
      delete univ_url(@univ)
    end

    assert_redirected_to univs_url
  end
end
