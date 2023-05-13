%class Point2Pairs, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Point2Pairs()
%
%-------Methods-------
%at(size_t n) : returns gtsam::Point2Pair
%empty() : returns bool
%push_back(Point2Pair point_pair) : returns void
%size() : returns size_t
%
classdef Point2Pairs < handle
  properties
    ptr_gtsamPoint2Pairs = 0
  end
  methods
    function obj = Point2Pairs(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(791, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(792);
      else
        error('Arguments do not match any overload of gtsam.Point2Pairs constructor');
      end
      obj.ptr_gtsamPoint2Pairs = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(793, obj.ptr_gtsamPoint2Pairs);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t n) : returns gtsam.Point2Pair
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(794, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Pairs.at');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(795, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Pairs.empty');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(Point2Pair point_pair) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Point2Pair')
        gtsam_wrapper(796, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Pairs.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(797, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Pairs.size');
    end

  end

  methods(Static = true)
  end
end
