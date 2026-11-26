package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
public final class ChangeSize {
    public static final int $stable = 0;
    private final Alignment alignment;
    private final FiniteAnimationSpec<IntSize> animationSpec;
    private final boolean clip;
    private final nl3<IntSize, IntSize> size;

    /* JADX INFO: renamed from: androidx.compose.animation.ChangeSize$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<IntSize, IntSize> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
            return IntSize.m9205boximpl(m1087invokemzRDjE0(intSize.m9217unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-mzRDjE0, reason: not valid java name */
        public final long m1087invokemzRDjE0(long j) {
            return IntSize.m9208constructorimpl(0L);
        }
    }

    public /* synthetic */ ChangeSize(Alignment alignment, nl3 nl3Var, FiniteAnimationSpec finiteAnimationSpec, boolean z, int i, jh2 jh2Var) {
        this(alignment, (i & 2) != 0 ? AnonymousClass1.INSTANCE : nl3Var, finiteAnimationSpec, (i & 8) != 0 ? true : z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChangeSize copy$default(ChangeSize changeSize, Alignment alignment, nl3 nl3Var, FiniteAnimationSpec finiteAnimationSpec, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            alignment = changeSize.alignment;
        }
        if ((i & 2) != 0) {
            nl3Var = changeSize.size;
        }
        if ((i & 4) != 0) {
            finiteAnimationSpec = changeSize.animationSpec;
        }
        if ((i & 8) != 0) {
            z = changeSize.clip;
        }
        return changeSize.copy(alignment, nl3Var, finiteAnimationSpec, z);
    }

    public final Alignment component1() {
        return this.alignment;
    }

    public final nl3<IntSize, IntSize> component2() {
        return this.size;
    }

    public final FiniteAnimationSpec<IntSize> component3() {
        return this.animationSpec;
    }

    public final boolean component4() {
        return this.clip;
    }

    public final ChangeSize copy(Alignment alignment, nl3<? super IntSize, IntSize> nl3Var, FiniteAnimationSpec<IntSize> finiteAnimationSpec, boolean z) {
        return new ChangeSize(alignment, nl3Var, finiteAnimationSpec, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChangeSize)) {
            return false;
        }
        ChangeSize changeSize = (ChangeSize) obj;
        return aa4.e(this.alignment, changeSize.alignment) && aa4.e(this.size, changeSize.size) && aa4.e(this.animationSpec, changeSize.animationSpec) && this.clip == changeSize.clip;
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final FiniteAnimationSpec<IntSize> getAnimationSpec() {
        return this.animationSpec;
    }

    public final boolean getClip() {
        return this.clip;
    }

    public final nl3<IntSize, IntSize> getSize() {
        return this.size;
    }

    public int hashCode() {
        return Boolean.hashCode(this.clip) + ((this.animationSpec.hashCode() + ((this.size.hashCode() + (this.alignment.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChangeSize(alignment=");
        sb.append(this.alignment);
        sb.append(", size=");
        sb.append(this.size);
        sb.append(", animationSpec=");
        sb.append(this.animationSpec);
        sb.append(", clip=");
        return sg.d(sb, this.clip, ')');
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChangeSize(Alignment alignment, nl3<? super IntSize, IntSize> nl3Var, FiniteAnimationSpec<IntSize> finiteAnimationSpec, boolean z) {
        this.alignment = alignment;
        this.size = nl3Var;
        this.animationSpec = finiteAnimationSpec;
        this.clip = z;
    }
}
