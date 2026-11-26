package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadScopeKt$LookaheadScope$2$2 extends gh4 implements bm3<LayoutNode, LookaheadScopeImpl, j59> {
    public static final LookaheadScopeKt$LookaheadScope$2$2 INSTANCE = new LookaheadScopeKt$LookaheadScope$2$2();

    /* JADX INFO: renamed from: androidx.compose.ui.layout.LookaheadScopeKt$LookaheadScope$2$2$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<LayoutCoordinates> {
        final /* synthetic */ LayoutNode $this_set;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LayoutNode layoutNode) {
            super(0);
            this.$this_set = layoutNode;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final LayoutCoordinates invoke() {
            LayoutNode parent$ui = this.$this_set.getParent$ui();
            parent$ui.getClass();
            return parent$ui.getInnerCoordinator$ui().getCoordinates();
        }
    }

    public LookaheadScopeKt$LookaheadScope$2$2() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, LookaheadScopeImpl lookaheadScopeImpl) {
        invoke2(layoutNode, lookaheadScopeImpl);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, LookaheadScopeImpl lookaheadScopeImpl) {
        lookaheadScopeImpl.setScopeCoordinates(new AnonymousClass1(layoutNode));
    }
}
