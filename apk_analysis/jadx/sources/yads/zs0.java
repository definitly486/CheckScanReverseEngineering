package yads;

import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.PopupMenu;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n07;
import defpackage.u96;
import java.util.List;
import yads.zs0;

/* JADX INFO: loaded from: classes6.dex */
public final class zs0 extends mr4 {
    public final tt a;
    public final List b;
    public final /* synthetic */ bt0 c;

    public zs0(bt0 bt0Var, tt ttVar, List list) {
        this.c = bt0Var;
        this.a = ttVar;
        this.b = list;
    }

    public static final j59 a(ur0 ur0Var, fs2 fs2Var, n07 n07Var, bt0 bt0Var, vq0 vq0Var, int i) {
        List list = ur0Var.b;
        List listH = null;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        if (list == null) {
            xr0 xr0Var = ur0Var.a;
            if (xr0Var != null) {
                listH = u96.h(xr0Var);
            }
        } else {
            listH = list;
        }
        if (listH == null || listH.isEmpty()) {
            return j59.a;
        }
        for (xr0 xr0Var2 : ct0.a(listH, fs2Var)) {
            bt0Var.getClass();
            bt0Var.b.getClass();
            ys0.a(xr0Var2, fs2Var);
            bt0.a(bt0Var, vq0Var, fs2Var, xr0Var2, (String) null, 48);
        }
        n07Var.b = true;
        return j59.a;
    }

    public static final boolean a(final vq0 vq0Var, final ur0 ur0Var, final fs2 fs2Var, final bt0 bt0Var, final int i, MenuItem menuItem) {
        final n07 n07Var = new n07();
        vq0Var.a(new ll3() { // from class: xna
            @Override // defpackage.ll3
            public final Object invoke() {
                return zs0.a(ur0Var, fs2Var, n07Var, bt0Var, vq0Var, i);
            }
        });
        return n07Var.b;
    }

    public final void a(PopupMenu popupMenu) {
        tt ttVar = this.a;
        final vq0 vq0Var = ttVar.a;
        final fs2 fs2Var = ttVar.b;
        Menu menu = popupMenu.getMenu();
        for (final ur0 ur0Var : this.b) {
            final int size = menu.size();
            MenuItem menuItemAdd = menu.add((CharSequence) ur0Var.c.a(fs2Var));
            final bt0 bt0Var = this.c;
            menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: wna
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return zs0.a(vq0Var, ur0Var, fs2Var, bt0Var, size, menuItem);
                }
            });
        }
    }
}
