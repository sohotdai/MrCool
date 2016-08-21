require 'test_helper'

class Admin::PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
    assert_select 'tbody', :count => 1 do
      assert_select 'tr', :count => 1
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { day: @patient.day, description: @patient.description, first_name: @patient.first_name, gender: @patient.gender, is_deleted: @patient.is_deleted, last_name: @patient.last_name, location_id: @patient.location_id, medical_record_number: @patient.medical_record_number, middle_name: @patient.middle_name, month: @patient.month, status: @patient.status, viewed_count: @patient.viewed_count, year: @patient.year }
    end

    assert_redirected_to admin_patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { day: @patient.day, description: @patient.description, first_name: @patient.first_name, gender: @patient.gender, is_deleted: @patient.is_deleted, last_name: @patient.last_name, location_id: @patient.location_id, medical_record_number: @patient.medical_record_number, middle_name: @patient.middle_name, month: @patient.month, status: @patient.status, viewed_count: @patient.viewed_count, year: @patient.year }
    assert_redirected_to admin_patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to admin_patients_path
  end
end
