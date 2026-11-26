package androidx.compose.animation;

import defpackage.aa4;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$3$1<S> extends gh4 implements nl3<S, Boolean> {
    final /* synthetic */ S $stateForContent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentKt$AnimatedContent$6$1$3$1(S s) {
        super(1);
        this.$stateForContent = s;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.nl3
    public final Boolean invoke(S s) {
        return Boolean.valueOf(aa4.e(s, this.$stateForContent));
    }
}
