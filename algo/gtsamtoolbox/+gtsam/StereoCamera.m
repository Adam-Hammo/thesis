%class StereoCamera, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%StereoCamera()
%StereoCamera(Pose3 pose, Cal3_S2Stereo K)
%
%-------Methods-------
%backproject(StereoPoint2 p) : returns Point3
%backproject2(StereoPoint2 p, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns Point3
%baseline() : returns double
%calibration() : returns gtsam::Cal3_S2Stereo
%dim() : returns size_t
%equals(StereoCamera camera, double tol) : returns bool
%localCoordinates(StereoCamera T2) : returns Vector
%pose() : returns gtsam::Pose3
%print(string s) : returns void
%project(Point3 point) : returns gtsam::StereoPoint2
%project2(Point3 point, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns gtsam::StereoPoint2
%retract(Vector d) : returns gtsam::StereoCamera
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns StereoCamera
%
classdef StereoCamera < handle
  properties
    ptr_gtsamStereoCamera = 0
  end
  methods
    function obj = StereoCamera(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1360, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1361);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Cal3_S2Stereo')
        my_ptr = gtsam_wrapper(1362, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.StereoCamera constructor');
      end
      obj.ptr_gtsamStereoCamera = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1363, obj.ptr_gtsamStereoCamera);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = backproject(this, varargin)
      % BACKPROJECT usage: backproject(StereoPoint2 p) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoPoint2')
        varargout{1} = gtsam_wrapper(1364, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.backproject');
    end

    function varargout = backproject2(this, varargin)
      % BACKPROJECT2 usage: backproject2(StereoPoint2 p, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.StereoPoint2') && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1365, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.backproject2');
    end

    function varargout = baseline(this, varargin)
      % BASELINE usage: baseline() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1366, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.baseline');
    end

    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3_S2Stereo
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1367, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.calibration');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1368, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(StereoCamera camera, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.StereoCamera') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1369, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(StereoCamera T2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoCamera')
        varargout{1} = gtsam_wrapper(1370, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1371, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.pose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1372, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1373, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.print');
    end

    function varargout = project(this, varargin)
      % PROJECT usage: project(Point3 point) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1374, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.project');
    end

    function varargout = project2(this, varargin)
      % PROJECT2 usage: project2(Point3 point, Ref<MatrixXd> H1, Ref<MatrixXd> H2) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'Eigen.RefMatrixXd') && isa(varargin{3},'Eigen.RefMatrixXd')
        varargout{1} = gtsam_wrapper(1375, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.project2');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector d) : returns gtsam.StereoCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1376, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1377, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.StereoCamera.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1378, varargin{:});
        return
      end

      error('Arguments do not match any overload of function StereoCamera.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.StereoCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1379, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.StereoCamera.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.StereoCamera.string_deserialize(sobj);
    end
  end
end
