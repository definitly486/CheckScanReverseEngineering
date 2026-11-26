package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.aa4;
import defpackage.av0;
import defpackage.ll3;
import defpackage.n7;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class LazyLayoutSemanticsModifierNode extends Modifier.Node implements SemanticsModifierNode {
    private final nl3<Object, Integer> indexForKeyMapping = new nl3() { // from class: androidx.compose.foundation.lazy.layout.h
        @Override // defpackage.nl3
        public final Object invoke(Object obj) {
            return Integer.valueOf(LazyLayoutSemanticsModifierNode.indexForKeyMapping$lambda$0(this.b, obj));
        }
    };
    private ll3<? extends LazyLayoutItemProvider> itemProviderLambda;
    private Orientation orientation;
    private boolean reverseScrolling;
    private ScrollAxisRange scrollAxisRange;
    private nl3<? super Integer, Boolean> scrollToIndexAction;
    private LazyLayoutSemanticState state;
    private boolean userScrollEnabled;

    public LazyLayoutSemanticsModifierNode(ll3<? extends LazyLayoutItemProvider> ll3Var, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z, boolean z2) {
        this.itemProviderLambda = ll3Var;
        this.state = lazyLayoutSemanticState;
        this.orientation = orientation;
        this.userScrollEnabled = z;
        this.reverseScrolling = z2;
        updateCachedSemanticsValues();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Float applySemantics$lambda$1(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode) {
        return Float.valueOf(lazyLayoutSemanticsModifierNode.state.getViewport() - lazyLayoutSemanticsModifierNode.state.getContentPadding());
    }

    private final CollectionInfo getCollectionInfo() {
        return this.state.collectionInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int indexForKeyMapping$lambda$0(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, Object obj) {
        LazyLayoutItemProvider lazyLayoutItemProviderInvoke = lazyLayoutSemanticsModifierNode.itemProviderLambda.invoke();
        int itemCount = lazyLayoutItemProviderInvoke.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (aa4.e(lazyLayoutItemProviderInvoke.getKey(i), obj)) {
                return i;
            }
        }
        return -1;
    }

    private final boolean isVertical() {
        return this.orientation == Orientation.Vertical;
    }

    private final void updateCachedSemanticsValues() {
        this.scrollAxisRange = new ScrollAxisRange(new ll3() { // from class: androidx.compose.foundation.lazy.layout.i
            @Override // defpackage.ll3
            public final Object invoke() {
                return Float.valueOf(LazyLayoutSemanticsModifierNode.updateCachedSemanticsValues$lambda$0(this.b));
            }
        }, new ll3() { // from class: androidx.compose.foundation.lazy.layout.j
            @Override // defpackage.ll3
            public final Object invoke() {
                return Float.valueOf(LazyLayoutSemanticsModifierNode.updateCachedSemanticsValues$lambda$1(this.b));
            }
        }, this.reverseScrolling);
        this.scrollToIndexAction = this.userScrollEnabled ? new nl3() { // from class: androidx.compose.foundation.lazy.layout.k
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(LazyLayoutSemanticsModifierNode.updateCachedSemanticsValues$lambda$2(this.b, ((Integer) obj).intValue()));
            }
        } : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float updateCachedSemanticsValues$lambda$0(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode) {
        return lazyLayoutSemanticsModifierNode.state.getScrollOffset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float updateCachedSemanticsValues$lambda$1(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode) {
        return lazyLayoutSemanticsModifierNode.state.getMaxScrollOffset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean updateCachedSemanticsValues$lambda$2(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i) {
        LazyLayoutItemProvider lazyLayoutItemProviderInvoke = lazyLayoutSemanticsModifierNode.itemProviderLambda.invoke();
        if (i < 0 || i >= lazyLayoutItemProviderInvoke.getItemCount()) {
            StringBuilder sbC = n7.c(i, "Can't scroll to index ", ", it is out of bounds [0, ");
            sbC.append(lazyLayoutItemProviderInvoke.getItemCount());
            sbC.append(')');
            InlineClassHelperKt.throwIllegalArgumentException(sbC.toString());
        }
        av0.c(lazyLayoutSemanticsModifierNode.getCoroutineScope(), null, null, new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(lazyLayoutSemanticsModifierNode, i, null), 3);
        return true;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        SemanticsPropertiesKt.indexForKey(semanticsPropertyReceiver, this.indexForKeyMapping);
        boolean zIsVertical = isVertical();
        ScrollAxisRange scrollAxisRange = this.scrollAxisRange;
        if (zIsVertical) {
            if (scrollAxisRange == null) {
                aa4.j("scrollAxisRange");
                throw null;
            }
            SemanticsPropertiesKt.setVerticalScrollAxisRange(semanticsPropertyReceiver, scrollAxisRange);
        } else {
            if (scrollAxisRange == null) {
                aa4.j("scrollAxisRange");
                throw null;
            }
            SemanticsPropertiesKt.setHorizontalScrollAxisRange(semanticsPropertyReceiver, scrollAxisRange);
        }
        nl3<? super Integer, Boolean> nl3Var = this.scrollToIndexAction;
        if (nl3Var != null) {
            SemanticsPropertiesKt.scrollToIndex$default(semanticsPropertyReceiver, null, nl3Var, 1, null);
        }
        SemanticsPropertiesKt.getScrollViewportLength$default(semanticsPropertyReceiver, null, new ll3() { // from class: androidx.compose.foundation.lazy.layout.l
            @Override // defpackage.ll3
            public final Object invoke() {
                return LazyLayoutSemanticsModifierNode.applySemantics$lambda$1(this.b);
            }
        }, 1, null);
        SemanticsPropertiesKt.setCollectionInfo(semanticsPropertyReceiver, getCollectionInfo());
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final void update(ll3<? extends LazyLayoutItemProvider> ll3Var, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z, boolean z2) {
        this.itemProviderLambda = ll3Var;
        this.state = lazyLayoutSemanticState;
        if (this.orientation != orientation) {
            this.orientation = orientation;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        if (this.userScrollEnabled == z && this.reverseScrolling == z2) {
            return;
        }
        this.userScrollEnabled = z;
        this.reverseScrolling = z2;
        updateCachedSemanticsValues();
        SemanticsModifierNodeKt.invalidateSemantics(this);
    }
}
