package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.ContentScale;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SkipToLookaheadSizeNodeKt {
    private static final ll3<Boolean> DefaultEnabled = SkipToLookaheadSizeNodeKt$DefaultEnabled$1.INSTANCE;

    public static final Modifier createContentScaleModifier(Modifier modifier, ScaleToBoundsImpl scaleToBoundsImpl, ll3<Boolean> ll3Var) {
        return modifier.then(aa4.e(scaleToBoundsImpl.getContentScale(), ContentScale.Companion.getCrop()) ? GraphicsLayerModifierKt.graphicsLayer(Modifier.Companion, new AnonymousClass1(ll3Var)) : Modifier.Companion).then(new SkipToLookaheadSizeElement(scaleToBoundsImpl, ll3Var));
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SkipToLookaheadSizeNodeKt$createContentScaleModifier$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
        final /* synthetic */ ll3<Boolean> $isEnabled;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ll3<Boolean> ll3Var) {
            super(1);
            this.$isEnabled = ll3Var;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
            graphicsLayerScope.setClip(this.$isEnabled.invoke().booleanValue());
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
            invoke2(graphicsLayerScope);
            return j59.a;
        }
    }
}
