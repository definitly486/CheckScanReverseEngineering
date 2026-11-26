package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
public final class bo4 extends Drawable {
    public int a;
    public int b;
    public int c;
    public int d;
    public NinePatch e;
    public final Paint f = new Paint(3);

    public final void a(Bitmap bitmap) {
        NinePatch ninePatch;
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i = this.a;
            int i2 = this.b;
            int i3 = this.c;
            int i4 = this.d;
            int i5 = height - i;
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
            byteBufferOrder.put((byte) 1);
            byteBufferOrder.put((byte) 2);
            byteBufferOrder.put((byte) 2);
            byteBufferOrder.put((byte) 9);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(i2);
            byteBufferOrder.putInt(width - i3);
            byteBufferOrder.putInt(i4);
            byteBufferOrder.putInt(i5);
            for (int i6 = 0; i6 < 9; i6++) {
                byteBufferOrder.putInt(1);
            }
            ninePatch = new NinePatch(bitmap, byteBufferOrder.array());
        } else {
            ninePatch = null;
        }
        this.e = ninePatch;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        NinePatch ninePatch = this.e;
        if (ninePatch != null) {
            ninePatch.draw(canvas, new Rect(0, 0, getBounds().width(), getBounds().height()), this.f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
