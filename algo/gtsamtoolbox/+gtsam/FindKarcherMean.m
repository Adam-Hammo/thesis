function varargout = FindKarcherMean(varargin)
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Rot3Vector')
        varargout{1} = gtsam_wrapper(3908, varargin{:});
      else
        error('Arguments do not match any overload of function FindKarcherMean');
      end
