package androidx.compose.ui.text.style;

import androidx.compose.ui.util.MathHelpersKt;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class BaselineShiftKt {
    /* JADX INFO: renamed from: isSpecified-4Dl_Bck, reason: not valid java name */
    public static final boolean m8797isSpecified4Dl_Bck(float f) {
        return !Float.isNaN(f);
    }

    /* JADX INFO: renamed from: lerp-jWV1Mfo, reason: not valid java name */
    public static final float m8798lerpjWV1Mfo(float f, float f2, float f3) {
        return BaselineShift.m8783constructorimpl(MathHelpersKt.lerp(f, f2, f3));
    }

    /* JADX INFO: renamed from: takeOrElse-JpAxnlU, reason: not valid java name */
    public static final float m8799takeOrElseJpAxnlU(float f, ll3<BaselineShift> ll3Var) {
        return Float.isNaN(f) ? ll3Var.invoke().m8788unboximpl() : f;
    }
}
