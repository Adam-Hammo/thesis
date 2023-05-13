%class LandmarkBodyMotionTernaryFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%LandmarkBodyMotionTernaryFactor(size_t previousPointKey, size_t currentPointKey, size_t motionKey, Point3 m, Base model)
%
classdef LandmarkBodyMotionTernaryFactor < gtsam.NoiseModelFactor
  properties
    ptr_gtsamLandmarkBodyMotionTernaryFactor = 0
  end
  methods
    function obj = LandmarkBodyMotionTernaryFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3603, varargin{2});
        end
        base_ptr = gtsam_wrapper(3602, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && size(varargin{4},1)==3 && size(varargin{4},2)==1 && isa(varargin{5},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3604, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.LandmarkBodyMotionTernaryFactor constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamLandmarkBodyMotionTernaryFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3605, obj.ptr_gtsamLandmarkBodyMotionTernaryFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
