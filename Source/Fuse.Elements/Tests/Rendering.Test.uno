using Uno;
using Uno.Testing;
using Fuse;
using FuseTest;

namespace Fuse.Test
{
	public class RenderingTest : TestBase
	{
		[Test]
		public void NestedClipToBounds()
		{
			var p = new UX.Rendering.NestedClipToBounds();
			var root = TestRootPanel.CreateWithChild(p, int2(32, 32));
			using (var fb = root.CaptureDraw())
			{
				fb.AssertSolidRectangle(new Recti(0, 0, 32, 16), float4(0, 0, 0, 0));

				fb.AssertSolidRectangle(new Recti(0, 16, 16, 24), float4(0, 0, 0, 0));
				fb.AssertSolidRectangle(new Recti(16, 16, 24, 24), float4(1, 0, 0, 1));
				fb.AssertSolidRectangle(new Recti(24, 16, 32, 24), float4(0, 0, 0, 0));

				fb.AssertSolidRectangle(new Recti(0, 24, 32, 32), float4(0, 0, 0, 0));
			}
		}
	}
}
