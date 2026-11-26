package androidx.compose.ui.node;

import defpackage.aa4;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public final class DepthSortedSetKt {
    private static final Comparator<LayoutNode> DepthComparator = new Comparator<LayoutNode>() { // from class: androidx.compose.ui.node.DepthSortedSetKt$DepthComparator$1
        @Override // java.util.Comparator
        public int compare(LayoutNode layoutNode, LayoutNode layoutNode2) {
            int iF = aa4.f(layoutNode.getDepth$ui(), layoutNode2.getDepth$ui());
            return iF != 0 ? iF : aa4.f(layoutNode.hashCode(), layoutNode2.hashCode());
        }
    };
}
