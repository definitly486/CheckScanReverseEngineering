package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class iq {
    public final ViewGroup a;
    public final kq b;
    public final int c;
    public ViewGroup d;
    public final /* synthetic */ oq e;

    public iq(oq oqVar, ViewGroup viewGroup, kq kqVar, int i) {
        this.e = oqVar;
        this.a = viewGroup;
        this.b = kqVar;
        this.c = i;
    }

    public final void a() {
        if (this.d != null) {
            return;
        }
        oq oqVar = this.e;
        ViewGroup viewGroup = this.a;
        kq kqVar = this.b;
        int i = this.c;
        a62 a62Var = (a62) oqVar;
        t02 t02Var = (t02) kqVar;
        vq0 vq0Var = a62Var.q.a;
        Iterator<View> it = ViewGroupKt.getChildren(viewGroup).iterator();
        while (it.hasNext()) {
            di2.a(vq0Var.u(), it.next());
        }
        viewGroup.removeAllViews();
        br0 br0Var = t02Var.a.a;
        View viewC = a62Var.r.c(br0Var, a62Var.q.b);
        viewC.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinkedHashMap linkedHashMap = a62Var.y;
        Object obj = a62Var.z.get(i);
        Object objA = linkedHashMap.get(obj);
        if (objA == null) {
            objA = a62Var.v.a((String) a62Var.z.get(i));
            linkedHashMap.put(obj, objA);
        }
        a62Var.s.a(a62Var.q, viewC, br0Var, (n32) objA);
        a62Var.x.put(viewGroup, new ou5(i, br0Var, viewC));
        viewGroup.addView(viewC);
        this.d = viewGroup;
    }
}
