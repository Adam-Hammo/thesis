%class BinaryMeasurementsPoint3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BinaryMeasurementsPoint3()
%
%-------Methods-------
%at(size_t idx) : returns gtsam::BinaryMeasurement<Point3>
%push_back(BinaryMeasurement<Point3> measurement) : returns void
%size() : returns size_t
%
classdef BinaryMeasurementsPoint3 < handle
  properties
    ptr_gtsamBinaryMeasurementsPoint3 = 0
  end
  methods
    function obj = BinaryMeasurementsPoint3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3956, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3957);
      else
        error('Arguments do not match any overload of gtsam.BinaryMeasurementsPoint3 constructor');
      end
      obj.ptr_gtsamBinaryMeasurementsPoint3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3958, obj.ptr_gtsamBinaryMeasurementsPoint3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.BinaryMeasurementPoint3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3959, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementsPoint3.at');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(BinaryMeasurement<Point3> measurement) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.BinaryMeasurementPoint3')
        gtsam_wrapper(3960, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementsPoint3.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3961, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementsPoint3.size');
    end

  end

  methods(Static = true)
  end
end
