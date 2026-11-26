package yads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mx4 implements View.OnTouchListener {
    public final gc5 a;
    public final View b;
    public final boolean c;
    public final boolean d;
    public final List e;
    public final tt f;
    public final Rect g = new Rect();

    public mx4(gc5 gc5Var, View view, boolean z, boolean z2, List list, tt ttVar) {
        this.a = gc5Var;
        this.b = view;
        this.c = z;
        this.d = z2;
        this.e = list;
        this.f = ttVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.b.getHitRect(this.g);
        if (this.g.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        if (motionEvent.getAction() == 1) {
            List list = this.e;
            if (list != null) {
                tt ttVar = this.f;
                fs2 fs2Var = ttVar.b;
                vq0 vq0Var = ttVar.a;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((Boolean) ((xr0) obj).b.a(fs2Var)).booleanValue()) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    vq0Var.n.c.b.a((xr0) it.next(), vq0Var, fs2Var);
                }
            }
            if (this.d) {
                this.a.dismiss();
            }
        }
        return this.c;
    }
}
