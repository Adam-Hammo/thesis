function varargout = load2D(varargin)
      if length(varargin) == 7 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.noiseModel.Diagonal') && isa(varargin{3},'numeric') && isa(varargin{4},'logical') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.NoiseFormat') && isa(varargin{7},'gtsam.KernelFunctionType')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3893, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.noiseModel.Diagonal') && isa(varargin{3},'numeric') && isa(varargin{4},'logical') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.NoiseFormat')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3894, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.noiseModel.Diagonal') && isa(varargin{3},'numeric') && isa(varargin{4},'logical') && isa(varargin{5},'logical')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3895, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.noiseModel.Diagonal') && isa(varargin{3},'numeric') && isa(varargin{4},'logical')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3896, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.noiseModel.Diagonal') && isa(varargin{3},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3897, varargin{:});
      elseif length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.noiseModel.Diagonal')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3898, varargin{:});
      elseif length(varargin) == 1 && isa(varargin{1},'char')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3899, varargin{:});
      else
        error('Arguments do not match any overload of function load2D');
      end
