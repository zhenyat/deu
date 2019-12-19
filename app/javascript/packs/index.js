import React     from "react"
import PropTypes from "prop-types"
import Alert     from 'react-bootstrap/Alert' //or: import {Alert} from "react-bootstrap"

const variants = ['primary', 'secondary', 'success', 'danger',
                  'warning', 'info',      'light',   'dark'];
              
class Alerts extends React.Component {

    render () {
        return (
            variants.map((variant, index) => (
                <Alert key={index} variant={variant}>
                    <strong>{variant}</strong> style alert
                </Alert>
            ))
        );
    };
};

export default Alerts
