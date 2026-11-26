package androidx.compose.ui.layout;

import androidx.compose.ui.spatial.RelativeLayoutBounds;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnFirstVisibleNode$rectChanged$1 extends gh4 implements nl3<RelativeLayoutBounds, j59> {
    final /* synthetic */ OnFirstVisibleNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnFirstVisibleNode$rectChanged$1(OnFirstVisibleNode onFirstVisibleNode) {
        super(1);
        this.this$0 = onFirstVisibleNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(RelativeLayoutBounds relativeLayoutBounds) {
        OnFirstVisibleNode onFirstVisibleNode = this.this$0;
        onFirstVisibleNode.checkVisibility(onFirstVisibleNode.getMinFractionVisible(), relativeLayoutBounds, this.this$0.getLastViewport());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(RelativeLayoutBounds relativeLayoutBounds) {
        invoke2(relativeLayoutBounds);
        return j59.a;
    }
}
