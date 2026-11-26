package androidx.compose.ui.node;

import defpackage.aa4;
import defpackage.ad2;
import defpackage.ah;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutTreeConsistencyChecker {
    public static final int $stable = 8;
    private final List<MeasureAndLayoutDelegate.PostponedRequest> postponedMeasureRequests;
    private final DepthSortedSetsForDifferentPasses relayoutNodes;
    private final LayoutNode root;

    public LayoutTreeConsistencyChecker(LayoutNode layoutNode, DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses, List<MeasureAndLayoutDelegate.PostponedRequest> list) {
        this.root = layoutNode;
        this.relayoutNodes = depthSortedSetsForDifferentPasses;
        this.postponedMeasureRequests = list;
    }

    private final boolean consistentLayoutState(LayoutNode layoutNode) {
        MeasureAndLayoutDelegate.PostponedRequest postponedRequest;
        LayoutNode parent$ui = layoutNode.getParent$ui();
        MeasureAndLayoutDelegate.PostponedRequest postponedRequest2 = null;
        LayoutNode.LayoutState layoutState$ui = parent$ui != null ? parent$ui.getLayoutState$ui() : null;
        if (layoutNode.isPlaced() || (layoutNode.getPlaceOrder$ui() != Integer.MAX_VALUE && parent$ui != null && parent$ui.isPlaced())) {
            if (layoutNode.getMeasurePending$ui()) {
                List<MeasureAndLayoutDelegate.PostponedRequest> list = this.postponedMeasureRequests;
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        postponedRequest = null;
                        break;
                    }
                    postponedRequest = list.get(i);
                    MeasureAndLayoutDelegate.PostponedRequest postponedRequest3 = postponedRequest;
                    if (aa4.e(postponedRequest3.getNode(), layoutNode) && !postponedRequest3.isLookahead()) {
                        break;
                    }
                    i++;
                }
                if (postponedRequest != null) {
                    return true;
                }
            }
            if (layoutNode.isDeactivated()) {
                return true;
            }
            if (layoutNode.getMeasurePending$ui()) {
                return this.relayoutNodes.contains(layoutNode) || layoutNode.getLayoutState$ui() == LayoutNode.LayoutState.LookaheadMeasuring || (parent$ui != null && parent$ui.getMeasurePending$ui()) || ((parent$ui != null && parent$ui.getLookaheadMeasurePending$ui()) || layoutState$ui == LayoutNode.LayoutState.Measuring);
            }
            if (layoutNode.getLayoutPending$ui()) {
                if (!this.relayoutNodes.contains(layoutNode) && parent$ui != null && !parent$ui.getMeasurePending$ui() && !parent$ui.getLayoutPending$ui() && layoutState$ui != LayoutNode.LayoutState.Measuring && layoutState$ui != LayoutNode.LayoutState.LayingOut) {
                    List<MeasureAndLayoutDelegate.PostponedRequest> list2 = this.postponedMeasureRequests;
                    int size2 = list2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        if (!aa4.e(list2.get(i2).getNode(), layoutNode)) {
                        }
                    }
                    if (layoutNode.getLayoutState$ui() != LayoutNode.LayoutState.Measuring && layoutNode.getLayoutState$ui() != LayoutNode.LayoutState.LayingOut) {
                        return false;
                    }
                }
                return true;
            }
        }
        if (aa4.e(layoutNode.isPlacedInLookahead(), Boolean.TRUE)) {
            if (layoutNode.getLookaheadMeasurePending$ui()) {
                List<MeasureAndLayoutDelegate.PostponedRequest> list3 = this.postponedMeasureRequests;
                int size3 = list3.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    MeasureAndLayoutDelegate.PostponedRequest postponedRequest4 = list3.get(i3);
                    MeasureAndLayoutDelegate.PostponedRequest postponedRequest5 = postponedRequest4;
                    if (aa4.e(postponedRequest5.getNode(), layoutNode) && postponedRequest5.isLookahead()) {
                        postponedRequest2 = postponedRequest4;
                        break;
                    }
                }
                if (postponedRequest2 != null) {
                    return true;
                }
            }
            if (layoutNode.getLookaheadMeasurePending$ui()) {
                return this.relayoutNodes.contains(layoutNode, true) || (parent$ui != null && parent$ui.getLookaheadMeasurePending$ui()) || layoutState$ui == LayoutNode.LayoutState.LookaheadMeasuring || (parent$ui != null && parent$ui.getMeasurePending$ui() && aa4.e(layoutNode.getLookaheadRoot$ui(), layoutNode));
            }
            if (layoutNode.getLookaheadLayoutPending$ui() && !this.relayoutNodes.contains(layoutNode, true) && parent$ui != null && !parent$ui.getLookaheadMeasurePending$ui() && !parent$ui.getLookaheadLayoutPending$ui() && layoutState$ui != LayoutNode.LayoutState.LookaheadMeasuring && layoutState$ui != LayoutNode.LayoutState.LookaheadLayingOut && (!parent$ui.getLayoutPending$ui() || !aa4.e(layoutNode.getLookaheadRoot$ui(), layoutNode))) {
                return false;
            }
        }
        return true;
    }

    private final boolean isTreeConsistent(LayoutNode layoutNode) {
        if (!consistentLayoutState(layoutNode)) {
            return false;
        }
        List<LayoutNode> children$ui = layoutNode.getChildren$ui();
        int size = children$ui.size();
        for (int i = 0; i < size; i++) {
            if (!isTreeConsistent(children$ui.get(i))) {
                return false;
            }
        }
        return true;
    }

    private final String logTree() {
        StringBuilder sbC = ad2.c("Tree state:\n");
        logTree$printSubTree(this, sbC, this.root, 0);
        return sbC.toString();
    }

    private static final void logTree$printSubTree(LayoutTreeConsistencyChecker layoutTreeConsistencyChecker, StringBuilder sb, LayoutNode layoutNode, int i) {
        String strNodeToString = layoutTreeConsistencyChecker.nodeToString(layoutNode);
        if (strNodeToString.length() > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("..");
            }
            sb.append(strNodeToString);
            sb.append('\n');
            i++;
        }
        List<LayoutNode> children$ui = layoutNode.getChildren$ui();
        int size = children$ui.size();
        for (int i3 = 0; i3 < size; i3++) {
            logTree$printSubTree(layoutTreeConsistencyChecker, sb, children$ui.get(i3), i);
        }
    }

    private final String nodeToString(LayoutNode layoutNode) {
        StringBuilder sb = new StringBuilder();
        sb.append(layoutNode);
        sb.append("[" + layoutNode.getLayoutState$ui() + ']');
        if (!layoutNode.isPlaced()) {
            sb.append("[!isPlaced]");
        }
        sb.append("[measuredByParent=" + layoutNode.getMeasuredByParent$ui() + ']');
        if (!consistentLayoutState(layoutNode)) {
            sb.append("[INCONSISTENT]");
        }
        return sb.toString();
    }

    public final void assertConsistent() {
        if (isTreeConsistent(this.root)) {
            return;
        }
        System.out.println((Object) logTree());
        ah.f("Inconsistency found!");
    }
}
