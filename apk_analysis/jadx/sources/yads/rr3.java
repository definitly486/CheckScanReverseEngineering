package yads;

import android.app.Activity;
import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rr3 {
    public final Activity a;
    public final ViewGroup b;
    public final qr3 c;
    public final or3 d;
    public final nr3 e;

    public rr3(Activity activity, ViewGroup viewGroup, List list) {
        qr3 qr3Var = new qr3(list);
        or3 or3Var = new or3();
        nr3 nr3Var = new nr3();
        this.a = activity;
        this.b = viewGroup;
        this.c = qr3Var;
        this.d = or3Var;
        this.e = nr3Var;
    }

    public final boolean a() {
        Object next;
        qr3 qr3Var = this.c;
        Activity activity = this.a;
        Iterator it = qr3Var.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((mr3) next).c.a(activity));
        mr3 mr3Var = (mr3) next;
        if (mr3Var == null) {
            return false;
        }
        or3 or3Var = this.d;
        ViewGroup viewGroup = this.b;
        or3Var.getClass();
        ViewGroup viewGroup2 = (ViewGroup) dc5.a(viewGroup.getContext(), ExtendedNativeAdView.class, mr3Var.a, viewGroup);
        if (viewGroup2 == null) {
            return false;
        }
        nr3 nr3Var = this.e;
        ViewGroup viewGroup3 = this.b;
        nr3Var.getClass();
        try {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            viewGroup3.removeAllViews();
            viewGroup3.addView(viewGroup2, layoutParams);
        } catch (Throwable unused) {
        }
        on0 on0Var = mr3Var.b;
        nr3Var.a = on0Var;
        on0Var.a(viewGroup2);
        return true;
    }

    public final void b() {
        nr3 nr3Var = this.e;
        ViewGroup viewGroup = this.b;
        nr3Var.getClass();
        try {
            viewGroup.removeAllViews();
            on0 on0Var = nr3Var.a;
            if (on0Var != null) {
                on0Var.c();
            }
        } catch (Throwable unused) {
        }
    }
}
