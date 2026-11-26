package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.me0;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class BrushKt {
    public static final ShaderBrush ShaderBrush(final Shader shader) {
        return new ShaderBrush() { // from class: androidx.compose.ui.graphics.BrushKt.ShaderBrush.1
            @Override // androidx.compose.ui.graphics.ShaderBrush
            /* JADX INFO: renamed from: createShader-uvyYCjk, reason: not valid java name */
            public Shader mo6201createShaderuvyYCjk(long j) {
                return shader;
            }
        };
    }

    public static final List<Color> lerpColorList(List<Color> list, List<Color> list2, float f) {
        int iMax = Math.max(list.size(), list2.size());
        ArrayList arrayList = new ArrayList(iMax);
        for (int i = 0; i < iMax; i++) {
            arrayList.add(Color.m6222boximpl(ColorKt.m6283lerpjxsXWHM(list.get(Math.min(i, list.size() - 1)).m6242unboximpl(), list2.get(Math.min(i, list2.size() - 1)).m6242unboximpl(), f)));
        }
        return arrayList;
    }

    public static final List<Float> lerpFloatList(List<Float> list, List<Float> list2, float f) {
        int iMax = Math.max(list.size(), list2.size());
        ArrayList arrayList = new ArrayList(iMax);
        for (int i = 0; i < iMax; i++) {
            arrayList.add(Float.valueOf(MathHelpersKt.lerp(list.get(Math.min(i, list.size() - 1)).floatValue(), list2.get(Math.min(i, list2.size() - 1)).floatValue(), f)));
        }
        return arrayList;
    }

    public static final List<Float> lerpNullableFloatList(List<Float> list, List<Float> list2, float f) {
        if (list2 == null || list == null) {
            return null;
        }
        return lerpFloatList(list, list2, f);
    }

    /* JADX INFO: renamed from: lerpSafe-Wko1d7g, reason: not valid java name */
    public static final long m6200lerpSafeWko1d7g(long j, long j2, float f) {
        if (((((j & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase) ^ androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase) - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0 && (((androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase ^ (j2 & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase)) - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0) {
            return OffsetKt.m6010lerpWko1d7g(j, j2, f);
        }
        return f < 0.5f ? j : j2;
    }

    public static final ShaderBrush toShaderBrush(Brush brush) {
        if (brush instanceof ShaderBrush) {
            return (ShaderBrush) brush;
        }
        if (!(brush instanceof SolidColor)) {
            me0.e();
            return null;
        }
        SolidColor solidColor = (SolidColor) brush;
        Brush brushM6187verticalGradient8A3gB4$default = Brush.Companion.m6187verticalGradient8A3gB4$default(Brush.Companion, u96.i(Color.m6222boximpl(solidColor.m6588getValue0d7_KjU()), Color.m6222boximpl(solidColor.m6588getValue0d7_KjU())), 0.0f, 0.0f, 0, 14, (Object) null);
        brushM6187verticalGradient8A3gB4$default.getClass();
        return (ShaderBrush) brushM6187verticalGradient8A3gB4$default;
    }
}
