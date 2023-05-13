%class Similarity2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Similarity2()
%Similarity2(double s)
%Similarity2(Rot2 R, Point2 t, double s)
%Similarity2(Matrix R, Vector t, double s)
%Similarity2(Matrix T)
%
%-------Methods-------
%equals(Similarity2 sim, double tol) : returns bool
%matrix() : returns Matrix
%rotation() : returns gtsam::Rot2
%scale() : returns double
%transformFrom(Point2 p) : returns Point2
%transformFrom(Pose2 T) : returns gtsam::Pose2
%translation() : returns Point2
%
%-------Static Methods-------
%Align(Point2Pairs abPointPairs) : returns gtsam::Similarity2
%Align(Pose2Pairs abPosePairs) : returns gtsam::Similarity2
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Similarity2
%
classdef Similarity2 < handle
  properties
    ptr_gtsamSimilarity2 = 0
  end
  methods
    function obj = Similarity2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1328, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1329);
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(1330, varargin{1});
      elseif nargin == 3 && isa(varargin{1},'gtsam.Rot2') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1 && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(1331, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(1332, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(1333, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Similarity2 constructor');
      end
      obj.ptr_gtsamSimilarity2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1334, obj.ptr_gtsamSimilarity2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Similarity2 sim, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Similarity2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1335, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity2.equals');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1336, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity2.matrix');
    end

    function varargout = rotation(this, varargin)
      % ROTATION usage: rotation() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1337, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity2.rotation');
    end

    function varargout = scale(this, varargin)
      % SCALE usage: scale() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1338, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity2.scale');
    end

    function varargout = transformFrom(this, varargin)
      % TRANSFORMFROM usage: transformFrom(Point2 p) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1339, this, varargin{:});
        return
      end
      % TRANSFORMFROM usage: transformFrom(Pose2 T) : returns gtsam.Pose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2')
        varargout{1} = gtsam_wrapper(1340, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity2.transformFrom');
    end

    function varargout = translation(this, varargin)
      % TRANSLATION usage: translation() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1341, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Similarity2.translation');
    end

  end

  methods(Static = true)
    function varargout = Align(varargin)
      % ALIGN usage: Align(Point2Pairs abPointPairs) : returns gtsam.Similarity2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Point2Pairs')
        varargout{1} = gtsam_wrapper(1342, varargin{:});
        return
      end

      % ALIGN usage: Align(Pose2Pairs abPosePairs) : returns gtsam.Similarity2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose2Pairs')
        varargout{1} = gtsam_wrapper(1343, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Similarity2.Align');
    end

  end
end
