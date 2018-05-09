# Clinic APP API

$ Few Examples

# GET /doctors
 `http :3000/doctors`

# POST /doctors
 `http POST :3000/doctors name="Dr. Sachin Bansal" phone="9999999999" specialization="Cardiologist"`

# PUT /doctors/:id
 `http PUT :3000/doctors/1 name="Dr. Binny Bansal"`

# DELETE /doctors/:id
 `http DELETE :3000/doctors/1`

# GET /appointments
 `http :3000/appointments`

# POST /appointments
 `http POST :3000/appointments doctor_id=1 patient_id=1 diseases="Heart, BP" appointment_date="2018-05-09 15:32:16"`

