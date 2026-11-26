package androidx.compose.animation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1 extends gh4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ bm3<Composer, Integer, j59> $content;
    final /* synthetic */ boolean $isEnabled;
    final /* synthetic */ boolean $isShowKeyLabelEnabled;
    final /* synthetic */ long $multipleMatchesColor;
    final /* synthetic */ long $overlayColor;
    final /* synthetic */ long $unmatchedElementColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(boolean z, long j, long j2, long j3, boolean z2, bm3<? super Composer, ? super Integer, j59> bm3Var, int i, int i2) {
        super(2);
        this.$isEnabled = z;
        this.$overlayColor = j;
        this.$multipleMatchesColor = j2;
        this.$unmatchedElementColor = j3;
        this.$isShowKeyLabelEnabled = z2;
        this.$content = bm3Var;
        this.$$changed = i;
        this.$$default = i2;
    }

    public final void invoke(Composer composer, int i) {
        LookaheadAnimationVisualDebugHelperKt.m1139LookaheadAnimationVisualDebugginggUzqikQ(this.$isEnabled, this.$overlayColor, this.$multipleMatchesColor, this.$unmatchedElementColor, this.$isShowKeyLabelEnabled, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
