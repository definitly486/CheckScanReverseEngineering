package yads;

import androidx.recyclerview.widget.ListUpdateCallback;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class d71 implements ListUpdateCallback {
    public final ArrayList a;
    public final /* synthetic */ e71 b;

    public d71(e71 e71Var, ArrayList arrayList) {
        this.b = e71Var;
        this.a = arrayList;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onChanged(int i, int i2, Object obj) {
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onInserted(int i, int i2) {
        int i3;
        int size = i + i2 > this.a.size() ? this.a.size() - i2 : i;
        e71 e71Var = this.b;
        List listSubList = this.a.subList(size, i2 + size);
        e71Var.a.addAll(i, listSubList);
        List list = e71Var.c;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(listSubList, 10));
        Iterator it = listSubList.iterator();
        while (true) {
            i3 = 0;
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            cn1 cn1Var = (cn1) it.next();
            if (((ri2) cn1Var.a.a().getVisibility().a(cn1Var.b)) == ri2.VISIBLE) {
                z = true;
            }
            arrayList.add(Boolean.valueOf(z));
        }
        list.addAll(i, arrayList);
        e71Var.d = false;
        for (Object obj : listSubList) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                u96.o();
                throw null;
            }
            cn1 cn1Var2 = (cn1) obj;
            if (((ri2) cn1Var2.a.a().getVisibility().a(cn1Var2.b)) == ri2.VISIBLE) {
                e71Var.a(e71Var.c(i3 + i));
            }
            i3 = i4;
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onMoved(int i, int i2) {
        onRemoved(i, 1);
        onInserted(i2, 1);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onRemoved(int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            e71 e71Var = this.b;
            e71Var.a.remove(i);
            boolean zBooleanValue = ((Boolean) e71Var.c.remove(i)).booleanValue();
            e71Var.d = false;
            if (zBooleanValue) {
                e71Var.b(e71Var.c(i));
            }
        }
    }
}
