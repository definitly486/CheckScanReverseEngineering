package androidx.compose.ui.semantics;

import android.os.Trace;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.nl3;
import defpackage.qn1;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsOwnerKt {
    private static final Rect DefaultFakeNodeBounds = new Rect(0.0f, 0.0f, 10.0f, 10.0f);

    public static final List<SemanticsNode> getAllSemanticsNodes(SemanticsOwner semanticsOwner, boolean z, boolean z2) {
        return qn1.t0(getAllSemanticsNodesToMap(semanticsOwner, !z, z2).values());
    }

    public static /* synthetic */ List getAllSemanticsNodes$default(SemanticsOwner semanticsOwner, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return getAllSemanticsNodes(semanticsOwner, z, z2);
    }

    public static final Map<Integer, SemanticsNode> getAllSemanticsNodesToMap(SemanticsOwner semanticsOwner, boolean z, boolean z2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SemanticsNode unmergedRootSemanticsNode = z ? semanticsOwner.getUnmergedRootSemanticsNode() : semanticsOwner.getRootSemanticsNode();
        if (z2 && unmergedRootSemanticsNode.getLayoutNode$ui().isDeactivated()) {
            return linkedHashMap;
        }
        getAllSemanticsNodesToMap$findAllSemanticNodesRecursive(linkedHashMap, z2, unmergedRootSemanticsNode);
        return linkedHashMap;
    }

    public static /* synthetic */ Map getAllSemanticsNodesToMap$default(SemanticsOwner semanticsOwner, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return getAllSemanticsNodesToMap(semanticsOwner, z, z2);
    }

    private static final void getAllSemanticsNodesToMap$findAllSemanticNodesRecursive(Map<Integer, SemanticsNode> map, boolean z, SemanticsNode semanticsNode) {
        map.put(Integer.valueOf(semanticsNode.getId()), semanticsNode);
        List children$ui$default = SemanticsNode.getChildren$ui$default(semanticsNode, false, false, !z, 3, null);
        int size = children$ui$default.size();
        for (int i = 0; i < size; i++) {
            getAllSemanticsNodesToMap$findAllSemanticNodesRecursive(map, z, (SemanticsNode) children$ui$default.get(i));
        }
    }

    public static final IntObjectMap<SemanticsNodeWithAdjustedBounds> getAllUncoveredSemanticsNodesToIntObjectMap(SemanticsOwner semanticsOwner, int i, nl3<? super SemanticsNode, Boolean> nl3Var) {
        Trace.beginSection("getAllUncoveredSemanticsNodesToIntObjectMap");
        try {
            SemanticsNode unmergedRootSemanticsNode = semanticsOwner.getUnmergedRootSemanticsNode();
            if (unmergedRootSemanticsNode.getLayoutNode$ui().isPlaced() && unmergedRootSemanticsNode.getLayoutNode$ui().isAttached()) {
                Rect boundsInRoot = unmergedRootSemanticsNode.getBoundsInRoot();
                MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(48);
                SemanticsRegion SemanticsRegion = SemanticsRegion_androidKt.SemanticsRegion();
                SemanticsRegion.set(IntRectKt.roundToIntRect(boundsInRoot));
                getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(unmergedRootSemanticsNode, mutableIntObjectMap, nl3Var, i, unmergedRootSemanticsNode, SemanticsRegion_androidKt.SemanticsRegion(), SemanticsRegion);
                return mutableIntObjectMap;
            }
            return IntObjectMapKt.emptyIntObjectMap();
        } finally {
            Trace.endSection();
        }
    }

    private static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(MutableIntObjectMap<SemanticsNodeWithAdjustedBounds> mutableIntObjectMap, nl3<? super SemanticsNode, Boolean> nl3Var, SemanticsNode semanticsNode, int i, SemanticsNode semanticsNode2, SemanticsRegion semanticsRegion, SemanticsRegion semanticsRegion2) {
        if (!semanticsNode2.getLayoutNode$ui().isPlaced() || !semanticsNode2.getLayoutNode$ui().isAttached() || semanticsRegion2.isEmpty()) {
            if (semanticsNode2.isFake$ui()) {
                getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addFakeNode(mutableIntObjectMap, semanticsNode, i, semanticsNode2);
                return;
            }
            return;
        }
        Rect touchBoundsInRoot = semanticsNode2.getTouchBoundsInRoot();
        if (touchBoundsInRoot.isEmpty()) {
            touchBoundsInRoot = semanticsNode2.getUnclippedBoundsInRoot$ui();
        }
        IntRect intRectRoundToIntRect = IntRectKt.roundToIntRect(touchBoundsInRoot);
        semanticsRegion.set(intRectRoundToIntRect);
        if (semanticsRegion.intersect(semanticsRegion2)) {
            mutableIntObjectMap.set(getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId(semanticsNode, i, semanticsNode2), new SemanticsNodeWithAdjustedBounds(semanticsNode2, semanticsRegion.getBounds()));
            List<SemanticsNode> replacedChildren$ui = semanticsNode2.getReplacedChildren$ui();
            for (int size = replacedChildren$ui.size() - 1; -1 < size; size--) {
                if (!nl3Var.invoke(replacedChildren$ui.get(size)).booleanValue()) {
                    getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(mutableIntObjectMap, nl3Var, semanticsNode, i, replacedChildren$ui.get(size), semanticsRegion, semanticsRegion2);
                }
            }
            if (isImportantForAccessibility(semanticsNode2)) {
                semanticsRegion2.difference(intRectRoundToIntRect);
            }
        }
    }

    private static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addFakeNode(MutableIntObjectMap<SemanticsNodeWithAdjustedBounds> mutableIntObjectMap, SemanticsNode semanticsNode, int i, SemanticsNode semanticsNode2) {
        LayoutInfo layoutInfo;
        SemanticsNode parent = semanticsNode2.getParent();
        mutableIntObjectMap.set(getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId(semanticsNode, i, semanticsNode2), new SemanticsNodeWithAdjustedBounds(semanticsNode2, IntRectKt.roundToIntRect((parent == null || (layoutInfo = parent.getLayoutInfo()) == null || !layoutInfo.isPlaced()) ? DefaultFakeNodeBounds : parent.getBoundsInRoot())));
    }

    private static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(SemanticsNode semanticsNode, MutableIntObjectMap<SemanticsNodeWithAdjustedBounds> mutableIntObjectMap, nl3<? super SemanticsNode, Boolean> nl3Var, int i, SemanticsNode semanticsNode2, SemanticsRegion semanticsRegion, SemanticsRegion semanticsRegion2) {
        int i2 = i;
        boolean z = (semanticsNode2.getLayoutNode$ui().isPlaced() && semanticsNode2.getLayoutNode$ui().isAttached()) ? false : true;
        if (!semanticsRegion2.isEmpty() || semanticsNode2.getId() == semanticsNode.getId()) {
            if (!z || semanticsNode2.isFake$ui()) {
                IntRect intRectRoundToIntRect = IntRectKt.roundToIntRect(semanticsNode2.getTouchBoundsInRoot());
                SemanticsRegion semanticsRegion3 = semanticsRegion;
                semanticsRegion3.set(intRectRoundToIntRect);
                int allUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId = getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId(semanticsNode, i, semanticsNode2);
                if (!semanticsRegion.intersect(semanticsRegion2)) {
                    if (semanticsNode2.isFake$ui()) {
                        getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addFakeNode(mutableIntObjectMap, semanticsNode, i, semanticsNode2);
                        return;
                    } else {
                        if (allUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId == i2) {
                            mutableIntObjectMap.set(allUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId, new SemanticsNodeWithAdjustedBounds(semanticsNode2, semanticsRegion.getBounds()));
                            return;
                        }
                        return;
                    }
                }
                mutableIntObjectMap.set(allUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId, new SemanticsNodeWithAdjustedBounds(semanticsNode2, semanticsRegion3.getBounds()));
                List<SemanticsNode> replacedChildren$ui = semanticsNode2.getReplacedChildren$ui();
                if (ComposeUiFlags.isAccessibilityShouldIncludeOffscreenChildrenEnabled && semanticsNode2.getUnmergedConfig$ui().isMergingSemanticsOfDescendants() && isPartiallyOffscreenInScrollParent(semanticsNode2)) {
                    SemanticsRegion SemanticsRegion = SemanticsRegion_androidKt.SemanticsRegion();
                    SemanticsRegion.set(IntRectKt.roundToIntRect(semanticsNode2.getUnclippedBoundsInRoot$ui()));
                    int size = replacedChildren$ui.size() - 1;
                    while (-1 < size) {
                        if (!nl3Var.invoke(replacedChildren$ui.get(size)).booleanValue()) {
                            getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(mutableIntObjectMap, nl3Var, semanticsNode, i2, replacedChildren$ui.get(size), SemanticsRegion_androidKt.SemanticsRegion(), SemanticsRegion);
                        }
                        size--;
                        i2 = i;
                    }
                } else {
                    int size2 = replacedChildren$ui.size() - 1;
                    while (-1 < size2) {
                        if (!nl3Var.invoke(replacedChildren$ui.get(size2)).booleanValue()) {
                            getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(semanticsNode, mutableIntObjectMap, nl3Var, i, replacedChildren$ui.get(size2), semanticsRegion3, semanticsRegion2);
                        }
                        size2--;
                        semanticsRegion3 = semanticsRegion;
                    }
                }
                if (isImportantForAccessibility(semanticsNode2)) {
                    semanticsRegion2.difference(intRectRoundToIntRect);
                }
            }
        }
    }

    private static final int getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$virtualViewId(SemanticsNode semanticsNode, int i, SemanticsNode semanticsNode2) {
        return semanticsNode2.getId() == semanticsNode.getId() ? i : semanticsNode2.getId();
    }

    private static final SemanticsNode getScrollableParent(SemanticsNode semanticsNode) {
        for (SemanticsNode parent = semanticsNode.getParent(); parent != null; parent = parent.getParent()) {
            if (isScrollNode(parent)) {
                return parent;
            }
        }
        return null;
    }

    public static final boolean isHidden(SemanticsNode semanticsNode) {
        if (semanticsNode.isTransparent$ui()) {
            return true;
        }
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return unmergedConfig$ui.contains(semanticsProperties.getHideFromAccessibility()) || semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getInvisibleToUser());
    }

    public static /* synthetic */ void isHidden$annotations(SemanticsNode semanticsNode) {
    }

    public static final boolean isImportantForAccessibility(SemanticsNode semanticsNode) {
        if (isHidden(semanticsNode)) {
            return false;
        }
        return semanticsNode.getUnmergedConfig$ui().isMergingSemanticsOfDescendants() || semanticsNode.getUnmergedConfig$ui().containsImportantForAccessibility$ui();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    private static final boolean isPartiallyOffscreenInScrollParent(SemanticsNode semanticsNode) {
        LayoutCoordinates coordinates;
        SemanticsNode scrollableParent = getScrollableParent(semanticsNode);
        if (scrollableParent != null) {
            NodeCoordinator nodeCoordinatorFindCoordinatorToGetBounds$ui = semanticsNode.findCoordinatorToGetBounds$ui();
            LayoutCoordinates coordinates2 = null;
            if (nodeCoordinatorFindCoordinatorToGetBounds$ui == null) {
                coordinates = null;
            } else {
                if (!nodeCoordinatorFindCoordinatorToGetBounds$ui.isAttached()) {
                    nodeCoordinatorFindCoordinatorToGetBounds$ui = null;
                }
                if (nodeCoordinatorFindCoordinatorToGetBounds$ui != null) {
                    coordinates = nodeCoordinatorFindCoordinatorToGetBounds$ui.getCoordinates();
                } else {
                    coordinates = null;
                }
            }
            NodeCoordinator nodeCoordinatorFindCoordinatorToGetBounds$ui2 = scrollableParent.findCoordinatorToGetBounds$ui();
            if (nodeCoordinatorFindCoordinatorToGetBounds$ui2 != null) {
                if (!nodeCoordinatorFindCoordinatorToGetBounds$ui2.isAttached()) {
                    nodeCoordinatorFindCoordinatorToGetBounds$ui2 = null;
                }
                if (nodeCoordinatorFindCoordinatorToGetBounds$ui2 != null) {
                    coordinates2 = nodeCoordinatorFindCoordinatorToGetBounds$ui2.getCoordinates();
                }
            }
            if (coordinates != null && coordinates2 != null) {
                Rect rectLocalBoundingBoxOf = coordinates2.localBoundingBoxOf(coordinates, false);
                return !rectLocalBoundingBoxOf.equals(rectLocalBoundingBoxOf.intersect(RectKt.m6027Recttz77jQw(Offset.Companion.m6003getZeroF1C5BW0(), IntSizeKt.m9225toSizeozmzZPI(coordinates2.mo7710getSizeYbymL2g()))));
            }
        }
        return false;
    }

    private static final boolean isScrollNode(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return unmergedConfig$ui.contains(semanticsProperties.getVerticalScrollAxisRange()) || semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getHorizontalScrollAxisRange());
    }
}
