package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
public final class CrossfadeKt$Crossfade$4$1<T> extends gh4 implements nl3<T, Boolean> {
    final /* synthetic */ Transition<T> $this_Crossfade;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossfadeKt$Crossfade$4$1(Transition<T> transition) {
        super(1);
        this.$this_Crossfade = transition;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.nl3
    public final Boolean invoke(T t) {
        return Boolean.valueOf(!aa4.e(t, this.$this_Crossfade.getTargetState()));
    }
}
