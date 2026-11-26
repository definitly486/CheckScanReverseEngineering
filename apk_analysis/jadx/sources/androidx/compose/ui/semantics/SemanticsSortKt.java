package androidx.compose.ui.semantics;

import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsSortKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.b36;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.pp1;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsSortKt {
    private static final bm3<SemanticsNode, SemanticsNode, Integer> UnmergedConfigComparator;
    private static final Comparator<SemanticsNode>[] semanticComparators;

    static {
        Comparator<SemanticsNode>[] comparatorArr = new Comparator[2];
        int i = 0;
        while (i < 2) {
            final Comparator comparator = i == 0 ? RtlBoundsComparator.INSTANCE : LtrBoundsComparator.INSTANCE;
            final Comparator<LayoutNode> zComparator$ui = LayoutNode.Companion.getZComparator$ui();
            final Comparator comparator2 = new Comparator() { // from class: androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int iCompare = comparator.compare(t, t2);
                    return iCompare != 0 ? iCompare : zComparator$ui.compare(((SemanticsNode) t).getLayoutNode$ui(), ((SemanticsNode) t2).getLayoutNode$ui());
                }
            };
            comparatorArr[i] = new Comparator() { // from class: androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int iCompare = comparator2.compare(t, t2);
                    return iCompare != 0 ? iCompare : pp1.a(Integer.valueOf(((SemanticsNode) t).getId()), Integer.valueOf(((SemanticsNode) t2).getId()));
                }
            };
            i++;
        }
        semanticComparators = comparatorArr;
        UnmergedConfigComparator = SemanticsSortKt$UnmergedConfigComparator$1.INSTANCE;
    }

    private static final void geometryDepthFirstSearch(SemanticsNode semanticsNode, ArrayList<SemanticsNode> arrayList, nl3<? super SemanticsNode, Boolean> nl3Var, nl3<? super SemanticsNode, Boolean> nl3Var2, MutableIntObjectMap<List<SemanticsNode>> mutableIntObjectMap) {
        boolean zBooleanValue = ((Boolean) semanticsNode.getUnmergedConfig$ui().getOrElse(SemanticsProperties.INSTANCE.getIsTraversalGroup(), SemanticsSortKt$geometryDepthFirstSearch$isTraversalGroup$1.INSTANCE)).booleanValue();
        if ((zBooleanValue || nl3Var2.invoke(semanticsNode).booleanValue()) && nl3Var.invoke(semanticsNode).booleanValue()) {
            arrayList.add(semanticsNode);
        }
        if (zBooleanValue) {
            mutableIntObjectMap.set(semanticsNode.getId(), subtreeSortedByGeometryGrouping(semanticsNode, nl3Var, nl3Var2, semanticsNode.getChildren()));
            return;
        }
        List<SemanticsNode> children = semanticsNode.getChildren();
        int size = children.size();
        for (int i = 0; i < size; i++) {
            geometryDepthFirstSearch(children.get(i), arrayList, nl3Var, nl3Var2, mutableIntObjectMap);
        }
    }

    private static final boolean placedEntryRowOverlaps(ArrayList<b36<Rect, List<SemanticsNode>>> arrayList, SemanticsNode semanticsNode) {
        float top = semanticsNode.getBoundsInWindow().getTop();
        float bottom = semanticsNode.getBoundsInWindow().getBottom();
        boolean z = top >= bottom;
        int iG = u96.g(arrayList);
        if (iG >= 0) {
            int i = 0;
            while (true) {
                Rect rect = arrayList.get(i).b;
                boolean z2 = rect.getTop() >= rect.getBottom();
                if (!z && !z2 && Math.max(top, rect.getTop()) < Math.min(bottom, rect.getBottom())) {
                    arrayList.set(i, new b36<>(rect.intersect(0.0f, top, Float.POSITIVE_INFINITY, bottom), arrayList.get(i).c));
                    arrayList.get(i).c.add(semanticsNode);
                    return true;
                }
                if (i != iG) {
                    i++;
                }
            }
        }
        return false;
    }

    public static final List<SemanticsNode> sortByGeometryGroupings(SemanticsNode semanticsNode, List<SemanticsNode> list, nl3<? super SemanticsNode, Boolean> nl3Var, IntObjectMap<List<SemanticsNode>> intObjectMap) {
        int size = 0;
        char c = semanticsNode.getLayoutInfo().getLayoutDirection() == LayoutDirection.Rtl ? (char) 1 : (char) 0;
        ArrayList arrayList = new ArrayList(list.size() / 2);
        int size2 = list.size() - 1;
        if (size2 >= 0) {
            int i = 0;
            while (true) {
                SemanticsNode semanticsNode2 = list.get(i);
                if (i == 0 || !placedEntryRowOverlaps(arrayList, semanticsNode2)) {
                    arrayList.add(new b36(semanticsNode2.getBoundsInWindow(), u96.k(semanticsNode2)));
                }
                if (i == size2) {
                    break;
                }
                i++;
            }
        }
        nn1.J(TopBottomBoundsComparator.INSTANCE, arrayList);
        ArrayList arrayList2 = new ArrayList();
        Comparator<SemanticsNode> comparator = semanticComparators[c ^ 1];
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            b36 b36Var = (b36) arrayList.get(i2);
            nn1.J(comparator, (List) b36Var.c);
            arrayList2.addAll((Collection) b36Var.c);
        }
        final bm3<SemanticsNode, SemanticsNode, Integer> bm3Var = UnmergedConfigComparator;
        nn1.J(new Comparator() { // from class: do7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SemanticsSortKt.sortByGeometryGroupings$lambda$1(bm3Var, obj, obj2);
            }
        }, arrayList2);
        while (size <= arrayList2.size() - 1) {
            List<SemanticsNode> list2 = intObjectMap.get(((SemanticsNode) arrayList2.get(size)).getId());
            if (list2 != null) {
                if (nl3Var.invoke(arrayList2.get(size)).booleanValue()) {
                    size++;
                } else {
                    arrayList2.remove(size);
                }
                arrayList2.addAll(size, list2);
                size += list2.size();
            } else {
                size++;
            }
        }
        return arrayList2;
    }

    public static /* synthetic */ List sortByGeometryGroupings$default(SemanticsNode semanticsNode, List list, nl3 nl3Var, IntObjectMap intObjectMap, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = AnonymousClass1.INSTANCE;
        }
        if ((i & 4) != 0) {
            intObjectMap = IntObjectMapKt.intObjectMapOf();
        }
        return sortByGeometryGroupings(semanticsNode, list, nl3Var, intObjectMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int sortByGeometryGroupings$lambda$1(bm3 bm3Var, Object obj, Object obj2) {
        return ((Number) bm3Var.invoke(obj, obj2)).intValue();
    }

    public static final List<SemanticsNode> subtreeSortedByGeometryGrouping(SemanticsNode semanticsNode, nl3<? super SemanticsNode, Boolean> nl3Var, nl3<? super SemanticsNode, Boolean> nl3Var2, List<SemanticsNode> list) {
        MutableIntObjectMap mutableIntObjectMapMutableIntObjectMapOf = IntObjectMapKt.mutableIntObjectMapOf();
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            geometryDepthFirstSearch(list.get(i), arrayList, nl3Var, nl3Var2, mutableIntObjectMapMutableIntObjectMapOf);
        }
        return sortByGeometryGroupings(semanticsNode, arrayList, nl3Var2, mutableIntObjectMapMutableIntObjectMapOf);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsSortKt$sortByGeometryGroupings$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<SemanticsNode, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(SemanticsNode semanticsNode) {
            return Boolean.FALSE;
        }
    }
}
