package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Velocity;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public interface OverscrollEffect {
    @ul2
    static /* synthetic */ void getEffectModifier$annotations() {
    }

    /* JADX INFO: renamed from: applyToFling-BMRW4eQ */
    Object mo1267applyToFlingBMRW4eQ(long j, bm3<? super Velocity, ? super e02<? super Velocity>, ? extends Object> bm3Var, e02<? super j59> e02Var);

    /* JADX INFO: renamed from: applyToScroll-Rhakbz0 */
    long mo1268applyToScrollRhakbz0(long j, int i, nl3<? super Offset, Offset> nl3Var);

    default Modifier getEffectModifier() {
        return Modifier.Companion;
    }

    default DelegatableNode getNode() {
        return new Modifier.Node() { // from class: androidx.compose.foundation.OverscrollEffect$node$1
        };
    }

    boolean isInProgress();
}
