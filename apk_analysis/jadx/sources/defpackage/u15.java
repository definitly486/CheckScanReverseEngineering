package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButtonGroup;
import com.my.target.l2;
import yads.jg3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u15 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ LinearLayout c;

    public /* synthetic */ u15(LinearLayout linearLayout, int i) {
        this.b = i;
        this.c = linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        LinearLayout linearLayout = this.c;
        switch (i) {
            case 0:
                ((MaterialButtonGroup) linearLayout).lambda$initializeButtonOverflow$1(view);
                break;
            case 1:
                jg3.a((jg3) linearLayout, view);
                break;
            default:
                int i2 = l2.m;
                ((l2) linearLayout).dismiss();
                break;
        }
    }
}
