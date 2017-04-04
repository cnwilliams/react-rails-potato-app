var Potatos = React.createClass({
  // propTypes: {
  //   potatos: React.PropTypes.array
  // },
  render: function() {
    let potatos = this.props.map(function(potato){
      return (
        <Potato key={potato.id} potato={potato}/>
      )
    })
    return(
      <div className="potatos">
        {potatos}
      </div>
    )
  }
});
