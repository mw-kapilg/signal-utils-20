classdef tNoiseReduction < matlab.unittest.TestCase
    % Checks that movingAverage reduces noise.

    methods (Test)
        function reducesWhiteNoise(testCase)
            noise = randn(50, 1);
            y = movingAverage(noise, 4);
            % Averaging 4 samples should halve the standard deviation.
            testCase.verifyLessThan(std(y(4:end)), 0.5);
        end
    end
end
