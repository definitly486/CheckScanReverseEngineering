package com.my.target;

import android.content.Context;
import android.widget.LinearLayout;
import defpackage.c9a;
import defpackage.ko9;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class zj extends LinearLayout {
    public final uf b;
    public final e6 c;
    public final e6 d;
    public final ko9 e;

    public zj(Context context) {
        super(context);
        setOrientation(1);
        this.e = new ko9(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        e6 e6VarA = a(context);
        this.c = e6VarA;
        l3a.n(e6VarA, "video_control_button");
        linearLayout.addView(e6VarA);
        e6 e6VarA2 = a(context);
        this.d = e6VarA2;
        l3a.n(e6VarA2, "sound_control_button");
        linearLayout.addView(e6VarA2);
        addView(linearLayout);
        uf ufVar = new uf(context);
        this.b = ufVar;
        l3a.n(ufVar, "progress_view");
        addView(ufVar);
    }

    public final e6 a(Context context) {
        e6 e6Var = new e6(context);
        int i = ko9.A;
        ko9 ko9Var = this.e;
        e6Var.setLayoutParams(new LinearLayout.LayoutParams(ko9Var.a.get(i), ko9Var.a.get(ko9.C)));
        return e6Var;
    }

    public c9a getProgressView() {
        return this.b;
    }

    public e6 getSoundControlButton() {
        return this.d;
    }

    public e6 getVideoControlButton() {
        return this.c;
    }
}
