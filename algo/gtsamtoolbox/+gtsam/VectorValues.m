%class VectorValues, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%VectorValues()
%VectorValues(VectorValues other)
%VectorValues(VectorValues first, VectorValues second)
%
%-------Methods-------
%add(VectorValues c) : returns gtsam::VectorValues
%addInPlace(VectorValues c) : returns void
%at(size_t j) : returns Vector
%dim(size_t j) : returns size_t
%dot(VectorValues V) : returns double
%equals(VectorValues expected, double tol) : returns bool
%exists(size_t j) : returns bool
%hasSameStructure(VectorValues other) : returns bool
%html() : returns string
%insert(size_t j, Vector value) : returns void
%norm() : returns double
%print(string s, KeyFormatter keyFormatter) : returns void
%scale(double a) : returns gtsam::VectorValues
%scaleInPlace(double a) : returns void
%setZero() : returns void
%size() : returns size_t
%squaredNorm() : returns double
%subtract(VectorValues c) : returns gtsam::VectorValues
%update(VectorValues values) : returns void
%vector() : returns Vector
%
%-------Static Methods-------
%Zero(VectorValues model) : returns gtsam::VectorValues
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns VectorValues
%
classdef VectorValues < handle
  properties
    ptr_gtsamVectorValues = 0
  end
  methods
    function obj = VectorValues(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1922, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1923);
      elseif nargin == 1 && isa(varargin{1},'gtsam.VectorValues')
        my_ptr = gtsam_wrapper(1924, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'gtsam.VectorValues')
        my_ptr = gtsam_wrapper(1925, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.VectorValues constructor');
      end
      obj.ptr_gtsamVectorValues = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1926, obj.ptr_gtsamVectorValues);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(VectorValues c) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1927, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.add');
    end

    function varargout = addInPlace(this, varargin)
      % ADDINPLACE usage: addInPlace(VectorValues c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        gtsam_wrapper(1928, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.addInPlace');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t j) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1929, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.at');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim(size_t j) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1930, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.dim');
    end

    function varargout = dot(this, varargin)
      % DOT usage: dot(VectorValues V) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1931, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.dot');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(VectorValues expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1932, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.equals');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t j) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1933, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.exists');
    end

    function varargout = hasSameStructure(this, varargin)
      % HASSAMESTRUCTURE usage: hasSameStructure(VectorValues other) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1934, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.hasSameStructure');
    end

    function varargout = html(this, varargin)
      % HTML usage: html() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1935, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.html');
    end

    function varargout = insert(this, varargin)
      % INSERT usage: insert(size_t j, Vector value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(1936, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.insert');
    end

    function varargout = norm(this, varargin)
      % NORM usage: norm() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1937, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.norm');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1938, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1939, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1940, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.print');
    end

    function varargout = scale(this, varargin)
      % SCALE usage: scale(double a) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1941, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.scale');
    end

    function varargout = scaleInPlace(this, varargin)
      % SCALEINPLACE usage: scaleInPlace(double a) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1942, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.scaleInPlace');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1943, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.VectorValues.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = setZero(this, varargin)
      % SETZERO usage: setZero() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1944, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.setZero');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1945, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.size');
    end

    function varargout = squaredNorm(this, varargin)
      % SQUAREDNORM usage: squaredNorm() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1946, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.squaredNorm');
    end

    function varargout = subtract(this, varargin)
      % SUBTRACT usage: subtract(VectorValues c) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1947, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.subtract');
    end

    function varargout = update(this, varargin)
      % UPDATE usage: update(VectorValues values) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        gtsam_wrapper(1948, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.update');
    end

    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1949, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VectorValues.vector');
    end

  end

  methods(Static = true)
    function varargout = Zero(varargin)
      % ZERO usage: Zero(VectorValues model) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1950, varargin{:});
        return
      end

      error('Arguments do not match any overload of function VectorValues.Zero');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1951, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.VectorValues.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.VectorValues.string_deserialize(sobj);
    end
  end
end
