function g = dftfilt(f,H)
    F=fft2(f,size(H,1),size(H,2));
    S=H.*F;
    S1=ifft2(S);
    g=real(S1);
end