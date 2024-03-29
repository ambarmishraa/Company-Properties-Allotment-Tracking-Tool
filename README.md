### Tool-for-asset-managment
To track the allotment and complete life cycle of corporate assets such as phones, tablets, laptops and other gears handed out to employees.

![Application For Asset Management](https://github.com/gauravmishra2123/Tool-for-asset-managment/assets/114698901/b87f0785-a4b6-476f-b1d3-586e8a05ecc8)

### Project Description:

1. To track corporate assets allocation such as house, flats, vechiles, phones, tablets, laptops and other gears handed out to employees.
2. The application might be used by several companies
3. Each company might add all or some of its employees
4. Each company and its staff might delegate one or more devices to employees for a certain period of time
5. Each company should be able to see when a Device was checked out and returned
6. Each device should have a log of what condition it was handed out and returned
7. The complete life cycle management from initial allocation to eventual handover or retirement


### Project Objective:

1. Efficient Asset Allocation
2. Accurate records
3. Centralized Asset Repository
4. Enhanced employee satisfaction
5. Life Cycle Management Automation
6. Transparency in the system
7. User-Friendly Interface
8. Real-time Tracking
9. Cost Optimization
10. Regulatory Compliance<br/>

<b>#Flowchart of the process<b><br/>
<br/>

![Flowchart-2](https://github.com/gauravmishra2123/Tool-for-asset-managment/assets/114698901/821e2c9c-fba3-4f3c-9cc9-536f6910cd3e)<br/>


### Database Schema:
This implementation has 4 main models: Company, Device, Employee, and DeviceAssignment.<br/>
 1. `Company` stores information about the companies using the app.<br/>
 2. `Device` represents the corporate assets, with information such as their name, description, serial number, condition, and which company they belong to.<br/>
 3. `Employee` represents the company's staff, with a one-to-one relationship to a Django user and a many-to-many relationship with the Device model, through the DeviceAssignment model.<br/>
 4. `DeviceAssignment` represents the assignments of devices to employees, with a foreign key to both the Device and Employee models, as well as the assignment and return dates.<br/>


