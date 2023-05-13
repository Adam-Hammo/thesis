function varargout = triangulateSafe(varargin)
      if length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3_S2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'gtsam.TriangulationParameters')
        varargout{1} = gtsam_wrapper(1776, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3DS2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'gtsam.TriangulationParameters')
        varargout{1} = gtsam_wrapper(1777, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3Bundler') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'gtsam.TriangulationParameters')
        varargout{1} = gtsam_wrapper(1778, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3Fisheye') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'gtsam.TriangulationParameters')
        varargout{1} = gtsam_wrapper(1779, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3Unified') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'gtsam.TriangulationParameters')
        varargout{1} = gtsam_wrapper(1780, varargin{:});
      else
        error('Arguments do not match any overload of function triangulateSafe');
      end
