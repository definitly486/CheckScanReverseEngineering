package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
final class WrappedOverscrollEffect implements OverscrollEffect {
    private final boolean attachNode;
    private final boolean eventHandlingEnabled;
    private final OverscrollEffect innerOverscrollEffect;
    private final DelegatableNode node;

    public WrappedOverscrollEffect(boolean z, boolean z2, OverscrollEffect overscrollEffect) {
        this.attachNode = z;
        this.eventHandlingEnabled = z2;
        this.innerOverscrollEffect = overscrollEffect;
        this.node = z ? overscrollEffect.getNode() : new Modifier.Node() { // from class: androidx.compose.foundation.WrappedOverscrollEffect$node$1
        };
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToFling-BMRW4eQ */
    public Object mo1267applyToFlingBMRW4eQ(long j, bm3<? super Velocity, ? super e02<? super Velocity>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        if (this.eventHandlingEnabled) {
            Object objMo1267applyToFlingBMRW4eQ = this.innerOverscrollEffect.mo1267applyToFlingBMRW4eQ(j, bm3Var, e02Var);
            return objMo1267applyToFlingBMRW4eQ == a32.COROUTINE_SUSPENDED ? objMo1267applyToFlingBMRW4eQ : j59.a;
        }
        Object objInvoke = bm3Var.invoke(Velocity.m9271boximpl(j), e02Var);
        return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToScroll-Rhakbz0 */
    public long mo1268applyToScrollRhakbz0(long j, int i, nl3<? super Offset, Offset> nl3Var) {
        return this.eventHandlingEnabled ? this.innerOverscrollEffect.mo1268applyToScrollRhakbz0(j, i, nl3Var) : nl3Var.invoke(Offset.m5976boximpl(j)).m5997unboximpl();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WrappedOverscrollEffect)) {
            return false;
        }
        WrappedOverscrollEffect wrappedOverscrollEffect = (WrappedOverscrollEffect) obj;
        return this.attachNode == wrappedOverscrollEffect.attachNode && this.eventHandlingEnabled == wrappedOverscrollEffect.eventHandlingEnabled && aa4.e(this.innerOverscrollEffect, wrappedOverscrollEffect.innerOverscrollEffect);
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public DelegatableNode getNode() {
        return this.node;
    }

    public int hashCode() {
        return this.innerOverscrollEffect.hashCode() + tg.c(Boolean.hashCode(this.attachNode) * 31, 31, this.eventHandlingEnabled);
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        return this.innerOverscrollEffect.isInProgress();
    }
}
