package com.my.target;

import android.content.Context;
import android.widget.LinearLayout;
import defpackage.c9a;
import defpackage.ko9;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class rf extends LinearLayout {
    public final ArrayList b;
    public final ko9 c;

    public rf(Context context) {
        super(context);
        this.c = new ko9(context);
        setOrientation(0);
        this.b = new ArrayList();
    }

    public final void a(int i, float f) {
        ((c9a) this.b.get(i)).setMaxTime(f);
    }

    public void setCountBars(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            uf ufVar = new uf(getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.weight = 1.0f;
            if (i > 1 && i2 != i - 1) {
                layoutParams.setMarginEnd(this.c.a.get(ko9.g));
            }
            ufVar.setLayoutParams(layoutParams);
            this.b.add(ufVar);
            addView(ufVar);
        }
    }
}
