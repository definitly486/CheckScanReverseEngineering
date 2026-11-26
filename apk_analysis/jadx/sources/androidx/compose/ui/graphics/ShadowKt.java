package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;

/* JADX INFO: loaded from: classes2.dex */
public final class ShadowKt {
    public static final Shadow lerp(Shadow shadow, Shadow shadow2, float f) {
        return new Shadow(ColorKt.m6283lerpjxsXWHM(shadow.m6576getColor0d7_KjU(), shadow2.m6576getColor0d7_KjU(), f), OffsetKt.m6010lerpWko1d7g(shadow.m6577getOffsetF1C5BW0(), shadow2.m6577getOffsetF1C5BW0(), f), MathHelpersKt.lerp(shadow.getBlurRadius(), shadow2.getBlurRadius(), f), null);
    }
}
