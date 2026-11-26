package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
    final /* synthetic */ State<Float> $alpha;
    final /* synthetic */ State<Float> $scale;
    final /* synthetic */ State<TransformOrigin> $transformOrigin;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1(State<Float> state, State<Float> state2, State<TransformOrigin> state3) {
        super(1);
        this.$alpha = state;
        this.$scale = state2;
        this.$transformOrigin = state3;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
        State<Float> state = this.$alpha;
        graphicsLayerScope.setAlpha(state != null ? state.getValue().floatValue() : 1.0f);
        State<Float> state2 = this.$scale;
        graphicsLayerScope.setScaleX(state2 != null ? state2.getValue().floatValue() : 1.0f);
        State<Float> state3 = this.$scale;
        graphicsLayerScope.setScaleY(state3 != null ? state3.getValue().floatValue() : 1.0f);
        State<TransformOrigin> state4 = this.$transformOrigin;
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(state4 != null ? state4.getValue().m6644unboximpl() : TransformOrigin.Companion.m6645getCenterSzJe1aQ());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
        invoke2(graphicsLayerScope);
        return j59.a;
    }
}
