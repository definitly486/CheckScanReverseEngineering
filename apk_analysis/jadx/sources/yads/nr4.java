package yads;

import android.view.View;
import androidx.appcompat.widget.PopupMenu;

/* JADX INFO: loaded from: classes6.dex */
public final class nr4 {
    public final View a;
    public final int b = 83;
    public zs0 c;

    public nr4(View view) {
        this.a = view;
    }

    public final /* synthetic */ void a(View view) {
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view, this.b);
        zs0 zs0Var = this.c;
        if (zs0Var != null) {
            zs0Var.a(popupMenu);
        }
        popupMenu.show();
    }

    public final nr4 b() {
        return this;
    }

    public final View.OnClickListener a() {
        return new defpackage.e71(this, 1);
    }

    public final nr4 a(zs0 zs0Var) {
        this.c = zs0Var;
        return this;
    }
}
