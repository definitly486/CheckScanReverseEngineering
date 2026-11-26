package androidx.compose.animation;

import defpackage.bm3;
import defpackage.gh4;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1 extends gh4 implements bm3<EnterExitState, EnterExitState, Boolean> {
    public static final AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1 INSTANCE = new AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1();

    public AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public final Boolean invoke(EnterExitState enterExitState, EnterExitState enterExitState2) {
        return Boolean.valueOf(enterExitState == enterExitState2 && enterExitState2 == EnterExitState.PostExit);
    }
}
