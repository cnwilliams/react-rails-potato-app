var Potato = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    variety: React.PropTypes.string,
    image: React.PropTypes.string
  },

  render: function() {
    return (
      <div className="potato">
        <h4>{this.props.name} ({this.props.variety})</h4>
        <img src={this.props.image} />
      </div>
    );
  }
});
