class TreatmentObserver < ActiveRecord::Observer

  def after_update(treatment)
    History.create(treatment_id: treatment.id)
  end
end
