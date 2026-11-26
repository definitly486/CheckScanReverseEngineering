package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import defpackage.b36;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class TopBottomBoundsComparator implements Comparator<b36<? extends Rect, ? extends List<SemanticsNode>>> {
    public static final TopBottomBoundsComparator INSTANCE = new TopBottomBoundsComparator();

    private TopBottomBoundsComparator() {
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(b36<Rect, ? extends List<SemanticsNode>> b36Var, b36<Rect, ? extends List<SemanticsNode>> b36Var2) {
        int iCompare = Float.compare(b36Var.b.getTop(), b36Var2.b.getTop());
        return iCompare != 0 ? iCompare : Float.compare(b36Var.b.getBottom(), b36Var2.b.getBottom());
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(b36<? extends Rect, ? extends List<SemanticsNode>> b36Var, b36<? extends Rect, ? extends List<SemanticsNode>> b36Var2) {
        return compare2((b36<Rect, ? extends List<SemanticsNode>>) b36Var, (b36<Rect, ? extends List<SemanticsNode>>) b36Var2);
    }
}
