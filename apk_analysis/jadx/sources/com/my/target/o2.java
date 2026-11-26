package com.my.target;

import android.graphics.Bitmap;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.h14;
import defpackage.hga;
import defpackage.ix9;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class o2 extends RecyclerView.Adapter {
    public List i = new ArrayList();
    public final p.a t;

    public o2(p.a aVar) {
        this.t = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        y2 y2Var = (y2) viewHolder;
        ix9 ix9Var = (ix9) this.i.get(i);
        if (ix9Var.a.p != null) {
            yh yhVar = y2Var.l;
            yhVar.setOnClickListener(new hga(1, y2Var, ix9Var));
            h14 h14Var = ix9Var.a.p;
            if (h14Var != null) {
                yhVar.getAdImageView().setImageBitmap((Bitmap) h14Var.d);
            }
            if (ix9Var.b) {
                yhVar.getSharedContainer().setVisibility(0);
            } else {
                yhVar.getSharedContainer().setVisibility(8);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new y2(new yh(viewGroup.getContext()), this.t);
    }
}
