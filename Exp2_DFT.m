x = [1 1 1 0 0 0 0 0];
N = length(x);
X = zeros(N,1);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp((-1j*pi*2*n*k)/N);
    end
end

disp("Displaying Final Transform : ")  
disp("|X(k)| : "); disp(X);         % to check |X(k)|
disp("Phase : "); disp(angle(X));  % to check phase

t = 0:N-1;
subplot(3,1,1);
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Input sequence');
345
subplot(3,1,2);
stem(t,X);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response');

subplot(3,1,3);
stem(t,angle(X));
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response');