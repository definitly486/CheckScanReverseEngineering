package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.drawable.shapes.RoundRectShape;
import defpackage.kx6;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xj5 {
    public static final Paint a = new Paint();
    public static final LinkedHashMap b = new LinkedHashMap();

    public static NinePatch a(float[] fArr, float f, fu fuVar) {
        NinePatch ninePatch;
        wj5 wj5Var = new wj5(fArr, f);
        NinePatch ninePatch2 = (NinePatch) b.get(wj5Var);
        if (ninePatch2 != null) {
            return ninePatch2;
        }
        float fMax = Math.max(fArr[1] + fArr[2], fArr[5] + fArr[6]) + f;
        float fMax2 = Math.max(fArr[0] + fArr[7], fArr[3] + fArr[4]) + f;
        if (fMax <= 0.0f || fMax2 <= 0.0f) {
            ninePatch = null;
        } else {
            yv3 yv3Var = (yv3) fuVar;
            yv3Var.getClass();
            float fD = kx6.d(f, 1.0f, 25.0f);
            float f2 = f <= 25.0f ? 1.0f : 25.0f / f;
            float f3 = f * 2.0f;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) ((fMax + f3) * f2), (int) ((f3 + fMax2) * f2), Bitmap.Config.ALPHA_8);
            RoundRectShape roundRectShape = new RoundRectShape(fArr, null, null);
            roundRectShape.resize(fMax, fMax2);
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmapCreateBitmap);
            int iSave = canvas.save();
            canvas.translate(fD, fD);
            try {
                int iSave2 = canvas.save();
                canvas.scale(f2, f2, 0.0f, 0.0f);
                try {
                    roundRectShape.draw(canvas, a);
                    canvas.restoreToCount(iSave2);
                    canvas.restoreToCount(iSave);
                    Bitmap bitmapB = yv3Var.b(bitmapCreateBitmap, fD);
                    bitmapCreateBitmap.recycle();
                    if (f2 < 1.0f) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapB, (int) (bitmapB.getWidth() / f2), (int) (bitmapB.getHeight() / f2), true);
                        bitmapB.recycle();
                        bitmapB = bitmapCreateScaledBitmap;
                    }
                    int width = bitmapB.getWidth();
                    int height = bitmapB.getHeight() / 2;
                    int i = width / 2;
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
                    byteBufferOrder.putInt(i - 1);
                    byteBufferOrder.putInt(i + 1);
                    byteBufferOrder.putInt(height - 1);
                    byteBufferOrder.putInt(height + 1);
                    for (int i2 = 0; i2 < 9; i2++) {
                        byteBufferOrder.putInt(1);
                    }
                    ninePatch = new NinePatch(bitmapB, byteBufferOrder.array());
                } catch (Throwable th) {
                    canvas.restoreToCount(iSave2);
                    throw th;
                }
            } catch (Throwable th2) {
                canvas.restoreToCount(iSave);
                throw th2;
            }
        }
        if (ninePatch == null) {
            return null;
        }
        b.put(wj5Var, ninePatch);
        return ninePatch;
    }
}
