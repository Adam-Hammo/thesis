function varargout = triangulatePoint3(varargin)
      if length(varargin) == 6 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1741, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1742, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.CameraSetCal3_S2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel') && isa(varargin{6},'logical')
        varargout{1} = gtsam_wrapper(1743, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.CameraSetCal3_S2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1744, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3_S2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1745, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3DS2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1746, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3DS2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1747, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.CameraSetCal3DS2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel') && isa(varargin{6},'logical')
        varargout{1} = gtsam_wrapper(1748, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.CameraSetCal3DS2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1749, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3DS2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1750, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Bundler') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1751, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Bundler') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1752, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.CameraSetCal3Bundler') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel') && isa(varargin{6},'logical')
        varargout{1} = gtsam_wrapper(1753, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.CameraSetCal3Bundler') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1754, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3Bundler') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1755, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Fisheye') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1756, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Fisheye') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1757, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.CameraSetCal3Fisheye') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel') && isa(varargin{6},'logical')
        varargout{1} = gtsam_wrapper(1758, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.CameraSetCal3Fisheye') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1759, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3Fisheye') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1760, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Unified') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical') && isa(varargin{6},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1761, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Unified') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1762, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.CameraSetCal3Unified') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel') && isa(varargin{6},'logical')
        varargout{1} = gtsam_wrapper(1763, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.CameraSetCal3Unified') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical') && isa(varargin{5},'gtsam.SharedNoiseModel')
        varargout{1} = gtsam_wrapper(1764, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3Unified') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1765, varargin{:});
      else
        error('Arguments do not match any overload of function triangulatePoint3');
      end
