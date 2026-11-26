package androidx.compose.animation;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScopeImpl$sharedBounds$2$1$1 extends gh4 implements ll3<Boolean> {
    final /* synthetic */ SharedTransitionScope.SharedContentState $sharedContentState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedTransitionScopeImpl$sharedBounds$2$1$1(SharedTransitionScope.SharedContentState sharedContentState) {
        super(0);
        this.$sharedContentState = sharedContentState;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final Boolean invoke() {
        return Boolean.valueOf(this.$sharedContentState.isMatchFound());
    }
}
