import { LightningElement, wire } from 'lwc';
import getMerzShippingDetails from "@salesforce/apex/GetMerzShippingDetails.callMerz";

export default class DisplayShippingStatus extends LightningElement {
    shippingDetails;
    isLoading = true;
    exampleTrackingNumber = '123';

    @wire(getMerzShippingDetails, {trackingNumber : '$exampleTrackingNumber'})
    wiredShippingDetails({ error, data }){
        if(data){
            this.shippingDetails = data;
        }
        this.isLoading = false;
    };


    /*getShipmentDetails(){
        getMerzShippingDetails()
        .then((result) => {
            this.shippingDetails = result;
        })
        .catch((error) => {
            console.error(error);
        });
    }*/
}