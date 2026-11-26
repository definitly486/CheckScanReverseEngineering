package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntSize;
import defpackage.bm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class SizeTransformImpl implements SizeTransform {
    private final boolean clip;
    private final bm3<IntSize, IntSize, FiniteAnimationSpec<IntSize>> sizeAnimationSpec;

    public /* synthetic */ SizeTransformImpl(boolean z, bm3 bm3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, bm3Var);
    }

    @Override // androidx.compose.animation.SizeTransform
    /* JADX INFO: renamed from: createAnimationSpec-TemP2vQ */
    public FiniteAnimationSpec<IntSize> mo1170createAnimationSpecTemP2vQ(long j, long j2) {
        return this.sizeAnimationSpec.invoke(IntSize.m9205boximpl(j), IntSize.m9205boximpl(j2));
    }

    @Override // androidx.compose.animation.SizeTransform
    public boolean getClip() {
        return this.clip;
    }

    public final bm3<IntSize, IntSize, FiniteAnimationSpec<IntSize>> getSizeAnimationSpec() {
        return this.sizeAnimationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SizeTransformImpl(boolean z, bm3<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> bm3Var) {
        this.clip = z;
        this.sizeAnimationSpec = bm3Var;
    }
}
