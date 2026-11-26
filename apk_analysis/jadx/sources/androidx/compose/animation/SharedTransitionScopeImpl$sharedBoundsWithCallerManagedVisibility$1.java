package androidx.compose.animation;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScopeImpl$sharedBoundsWithCallerManagedVisibility$1 extends gh4 implements nl3<j59, Boolean> {
    final /* synthetic */ boolean $visible;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedTransitionScopeImpl$sharedBoundsWithCallerManagedVisibility$1(boolean z) {
        super(1);
        this.$visible = z;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(j59 j59Var) {
        return Boolean.valueOf(this.$visible);
    }
}
