%class GeneralSFMFactorPoseCal3_S2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GeneralSFMFactorPoseCal3_S2(Point2 measured, Base model, size_t cameraKey, size_t landmarkKey)
%
%-------Methods-------
%measured() : returns Point2
%
classdef GeneralSFMFactorPoseCal3_S2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamGeneralSFMFactorPoseCal3_S2 = 0
  end
  methods
    function obj = GeneralSFMFactorPoseCal3_S2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3827, varargin{2});
        end
        base_ptr = gtsam_wrapper(3826, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3828, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.GeneralSFMFactorPoseCal3_S2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGeneralSFMFactorPoseCal3_S2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3829, obj.ptr_gtsamGeneralSFMFactorPoseCal3_S2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3830, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GeneralSFMFactorPoseCal3_S2.measured');
    end

  end

  methods(Static = true)
  end
end
