package yads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.dl3;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class sc {
    public static boolean c;
    public final cp2 a;
    public final tq4 b;

    public sc(cp2 cp2Var, tq4 tq4Var) {
        this.a = cp2Var;
        this.b = tq4Var;
    }

    public final void a(Activity activity, View view, uc ucVar, yb ybVar) {
        ViewGroup viewGroup;
        ViewParent parent = view.getParent();
        while (true) {
            if (parent == null) {
                viewGroup = null;
                break;
            } else {
                if ((parent instanceof pn3) || (parent instanceof ExtendedNativeAdView)) {
                    viewGroup = (ViewGroup) parent;
                    break;
                }
                parent = parent.getParent();
            }
        }
        qc co0Var = (viewGroup == null || !ybVar.f) ? new co0(activity, ucVar, ybVar) : new pg3(viewGroup, ucVar, ybVar);
        co0Var.a(new dl3(5));
        ec ecVar = new ec(co0Var, ucVar, this.a, this.b);
        String str = ybVar.b;
        ecVar.b.setAdtuneWebViewListener(new cc(ecVar));
        ecVar.b.loadUrl(str);
        ecVar.f = defpackage.av0.c(ecVar.e, null, null, new dc(ecVar, null), 3);
        ecVar.a.show();
    }

    public final void a(View view, yb ybVar) {
        Activity activity;
        Activity activityB;
        if (c) {
            return;
        }
        Context context = view.getContext();
        while (true) {
            activity = context instanceof Activity ? (Activity) context : null;
            if (activity != null) {
                break;
            }
            ContextWrapper contextWrapper = context instanceof ContextWrapper ? (ContextWrapper) context : null;
            if (contextWrapper == null || (context = contextWrapper.getBaseContext()) == null) {
                activity = null;
                break;
            }
        }
        if (activity == null) {
            synchronized (s1.a) {
                t1 t1Var = s1.b;
                activityB = t1Var != null ? t1Var.a.b() : null;
            }
            activity = activityB;
        }
        if (activity == null || !ya.a(activity)) {
            return;
        }
        try {
            uc ucVar = new uc(activity, ybVar);
            c = true;
            a(activity, view, ucVar, ybVar);
        } catch (Throwable unused) {
            c = false;
        }
    }

    public static final j59 a() {
        c = false;
        return j59.a;
    }
}
