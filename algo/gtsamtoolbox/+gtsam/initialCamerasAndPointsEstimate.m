function varargout = initialCamerasAndPointsEstimate(varargin)
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SfmData')
        varargout{1} = gtsam_wrapper(4113, varargin{:});
      else
        error('Arguments do not match any overload of function initialCamerasAndPointsEstimate');
      end
