package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.j59;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import yads.e71;
import yads.ri2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e71 extends RecyclerView.Adapter implements hs2 {
    public final List a;
    public final ArrayList b = new ArrayList();
    public final List c;
    public boolean d;
    public final ArrayList e;
    public final tt f;
    public final n32 g;
    public ArrayList h;

    public e71(tt ttVar, n32 n32Var, List list) throws Exception {
        this.a = defpackage.qn1.v0(list);
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cn1 cn1Var = (cn1) it.next();
            arrayList.add(Boolean.valueOf(((ri2) cn1Var.a.a().getVisibility().a(cn1Var.b)) == ri2.VISIBLE));
        }
        this.c = new ArrayList(arrayList);
        this.e = new ArrayList();
        e();
        this.f = ttVar;
        this.g = n32Var;
        this.h = du1.b(list);
    }

    public static final j59 a(e71 e71Var, int i, ri2 ri2Var) {
        e71Var.getClass();
        boolean z = ri2Var == ri2.VISIBLE;
        boolean zBooleanValue = ((Boolean) e71Var.c.get(i)).booleanValue();
        if (z != zBooleanValue) {
            e71Var.c.set(i, Boolean.valueOf(z));
            e71Var.d = false;
            if (zBooleanValue) {
                e71Var.b(e71Var.c(i));
            } else {
                e71Var.a(e71Var.c(i));
            }
        }
        return j59.a;
    }

    public void b(int i) {
        notifyItemRemoved(i);
    }

    public final int c(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (((Boolean) this.c.get(i3)).booleanValue()) {
                i2++;
            }
        }
        return i2;
    }

    public final ArrayList d() {
        if (!this.d) {
            this.b.clear();
            List list = this.a;
            ArrayList arrayList = this.b;
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                cn1 cn1Var = ((Boolean) this.c.get(i)).booleanValue() ? (cn1) obj : null;
                if (cn1Var != null) {
                    arrayList.add(cn1Var);
                }
                i = i2;
            }
            this.d = true;
        }
        return this.b;
    }

    public final void e() throws Exception {
        b();
        final int i = 0;
        for (Object obj : this.a) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            cn1 cn1Var = (cn1) obj;
            a(cn1Var.a.a().getVisibility().a(cn1Var.b, new nl3() { // from class: eu9
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return e71.a(this.b, i, (ri2) obj2);
                }
            }));
            i = i2;
        }
    }

    @Override // yads.hs2
    public final List f() {
        return this.e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return d().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        cn1 cn1Var = (cn1) defpackage.qn1.W(i, d());
        if (cn1Var == null) {
            return 0;
        }
        as2 as2VarH = cn1Var.a.a().h();
        String str = as2VarH != null ? (String) as2VarH.a(cn1Var.b) : null;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(u71 u71Var, int i) {
        fs2 fs2Var;
        cn1 cn1Var = (cn1) d().get(i);
        n32 n32VarA = this.g.a((String) this.h.get(this.a.indexOf(cn1Var)));
        tt ttVar = this.f;
        ms2 ms2VarA = ttVar.a.z.a(n32VarA, cn1Var.a, cn1Var.b, ttVar.b);
        if (ms2VarA == null || (fs2Var = ms2VarA.a) == null) {
            fs2Var = cn1Var.b;
        }
        tt ttVar2 = this.f;
        if (!defpackage.aa4.e(ttVar2.b, fs2Var)) {
            ttVar2 = new tt(ttVar2.a, fs2Var);
        }
        u71Var.a(ttVar2, cn1Var.a, i, n32VarA);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        tt ttVarA;
        u71 u71Var = (u71) viewHolder;
        super.onViewAttachedToWindow(u71Var);
        View viewJ = u71Var.a.j();
        if (viewJ == null || (ttVarA = pq.a(viewJ)) == null) {
            return;
        }
        tq.a(u71Var.c, ttVarA, viewJ);
    }

    public void a(int i) {
        notifyItemInserted(i);
    }
}
