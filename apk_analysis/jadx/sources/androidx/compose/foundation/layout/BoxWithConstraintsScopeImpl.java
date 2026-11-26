package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class BoxWithConstraintsScopeImpl implements BoxWithConstraintsScope, BoxScope {
    private final /* synthetic */ BoxScopeInstance $$delegate_0;
    private final long constraints;
    private final Density density;

    private BoxWithConstraintsScopeImpl(Density density, long j) {
        this.$$delegate_0 = BoxScopeInstance.INSTANCE;
        this.density = density;
        this.constraints = j;
    }

    private final Density component1() {
        return this.density;
    }

    /* JADX INFO: renamed from: copy-0kLqBqw$default, reason: not valid java name */
    public static /* synthetic */ BoxWithConstraintsScopeImpl m1768copy0kLqBqw$default(BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl, Density density, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            density = boxWithConstraintsScopeImpl.density;
        }
        if ((i & 2) != 0) {
            j = boxWithConstraintsScopeImpl.constraints;
        }
        return boxWithConstraintsScopeImpl.m1770copy0kLqBqw(density, j);
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public Modifier align(Modifier modifier, Alignment alignment) {
        return this.$$delegate_0.align(modifier, alignment);
    }

    /* JADX INFO: renamed from: component2-msEJaDk, reason: not valid java name */
    public final long m1769component2msEJaDk() {
        return this.constraints;
    }

    /* JADX INFO: renamed from: copy-0kLqBqw, reason: not valid java name */
    public final BoxWithConstraintsScopeImpl m1770copy0kLqBqw(Density density, long j) {
        return new BoxWithConstraintsScopeImpl(density, j, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxWithConstraintsScopeImpl)) {
            return false;
        }
        BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
        return aa4.e(this.density, boxWithConstraintsScopeImpl.density) && Constraints.m8988equalsimpl0(this.constraints, boxWithConstraintsScopeImpl.constraints);
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* JADX INFO: renamed from: getConstraints-msEJaDk */
    public long mo1763getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* JADX INFO: renamed from: getMaxHeight-D9Ej5fM */
    public float mo1764getMaxHeightD9Ej5fM() {
        return Constraints.m8990getHasBoundedHeightimpl(mo1763getConstraintsmsEJaDk()) ? this.density.mo1431toDpu2uoSUM(Constraints.m8994getMaxHeightimpl(mo1763getConstraintsmsEJaDk())) : Dp.Companion.m9061getInfinityD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* JADX INFO: renamed from: getMaxWidth-D9Ej5fM */
    public float mo1765getMaxWidthD9Ej5fM() {
        return Constraints.m8991getHasBoundedWidthimpl(mo1763getConstraintsmsEJaDk()) ? this.density.mo1431toDpu2uoSUM(Constraints.m8995getMaxWidthimpl(mo1763getConstraintsmsEJaDk())) : Dp.Companion.m9061getInfinityD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM */
    public float mo1766getMinHeightD9Ej5fM() {
        return this.density.mo1431toDpu2uoSUM(Constraints.m8996getMinHeightimpl(mo1763getConstraintsmsEJaDk()));
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM */
    public float mo1767getMinWidthD9Ej5fM() {
        return this.density.mo1431toDpu2uoSUM(Constraints.m8997getMinWidthimpl(mo1763getConstraintsmsEJaDk()));
    }

    public int hashCode() {
        return Constraints.m8998hashCodeimpl(this.constraints) + (this.density.hashCode() * 31);
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public Modifier matchParentSize(Modifier modifier) {
        return this.$$delegate_0.matchParentSize(modifier);
    }

    public String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.density + ", constraints=" + ((Object) Constraints.m9000toStringimpl(this.constraints)) + ')';
    }

    public /* synthetic */ BoxWithConstraintsScopeImpl(Density density, long j, jh2 jh2Var) {
        this(density, j);
    }
}
