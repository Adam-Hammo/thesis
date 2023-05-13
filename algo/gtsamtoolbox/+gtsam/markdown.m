function varargout = markdown(varargin)
      if length(varargin) == 2 && isa(varargin{1},'gtsam.DiscreteValues') && isa(varargin{2},'gtsam.KeyFormatter')
        varargout{1} = gtsam_wrapper(785, varargin{:});
      elseif length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteValues')
        varargout{1} = gtsam_wrapper(786, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.DiscreteValues') && isa(varargin{2},'gtsam.KeyFormatter') && isa(varargin{3},'std.mapKeyvectorchar')
        varargout{1} = gtsam_wrapper(787, varargin{:});
      else
        error('Arguments do not match any overload of function markdown');
      end
