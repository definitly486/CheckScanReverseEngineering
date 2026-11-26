package androidx.compose.ui.graphics;

import android.graphics.BitmapShader;
import android.graphics.ComposeShader;
import android.graphics.Shader;
import android.os.Build;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import defpackage.qn1;
import defpackage.r2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidShader_androidKt {
    /* JADX INFO: renamed from: ActualCompositeShader-7EN7VTw, reason: not valid java name */
    public static final Shader m6129ActualCompositeShader7EN7VTw(Shader shader, Shader shader2, int i) {
        return Build.VERSION.SDK_INT >= 29 ? r2.a(shader, shader2, AndroidBlendMode_androidKt.m6079toAndroidBlendModes9anfk8(i)) : new ComposeShader(shader, shader2, AndroidBlendMode_androidKt.m6080toPorterDuffModes9anfk8(i));
    }

    /* JADX INFO: renamed from: ActualImageShader-F49vj9s, reason: not valid java name */
    public static final Shader m6130ActualImageShaderF49vj9s(ImageBitmap imageBitmap, int i, int i2) {
        return new BitmapShader(AndroidImageBitmap_androidKt.asAndroidBitmap(imageBitmap), AndroidTileMode_androidKt.m6135toAndroidTileMode0vamqd0(i), AndroidTileMode_androidKt.m6135toAndroidTileMode0vamqd0(i2));
    }

    /* JADX INFO: renamed from: ActualLinearGradientShader-VjE6UOU, reason: not valid java name */
    public static final Shader m6131ActualLinearGradientShaderVjE6UOU(long j, long j2, List<Color> list, List<Float> list2, int i) {
        validateColorStops(list, list2);
        int iCountTransparentColors = countTransparentColors(list);
        return new android.graphics.LinearGradient(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), makeTransparentColors(list, iCountTransparentColors), makeTransparentStops(list2, list, iCountTransparentColors), AndroidTileMode_androidKt.m6135toAndroidTileMode0vamqd0(i));
    }

    /* JADX INFO: renamed from: ActualRadialGradientShader-8uybcMk, reason: not valid java name */
    public static final Shader m6132ActualRadialGradientShader8uybcMk(long j, float f, List<Color> list, List<Float> list2, int i) {
        validateColorStops(list, list2);
        int iCountTransparentColors = countTransparentColors(list);
        return new android.graphics.RadialGradient(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), f, makeTransparentColors(list, iCountTransparentColors), makeTransparentStops(list2, list, iCountTransparentColors), AndroidTileMode_androidKt.m6135toAndroidTileMode0vamqd0(i));
    }

    /* JADX INFO: renamed from: ActualSweepGradientShader-9KIMszo, reason: not valid java name */
    public static final Shader m6133ActualSweepGradientShader9KIMszo(long j, List<Color> list, List<Float> list2) {
        validateColorStops(list, list2);
        int iCountTransparentColors = countTransparentColors(list);
        return new android.graphics.SweepGradient(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), makeTransparentColors(list, iCountTransparentColors), makeTransparentStops(list2, list, iCountTransparentColors));
    }

    public static final int countTransparentColors(List<Color> list) {
        return 0;
    }

    public static final int[] makeTransparentColors(List<Color> list, int i) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = ColorKt.m6286toArgb8_81llA(list.get(i2).m6242unboximpl());
        }
        return iArr;
    }

    public static final float[] makeTransparentStops(List<Float> list, List<Color> list2, int i) {
        if (i == 0) {
            if (list != null) {
                return qn1.r0(list);
            }
            return null;
        }
        float[] fArr = new float[list2.size() + i];
        fArr[0] = list != null ? list.get(0).floatValue() : 0.0f;
        int size = list2.size() - 1;
        int i2 = 1;
        for (int i3 = 1; i3 < size; i3++) {
            long jM6242unboximpl = list2.get(i3).m6242unboximpl();
            float fFloatValue = list != null ? list.get(i3).floatValue() : i3 / (list2.size() - 1);
            int i4 = i2 + 1;
            fArr[i2] = fFloatValue;
            if (Color.m6234getAlphaimpl(jM6242unboximpl) == 0.0f) {
                i2 += 2;
                fArr[i4] = fFloatValue;
            } else {
                i2 = i4;
            }
        }
        fArr[i2] = list != null ? list.get(list2.size() - 1).floatValue() : 1.0f;
        return fArr;
    }

    private static final void validateColorStops(List<Color> list, List<Float> list2) {
        if (list2 == null) {
            if (list.size() >= 2) {
                return;
            }
            fg.c("colors must have length of at least 2 if colorStops is omitted.");
        } else {
            if (list.size() == list2.size()) {
                return;
            }
            fg.c("colors and colorStops arguments must have equal length.");
        }
    }
}
