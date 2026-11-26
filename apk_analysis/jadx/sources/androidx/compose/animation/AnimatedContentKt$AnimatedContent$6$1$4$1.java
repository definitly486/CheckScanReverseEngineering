package androidx.compose.animation;

import defpackage.bm3;
import defpackage.gh4;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$4$1 extends gh4 implements bm3<EnterExitState, EnterExitState, Boolean> {
    final /* synthetic */ ExitTransition $exit;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentKt$AnimatedContent$6$1$4$1(ExitTransition exitTransition) {
        super(2);
        this.$exit = exitTransition;
    }

    @Override // defpackage.bm3
    public final Boolean invoke(EnterExitState enterExitState, EnterExitState enterExitState2) {
        EnterExitState enterExitState3 = EnterExitState.PostExit;
        return Boolean.valueOf(enterExitState == enterExitState3 && enterExitState2 == enterExitState3 && !this.$exit.getData$animation().getHold());
    }
}
