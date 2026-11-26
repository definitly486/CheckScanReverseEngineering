package yads;

import android.graphics.LinearGradient;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes6.dex */
public abstract class kt3 {
    public static LinearGradient a(float f, int[] iArr, float[] fArr, int i, int i2) {
        float f2 = i;
        float f3 = f2 / 2.0f;
        float f4 = i2;
        float f5 = f4 / 2.0f;
        double d = (float) ((((double) f) * 3.141592653589793d) / 180.0d);
        float fAbs = Math.abs(f4 * ((float) Math.sin(d))) + Math.abs(f2 * ((float) Math.cos(d)));
        float fCos = (((float) Math.cos(d)) * fAbs) / 2.0f;
        if (Math.abs(0.0f - fCos) <= 1.0E-4f) {
            fCos = 0.0f;
        }
        float fSin = (((float) Math.sin(d)) * fAbs) / 2.0f;
        float f6 = Math.abs(0.0f - fSin) > 1.0E-4f ? fSin : 0.0f;
        return new LinearGradient(f3 - fCos, f5 + f6, f3 + fCos, f5 - f6, iArr, fArr, Shader.TileMode.CLAMP);
    }
}
