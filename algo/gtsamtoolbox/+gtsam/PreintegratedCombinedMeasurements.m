%class PreintegratedCombinedMeasurements, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PreintegratedCombinedMeasurements(PreintegrationCombinedParams params)
%PreintegratedCombinedMeasurements(PreintegrationCombinedParams params, ConstantBias bias)
%
%-------Methods-------
%biasHat() : returns gtsam::imuBias::ConstantBias
%biasHatVector() : returns Vector
%deltaPij() : returns Vector
%deltaRij() : returns gtsam::Rot3
%deltaTij() : returns double
%deltaVij() : returns Vector
%equals(PreintegratedCombinedMeasurements expected, double tol) : returns bool
%integrateMeasurement(Vector measuredAcc, Vector measuredOmega, double deltaT) : returns void
%predict(NavState state_i, ConstantBias bias) : returns gtsam::NavState
%preintMeasCov() : returns Matrix
%print(string s) : returns void
%resetIntegration() : returns void
%resetIntegrationAndSetBias(ConstantBias biasHat) : returns void
%
classdef PreintegratedCombinedMeasurements < handle
  properties
    ptr_gtsamPreintegratedCombinedMeasurements = 0
  end
  methods
    function obj = PreintegratedCombinedMeasurements(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(4221, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.PreintegrationCombinedParams')
        my_ptr = gtsam_wrapper(4222, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.PreintegrationCombinedParams') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        my_ptr = gtsam_wrapper(4223, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.PreintegratedCombinedMeasurements constructor');
      end
      obj.ptr_gtsamPreintegratedCombinedMeasurements = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(4224, obj.ptr_gtsamPreintegratedCombinedMeasurements);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = biasHat(this, varargin)
      % BIASHAT usage: biasHat() : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4225, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.biasHat');
    end

    function varargout = biasHatVector(this, varargin)
      % BIASHATVECTOR usage: biasHatVector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4226, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.biasHatVector');
    end

    function varargout = deltaPij(this, varargin)
      % DELTAPIJ usage: deltaPij() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4227, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.deltaPij');
    end

    function varargout = deltaRij(this, varargin)
      % DELTARIJ usage: deltaRij() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4228, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.deltaRij');
    end

    function varargout = deltaTij(this, varargin)
      % DELTATIJ usage: deltaTij() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4229, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.deltaTij');
    end

    function varargout = deltaVij(this, varargin)
      % DELTAVIJ usage: deltaVij() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4230, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.deltaVij');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PreintegratedCombinedMeasurements expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PreintegratedCombinedMeasurements') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(4231, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.equals');
    end

    function varargout = integrateMeasurement(this, varargin)
      % INTEGRATEMEASUREMENT usage: integrateMeasurement(Vector measuredAcc, Vector measuredOmega, double deltaT) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        gtsam_wrapper(4232, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.integrateMeasurement');
    end

    function varargout = predict(this, varargin)
      % PREDICT usage: predict(NavState state_i, ConstantBias bias) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NavState') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        varargout{1} = gtsam_wrapper(4233, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.predict');
    end

    function varargout = preintMeasCov(this, varargin)
      % PREINTMEASCOV usage: preintMeasCov() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(4234, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.preintMeasCov');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(4235, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(4236, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.print');
    end

    function varargout = resetIntegration(this, varargin)
      % RESETINTEGRATION usage: resetIntegration() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(4237, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.resetIntegration');
    end

    function varargout = resetIntegrationAndSetBias(this, varargin)
      % RESETINTEGRATIONANDSETBIAS usage: resetIntegrationAndSetBias(ConstantBias biasHat) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(4238, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedCombinedMeasurements.resetIntegrationAndSetBias');
    end

  end

  methods(Static = true)
  end
end
