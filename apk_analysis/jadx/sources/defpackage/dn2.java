package defpackage;

import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class dn2 extends DiffUtil.Callback {
    public final List<pz3> c;
    public final List<pz3> d;

    public dn2(List list, ArrayList arrayList) {
        arrayList.getClass();
        list.getClass();
        this.c = arrayList;
        this.d = list;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final boolean areContentsTheSame(int i, int i2) {
        return aa4.e(this.c.get(i).f(), this.d.get(i2).f());
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final boolean areItemsTheSame(int i, int i2) {
        return aa4.e(this.c.get(i).id(), this.d.get(i2).id());
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final int getNewListSize() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final int getOldListSize() {
        return this.c.size();
    }
}
