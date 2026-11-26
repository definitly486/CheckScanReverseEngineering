package yads;

import android.content.Context;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class po {
    public final oo a;

    public po(oo ooVar) {
        this.a = ooVar;
    }

    public final void a(wx2 wx2Var, fo foVar) {
        Object next;
        RelativeLayout.LayoutParams layoutParams;
        oo ooVar = this.a;
        qr3 qr3Var = ooVar.c;
        Context context = ooVar.a;
        Iterator it = qr3Var.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((mr3) next).c.a(context));
        mr3 mr3Var = (mr3) next;
        if (mr3Var != null) {
            or3 or3Var = ooVar.d;
            ViewGroup viewGroup = ooVar.b;
            or3Var.getClass();
            ViewGroup viewGroup2 = (ViewGroup) dc5.a(viewGroup.getContext(), ExtendedNativeAdView.class, mr3Var.a, viewGroup);
            if (viewGroup2 != null) {
                no noVar = ooVar.e;
                ViewGroup viewGroup3 = ooVar.b;
                e55 e55Var = noVar.d;
                defpackage.ze4 ze4Var = no.e[0];
                e55Var.getClass();
                e55Var.a = new WeakReference(viewGroup2);
                viewGroup3.setVisibility(0);
                viewGroup3.removeAllViews();
                wf6 wf6Var = noVar.b;
                Context context2 = viewGroup3.getContext();
                ViewTreeObserver.OnPreDrawListener onPreDrawListener = noVar.a;
                wf6Var.getClass();
                if (viewGroup3.indexOfChild(viewGroup2) == -1) {
                    wf6Var.a.getClass();
                    if (wx2Var != null) {
                        layoutParams = new RelativeLayout.LayoutParams(ip0.a(context2, wx2Var.c(context2)), defpackage.w65.b(TypedValue.applyDimension(1, wx2Var.a(context2), context2.getResources().getDisplayMetrics())));
                    } else {
                        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    }
                    layoutParams.addRule(13);
                    viewGroup3.setVisibility(0);
                    viewGroup2.setVisibility(0);
                    viewGroup3.addView(viewGroup2, layoutParams);
                    if (onPreDrawListener != null) {
                        th6 th6Var = eh6.a;
                        viewGroup2.getViewTreeObserver().addOnPreDrawListener(new dh6(onPreDrawListener, viewGroup2));
                    }
                }
                on0 on0Var = mr3Var.b;
                noVar.c = on0Var;
                on0Var.a(viewGroup2);
                foVar.a();
                return;
            }
        }
        foVar.a(o8.f);
    }
}
