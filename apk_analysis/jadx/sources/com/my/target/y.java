package com.my.target;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class y implements View.OnClickListener {
    public final /* synthetic */ g2 b;

    public y(g2 g2Var) {
        this.b = g2Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l.a aVar = this.b.r;
        if (aVar != null) {
            ((w2.b) aVar).a();
        }
    }
}
