package androidx.compose.ui.layout;

import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.node.LayoutNode;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class SubcomposeLayoutState$setCompositionContext$1 extends gh4 implements bm3<LayoutNode, CompositionContext, j59> {
    final /* synthetic */ SubcomposeLayoutState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubcomposeLayoutState$setCompositionContext$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(2);
        this.this$0 = subcomposeLayoutState;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, CompositionContext compositionContext) {
        invoke2(layoutNode, compositionContext);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, CompositionContext compositionContext) {
        this.this$0.getState().setCompositionContext(compositionContext);
    }
}
