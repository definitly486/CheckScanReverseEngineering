package androidx.compose.animation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class LookaheadAnimationVisualDebugHelperKt$CustomizedLookaheadAnimationVisualDebugging$1 extends gh4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ bm3<Composer, Integer, j59> $content;
    final /* synthetic */ long $debugColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LookaheadAnimationVisualDebugHelperKt$CustomizedLookaheadAnimationVisualDebugging$1(long j, bm3<? super Composer, ? super Integer, j59> bm3Var, int i) {
        super(2);
        this.$debugColor = j;
        this.$content = bm3Var;
        this.$$changed = i;
    }

    public final void invoke(Composer composer, int i) {
        LookaheadAnimationVisualDebugHelperKt.m1138CustomizedLookaheadAnimationVisualDebuggingIv8Zu3U(this.$debugColor, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
