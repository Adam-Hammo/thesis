%class DiscreteKeys, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DiscreteKeys()
%
%-------Methods-------
%at(size_t n) : returns gtsam::DiscreteKey
%empty() : returns bool
%push_back(DiscreteKey point_pair) : returns void
%size() : returns size_t
%
classdef DiscreteKeys < handle
  properties
    ptr_gtsamDiscreteKeys = 0
  end
  methods
    function obj = DiscreteKeys(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(565, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(566);
      else
        error('Arguments do not match any overload of gtsam.DiscreteKeys constructor');
      end
      obj.ptr_gtsamDiscreteKeys = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(567, obj.ptr_gtsamDiscreteKeys);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t n) : returns gtsam.DiscreteKey
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(568, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteKeys.at');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(569, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteKeys.empty');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(DiscreteKey point_pair) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DiscreteKey')
        gtsam_wrapper(570, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteKeys.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(571, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DiscreteKeys.size');
    end

  end

  methods(Static = true)
  end
end
