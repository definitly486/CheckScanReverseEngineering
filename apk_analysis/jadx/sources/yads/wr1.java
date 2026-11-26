package yads;

import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.og8;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wr1 extends e71 {
    public final tt j;
    public final w41 k;
    public final SparseArray l;
    public final qh2 m;
    public final et1 n;
    public final vr1 o;
    public int p;
    public rr1 q;
    public boolean r;
    public int s;

    public wr1(List list, tt ttVar, w41 w41Var, SparseArray sparseArray, qh2 qh2Var, n32 n32Var, et1 et1Var) {
        super(ttVar, n32Var, list);
        this.j = ttVar;
        this.k = w41Var;
        this.l = sparseArray;
        this.m = qh2Var;
        this.n = et1Var;
        this.o = new vr1(this);
        this.q = rr1.START;
    }

    public static final rr1 c(wr1 wr1Var) {
        return wr1Var.q;
    }

    @Override // yads.e71
    public final void a(int i) {
        if (!this.r) {
            notifyItemInserted(i);
        } else {
            notifyItemInserted(i + 2);
            d(i);
        }
    }

    @Override // yads.e71
    public final void b(int i) {
        this.s++;
        if (!this.r) {
            notifyItemRemoved(i);
        } else {
            notifyItemRemoved(i + 2);
            d(i);
        }
    }

    public final void d(int i) {
        if (i >= 0 && i < 2) {
            notifyItemRangeChanged(d().size() + i, 2 - i);
            return;
        }
        int size = d().size() - 2;
        if (i >= d().size() || size > i) {
            return;
        }
        notifyItemRangeChanged((i - d().size()) + 2, 2);
    }

    public final int e(int i) {
        int size = d().size();
        Integer numValueOf = Integer.valueOf(size);
        if (size <= 0) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            return 0;
        }
        int iIntValue = numValueOf.intValue();
        return ((i - (this.r ? 2 : 0)) + iIntValue) % iIntValue;
    }

    public final vr1 g() {
        return this.o;
    }

    @Override // yads.e71, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.o.size();
    }

    public final gt1 h() {
        return new gt1(this.j, new ws1(this.j.a.l, new og8(this, 5)), this.k, this.m, new defpackage.o31(this, 5), new defpackage.p31(this, 4));
    }

    @Override // yads.e71, androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        gt1 gt1Var = (gt1) viewHolder;
        super.onBindViewHolder((u71) gt1Var, e(i));
        Float f = (Float) this.l.get(i);
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (this.p == 0) {
                gt1Var.itemView.setTranslationX(fFloatValue);
            } else {
                gt1Var.itemView.setTranslationY(fFloatValue);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return h();
    }

    public static final boolean a(wr1 wr1Var) {
        return wr1Var.p == 0;
    }

    public static final boolean b(wr1 wr1Var) {
        return wr1Var.p == 0;
    }

    @Override // yads.e71
    public final void onBindViewHolder(u71 u71Var, int i) {
        gt1 gt1Var = (gt1) u71Var;
        super.onBindViewHolder((u71) gt1Var, e(i));
        Float f = (Float) this.l.get(i);
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (this.p == 0) {
                gt1Var.itemView.setTranslationX(fFloatValue);
            } else {
                gt1Var.itemView.setTranslationY(fFloatValue);
            }
        }
    }
}
