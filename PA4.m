nx = 10; ny = 10;
bc_left = 1;
bc_right = 0;
iteration = 100;
V = zeros(nx,ny);
E = zeros(nx,ny);
for k = 1:iteration
%     for m = 1:nx
%         for n = 1:ny
%             if m == 1 
%                 V(m,n) = 1;
%                 E(m,n) = -gradient(V(m,n));
%             elseif m == nx
%                 V(m,n) = 0;
%                 E(m,n) = -gradient(V(m,n));
%             elseif n == 1
%                 V(m,n) = (V(m+1,n)+V(m-1,n)+V(m,n+1))/3;
%                 E(m,n) = -gradient(V(m,n));
%             elseif n == ny
%                 V(m,n) = (V(m+1,n)+V(m-1,n)+V(m,n-1))/3;
%                 E(m,n) = -gradient(V(m,n));
%             else
%                 V(m,n) =(V(m+1,n)+V(m-1,n)+V(m,n+1)+V(m,n-1))/4;
%                 E(m,n) = -gradient(V(m,n));
%             end
%         end
%     end
    V(1,:)= ones(1,ny);
    figure(1)
    V=imboxfilt(V,3);
    surf(V)
    figure(2)
    surf(-gradient(V));
    
    pause(0.01)
end
