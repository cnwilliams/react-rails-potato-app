var Potatos = React.createClass({
  render: function() {
    let potatos = this.props.potatos.map(function(potato){
      return (
        <Potato name={potato.name} variety={potato.variety} image={potato.image}/>
      )
    })
    return(
      <div className="potatos">
        {potatos}
      </div>
    )
  }
});
