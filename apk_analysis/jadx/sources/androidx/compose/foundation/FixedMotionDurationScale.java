package androidx.compose.foundation;

import androidx.compose.ui.MotionDurationScale;
import defpackage.bm3;
import defpackage.o22;

/* JADX INFO: loaded from: classes.dex */
final class FixedMotionDurationScale implements MotionDurationScale {
    public static final FixedMotionDurationScale INSTANCE = new FixedMotionDurationScale();

    private FixedMotionDurationScale() {
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) MotionDurationScale.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) MotionDurationScale.DefaultImpls.get(this, bVar);
    }

    @Override // androidx.compose.ui.MotionDurationScale
    public float getScaleFactor() {
        return 1.0f;
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return MotionDurationScale.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return MotionDurationScale.DefaultImpls.plus(this, o22Var);
    }
}
