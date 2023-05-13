%class BinaryMeasurementsRot3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BinaryMeasurementsRot3()
%
%-------Methods-------
%at(size_t idx) : returns gtsam::BinaryMeasurement<gtsam::Rot3>
%push_back(BinaryMeasurement<Rot3> measurement) : returns void
%size() : returns size_t
%
classdef BinaryMeasurementsRot3 < handle
  properties
    ptr_gtsamBinaryMeasurementsRot3 = 0
  end
  methods
    function obj = BinaryMeasurementsRot3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3962, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3963);
      else
        error('Arguments do not match any overload of gtsam.BinaryMeasurementsRot3 constructor');
      end
      obj.ptr_gtsamBinaryMeasurementsRot3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3964, obj.ptr_gtsamBinaryMeasurementsRot3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.BinaryMeasurementRot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3965, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementsRot3.at');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(BinaryMeasurement<Rot3> measurement) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.BinaryMeasurementRot3')
        gtsam_wrapper(3966, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementsRot3.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3967, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BinaryMeasurementsRot3.size');
    end

  end

  methods(Static = true)
  end
end
