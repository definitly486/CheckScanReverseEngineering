package androidx.compose.foundation.gestures;

import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface TargetedFlingBehavior extends FlingBehavior {
    static /* synthetic */ Object performFling$suspendImpl(TargetedFlingBehavior targetedFlingBehavior, ScrollScope scrollScope, float f, e02<? super Float> e02Var) {
        return targetedFlingBehavior.performFling(scrollScope, f, TargetedFlingBehaviorKt.NoOnReport, e02Var);
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    default Object performFling(ScrollScope scrollScope, float f, e02<? super Float> e02Var) {
        return performFling$suspendImpl(this, scrollScope, f, e02Var);
    }

    Object performFling(ScrollScope scrollScope, float f, nl3<? super Float, j59> nl3Var, e02<? super Float> e02Var);
}
