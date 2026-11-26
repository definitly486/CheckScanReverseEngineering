package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class to1 implements am5 {
    public zl5 a;
    public final ArrayList b = new ArrayList();
    public final Handler c = new Handler(Looper.getMainLooper());

    @Override // defpackage.am5
    public final void a(zl5 zl5Var) {
        zl5Var.getClass();
        this.a = zl5Var;
        ArrayList arrayList = this.b;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zl5Var.a((so1[]) it.next());
        }
        arrayList.clear();
    }

    @Override // defpackage.am5
    public final void b() {
        this.a = null;
    }
}
