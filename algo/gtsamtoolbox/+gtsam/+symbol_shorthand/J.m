function varargout = J(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(440, varargin{:});
      else
        error('Arguments do not match any overload of function J');
      end
