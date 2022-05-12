classdef BasisFuncs

    methods(Static)
        function mVal = radialBasisI(qPrime, qPrime0, x, width)
        %             https://en.wikipedia.org/wiki/Error_function
        mVal = -sqrt(width*pi)*.5*(erfc(sqrt(1/width)*(qPrime - x) ) - erfc(sqrt(1/width)*(qPrime0 - x)));
        end
        
        function mVal = radialBasis(qPrime, x, width)
        mVal = exp(-sum(1./width.*(qPrime - x).^2, 3));
        end
        
        function mVal = radialBasisD(qPrime, x, width)
        mVal = -(2/width*(qPrime - x)).*exp(-1/width*(qPrime - x).^2);
        end
        
        function mVal = radialBasisDD(qPrime, x, width)
        mVal = (4/width^2*(qPrime - x).^2 - 2/width).*exp(-1/width*(qPrime - x).^2);
        end
    end
end