package defpackage;

import com.my.target.c3;
import com.my.target.core.ui.views.promo.style2.cards.a;
import com.my.target.core.ui.views.promo.style2.cards.b;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class mia implements a.InterfaceC0152a {
    public final b a;
    public final c3 b;
    public final boolean[] c;
    public final ArrayList d = new ArrayList();
    public final ArrayList e;

    public mia(b bVar, ArrayList arrayList, c3 c3Var) {
        this.a = bVar;
        this.b = c3Var;
        this.e = new ArrayList(arrayList);
        this.c = new boolean[arrayList.size()];
        bVar.setListener(this);
    }
}
