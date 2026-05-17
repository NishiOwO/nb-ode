# ODE for TurboWarp/NitroBolt

Run `ode.js` or `ode.offline.js` in unsandboxed mode and you should be able to use ODE

It'd be more useful if you combine it with like [three.js extension](https://github.com/Brackets-Coder/ThreeJS-Extension/tree/Nitrobolt-arrays/civero), unless you really just want to simulate physics.

https://github.com/user-attachments/assets/e744a8f0-e60e-4076-9d10-90763a52c94e

## Things you might find useful

Maybe these would be useful if you're using ODE for first time

### Difference between Body and Geometry

Body is for rigid body physics (like movemenet, gravity, and etc.), and geometry is for collision.

Which means if you want an object that never moves but has collision, you'd only make geometry.
