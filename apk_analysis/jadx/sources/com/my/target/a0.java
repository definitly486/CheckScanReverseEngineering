package com.my.target;

import android.view.View;
import defpackage.ch1;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.ex0;
import defpackage.h14;
import defpackage.mv0;
import defpackage.vy9;
import defpackage.wy9;
import defpackage.yv9;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements t1 {
    public final t1.a b;
    public final wy9 c;
    public v d;
    public e6a e = new d6a();

    public a0(wy9 wy9Var, t1.a aVar) {
        this.c = wy9Var;
        this.b = aVar;
    }

    public final void a(final vy9 vy9Var) {
        h14 h14Var = vy9Var.a0;
        h14 h14Var2 = vy9Var.Z;
        h14 h14Var3 = vy9Var.R;
        wy9 wy9Var = this.c;
        wy9Var.b(h14Var, h14Var2, h14Var3);
        wy9Var.setAgeRestrictions(vy9Var.g);
        wy9Var.getImageView().setOnClickListener(new mv0(1, this, vy9Var));
        wy9Var.getImageView().setOnTouchListener(new c1(new ch1(this, 4)));
        wy9Var.getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: xv9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.b.e(vy9Var);
            }
        });
        q qVar = vy9Var.H;
        if (qVar != null) {
            wy9Var.a(qVar, new yv9(this, qVar));
            if (qVar.c != null) {
                v vVar = new v(qVar, new ex0());
                this.d = vVar;
                vVar.c = new z(this, vy9Var);
            }
        }
        this.b.o(vy9Var, wy9Var.a());
    }

    @Override // com.my.target.t1
    public final void destroy() {
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.c.getCloseButton();
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.c.a();
    }

    @Override // com.my.target.t1
    public final void pause() {
    }

    @Override // com.my.target.t1
    public final void resume() {
    }

    @Override // com.my.target.t1
    public final void stop() {
    }
}
