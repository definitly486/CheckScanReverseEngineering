package androidx.compose.animation;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createModifier$2$1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
    final /* synthetic */ boolean $disableClip;
    final /* synthetic */ ll3<Boolean> $isEnabled;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionKt$createModifier$2$1(boolean z, ll3<Boolean> ll3Var) {
        super(1);
        this.$disableClip = z;
        this.$isEnabled = ll3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setClip(!this.$disableClip && this.$isEnabled.invoke().booleanValue());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
        invoke2(graphicsLayerScope);
        return j59.a;
    }
}
