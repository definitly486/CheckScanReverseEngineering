package defpackage;

import androidx.recyclerview.widget.DiffUtil;

/* JADX INFO: loaded from: classes5.dex */
public final class e81 extends DiffUtil.ItemCallback<g81> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public final boolean areContentsTheSame(g81 g81Var, g81 g81Var2) {
        g81 g81Var3 = g81Var;
        g81 g81Var4 = g81Var2;
        g81Var3.getClass();
        g81Var4.getClass();
        return aa4.e(g81Var3.a, g81Var4.a);
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public final boolean areItemsTheSame(g81 g81Var, g81 g81Var2) {
        g81 g81Var3 = g81Var;
        g81 g81Var4 = g81Var2;
        g81Var3.getClass();
        g81Var4.getClass();
        return g81Var3.a.a() == g81Var4.a.a();
    }
}
