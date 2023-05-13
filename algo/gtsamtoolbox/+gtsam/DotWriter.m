%class DotWriter, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DotWriter(double figureWidthInches, double figureHeightInches, bool plotFactorPoints, bool connectKeysToFactor, bool binaryEdges)
%
classdef DotWriter < handle
  properties
    ptr_gtsamDotWriter = 0
  end
  methods
    function obj = DotWriter(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(525, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'logical') && isa(varargin{4},'logical') && isa(varargin{5},'logical')
        my_ptr = gtsam_wrapper(526, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 4 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'logical') && isa(varargin{4},'logical')
        my_ptr = gtsam_wrapper(527, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'logical')
        my_ptr = gtsam_wrapper(528, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'double') && isa(varargin{2},'double')
        my_ptr = gtsam_wrapper(529, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(530, varargin{1});
      elseif nargin == 0
        my_ptr = gtsam_wrapper(531);
      else
        error('Arguments do not match any overload of gtsam.DotWriter constructor');
      end
      obj.ptr_gtsamDotWriter = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(532, obj.ptr_gtsamDotWriter);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
