package defpackage;

import androidx.compose.animation.core.Easing;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fp5 implements Easing {
    @Override // androidx.compose.animation.core.Easing
    public final float transform(float f) {
        float f2 = 1.0f - f;
        return 1.0f - (f2 * f2);
    }
}
