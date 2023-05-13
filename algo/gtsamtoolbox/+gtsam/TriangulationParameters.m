%class TriangulationParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%TriangulationParameters(double rankTolerance, bool enableEPI, double landmarkDistanceThreshold, double dynamicOutlierRejectionThreshold, SharedNoiseModel noiseModel)
%
classdef TriangulationParameters < handle
  properties
    ptr_gtsamTriangulationParameters = 0
  end
  methods
    function obj = TriangulationParameters(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1393, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'double') && isa(varargin{2},'logical') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'gtsam.SharedNoiseModel')
        my_ptr = gtsam_wrapper(1394, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 4 && isa(varargin{1},'double') && isa(varargin{2},'logical') && isa(varargin{3},'double') && isa(varargin{4},'double')
        my_ptr = gtsam_wrapper(1395, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 3 && isa(varargin{1},'double') && isa(varargin{2},'logical') && isa(varargin{3},'double')
        my_ptr = gtsam_wrapper(1396, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'double') && isa(varargin{2},'logical')
        my_ptr = gtsam_wrapper(1397, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(1398, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1399);
      else
        error('Arguments do not match any overload of gtsam.TriangulationParameters constructor');
      end
      obj.ptr_gtsamTriangulationParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1400, obj.ptr_gtsamTriangulationParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
