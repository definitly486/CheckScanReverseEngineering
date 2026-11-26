package androidx.compose.ui.layout;

import androidx.compose.ui.spatial.RelativeLayoutBounds;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnVisibilityChangedNode$rectChanged$1 extends gh4 implements nl3<RelativeLayoutBounds, j59> {
    final /* synthetic */ OnVisibilityChangedNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnVisibilityChangedNode$rectChanged$1(OnVisibilityChangedNode onVisibilityChangedNode) {
        super(1);
        this.this$0 = onVisibilityChangedNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(RelativeLayoutBounds relativeLayoutBounds) {
        OnVisibilityChangedNode onVisibilityChangedNode = this.this$0;
        LayoutBoundsHolder viewportBounds = onVisibilityChangedNode.getViewportBounds();
        onVisibilityChangedNode.setLastViewport(viewportBounds != null ? viewportBounds.getBounds() : null);
        OnVisibilityChangedNode onVisibilityChangedNode2 = this.this$0;
        onVisibilityChangedNode2.checkVisibility(onVisibilityChangedNode2.getMinFractionVisible(), relativeLayoutBounds, this.this$0.getLastViewport());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(RelativeLayoutBounds relativeLayoutBounds) {
        invoke2(relativeLayoutBounds);
        return j59.a;
    }
}
