package com.my.target;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.fo9;
import defpackage.ls9;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends RecyclerView.Adapter {
    public List i = new ArrayList();
    public final ls9 t;

    public b(ls9 ls9Var) {
        this.t = ls9Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        fo9 fo9Var = (fo9) this.i.get(i);
        y1 y1Var = ((f) viewHolder).l;
        y1Var.setCard(fo9Var);
        y1Var.setOnClickListeners(this.t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new f(new y1(viewGroup.getContext()));
    }
}
