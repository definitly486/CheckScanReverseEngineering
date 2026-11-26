package yads;

import android.view.View;
import android.view.ViewGroup;
import defpackage.r8a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class wf6 {
    public final c9 a;
    public final aw3 b;

    public wf6() {
        c9 c9Var = new c9();
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        this.a = c9Var;
        this.b = aw3VarA;
    }

    public static final void b(ViewGroup viewGroup, boolean z) {
        int childCount;
        if (viewGroup == null || viewGroup.getChildCount() <= 0 || (childCount = viewGroup.getChildCount() - (!z ? 1 : 0)) <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(childCount);
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof qs) {
                arrayList.add(childAt);
            }
        }
        viewGroup.removeViews(0, childCount);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((qs) arrayList.get(i2)).c();
        }
        arrayList.clear();
    }

    public final void a(ViewGroup viewGroup, boolean z) {
        this.b.a(new r8a(1, viewGroup, z));
    }
}
