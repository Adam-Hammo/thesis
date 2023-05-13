%class BinaryMeasurementPoint3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BinaryMeasurementPoint3(size_t key1, size_t key2, Point3 measured, Base model)
%
%-------Methods-------
%key1() : returns size_t
%key2() : returns size_t
%measured() : returns Point3
%noiseModel() : returns gtsam::noiseModel::Base
%
classdef BinaryMeasurementPoint3 < handle
  properties
    ptr_gtsamBinaryMeasurementPoint3 = 0
  end
  methods
    function obj = BinaryMeasurementPoint3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(4103, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.noiseModel.Base')
        my_ptr = gtsam_wrapper(4104, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.BinaryMeasurementPoint3 constructor');
      end
      obj.ptr_gtsamBinaryMeasurementPoint3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(4105, obj.ptr_gtsamBinaryMeasurementPoint3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = key1(this, varargin)
      % KEY1 usage: key1() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4106, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementPoint3.key1');
    end

    function varargout = key2(this, varargin)
      % KEY2 usage: key2() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4107, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementPoint3.key2');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4108, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementPoint3.measured');
    end

    function varargout = noiseModel(this, varargin)
      % NOISEMODEL usage: noiseModel() : returns gtsam.noiseModel.Base
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4109, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementPoint3.noiseModel');
    end

  end

  methods(Static = true)
  end
end