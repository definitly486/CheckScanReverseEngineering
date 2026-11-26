package yads;

import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class c71 extends DiffUtil.Callback {
    public final List a;
    public final ArrayList b;

    public c71(List list, ArrayList arrayList) {
        this.a = list;
        this.b = arrayList;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final boolean areContentsTheSame(int i, int i2) {
        cn1 cn1Var = (cn1) defpackage.qn1.W(i, this.a);
        cn1 cn1Var2 = (cn1) defpackage.qn1.W(i2, this.b);
        if (cn1Var == null || cn1Var2 == null) {
            return defpackage.aa4.e(cn1Var, cn1Var2);
        }
        gs2 gs2VarA = w56.a(cn1Var.b);
        if (gs2VarA != null) {
            gs2VarA.k = true;
        }
        gs2 gs2VarA2 = w56.a(cn1Var2.b);
        if (gs2VarA2 != null) {
            gs2VarA2.k = true;
        }
        boolean zA = cn1Var.a.a(cn1Var2.a, cn1Var.b, cn1Var2.b);
        gs2 gs2VarA3 = w56.a(cn1Var.b);
        if (gs2VarA3 != null) {
            gs2VarA3.k = false;
        }
        gs2 gs2VarA4 = w56.a(cn1Var2.b);
        if (gs2VarA4 == null) {
            return zA;
        }
        gs2VarA4.k = false;
        return zA;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final boolean areItemsTheSame(int i, int i2) {
        br0 br0Var;
        p41 p41VarA;
        as2 as2VarH;
        br0 br0Var2;
        p41 p41VarA2;
        as2 as2VarH2;
        cn1 cn1Var = (cn1) defpackage.qn1.W(i, this.a);
        cn1 cn1Var2 = (cn1) defpackage.qn1.W(i2, this.b);
        String str = null;
        String str2 = (cn1Var == null || (br0Var2 = cn1Var.a) == null || (p41VarA2 = br0Var2.a()) == null || (as2VarH2 = p41VarA2.h()) == null) ? null : (String) as2VarH2.a(cn1Var.b);
        if (cn1Var2 != null && (br0Var = cn1Var2.a) != null && (p41VarA = br0Var.a()) != null && (as2VarH = p41VarA.h()) != null) {
            str = (String) as2VarH.a(cn1Var2.b);
        }
        if (str2 != null || str != null) {
            return defpackage.aa4.e(str2, str);
        }
        if (cn1Var == null || cn1Var2 == null) {
            return defpackage.aa4.e(cn1Var, cn1Var2);
        }
        gs2 gs2VarA = w56.a(cn1Var.b);
        if (gs2VarA != null) {
            gs2VarA.k = true;
        }
        gs2 gs2VarA2 = w56.a(cn1Var2.b);
        if (gs2VarA2 != null) {
            gs2VarA2.k = true;
        }
        boolean zA = cn1Var.a.a(cn1Var2.a, cn1Var.b, cn1Var2.b);
        gs2 gs2VarA3 = w56.a(cn1Var.b);
        if (gs2VarA3 != null) {
            gs2VarA3.k = false;
        }
        gs2 gs2VarA4 = w56.a(cn1Var2.b);
        if (gs2VarA4 == null) {
            return zA;
        }
        gs2VarA4.k = false;
        return zA;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final int getNewListSize() {
        return this.b.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final int getOldListSize() {
        return this.a.size();
    }
}
