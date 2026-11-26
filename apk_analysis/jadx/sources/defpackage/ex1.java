package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ex1 {
    public ArrayList<a> a;
    public volatile cx1 b;

    public static final class a {
    }

    public final void a(cx1 cx1Var) {
        o8.l(cx1Var, "newState");
        if (this.b == cx1Var || this.b == cx1.SHUTDOWN) {
            return;
        }
        this.b = cx1Var;
        if (this.a.isEmpty()) {
            return;
        }
        ArrayList<a> arrayList = this.a;
        this.a = new ArrayList<>();
        Iterator<a> it = arrayList.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw null;
        }
    }
}
