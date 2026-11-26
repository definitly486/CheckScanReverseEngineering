package yads;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.transition.Fade;
import android.transition.TransitionSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.ViewTreeOnBackPressedDispatcherOwner;
import androidx.core.view.ViewGroupKt;
import com.yandex.mobile.ads.R$id;
import defpackage.hha;
import defpackage.j59;
import defpackage.mha;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import yads.xb2;

/* JADX INFO: loaded from: classes6.dex */
public final class xb2 {
    public final xc2 a;
    public final bj2 b;
    public final ew1 c;
    public final bo2 d;
    public final zc2 e;
    public final s0 f;
    public final defpackage.dm3 g;
    public final LinkedHashMap h;
    public final Handler i;

    public xb2(xc2 xc2Var, bj2 bj2Var, ew1 ew1Var, zc2 zc2Var, s0 s0Var, bo2 bo2Var) {
        hha hhaVar = new hha();
        this.a = xc2Var;
        this.b = bj2Var;
        this.c = ew1Var;
        this.d = bo2Var;
        this.e = zc2Var;
        this.f = s0Var;
        this.g = hhaVar;
        this.h = new LinkedHashMap();
        this.i = new Handler(Looper.getMainLooper());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final View view, final qb2 qb2Var, final tt ttVar, final boolean z) {
        String strA;
        OnBackPressedDispatcher onBackPressedDispatcher;
        final vq0 vq0Var = ttVar.a;
        ((mha) this.a).getClass();
        if (xc2.b(vq0Var, view, qb2Var, z)) {
            final fs2 fs2Var = ttVar.b;
            final br0 br0Var = qb2Var.e;
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            tb2 tb2Var = null;
            Object[] objArr = 0;
            int iA = jf2.a(qb2Var.e.a().getWidth(), displayMetrics, fs2Var, null);
            int iA2 = jf2.a(qb2Var.e.a().getHeight(), displayMetrics, fs2Var, null);
            zc2 zc2Var = this.e;
            zc2Var.getClass();
            p41 p41VarA = br0Var.a();
            lq0 lq0Var = (lq0) zc2Var.a.get();
            long j = 0;
            String strValueOf = String.valueOf(0L);
            p41 p41VarA2 = br0Var.a();
            if (p41VarA2 instanceof z22) {
                z22 z22Var = (z22) p41VarA2;
                strA = z22Var.p;
                if (strA == null && (strA = z22Var.x) == null) {
                    strA = "";
                }
            } else {
                strA = p41VarA2.a();
            }
            if (strA == null) {
                bz.a(0);
                strA = (String) bz.a.get(0);
            }
            n32 n32Var = new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8);
            View viewA = lq0Var.a(br0Var, ttVar, n32Var);
            lq0Var.b.a(ttVar, viewA, br0Var, n32Var);
            fs2 fs2Var2 = ttVar.b;
            DisplayMetrics displayMetrics2 = viewA.getContext().getResources().getDisplayMetrics();
            viewA.setLayoutParams(new RelativeLayout.LayoutParams(jf2.a(p41VarA.getWidth(), displayMetrics2, fs2Var2, null), jf2.a(p41VarA.getHeight(), displayMetrics2, fs2Var2, null)));
            viewA.setFocusable(true);
            final sb2 sb2Var = new sb2(ttVar.a.getContext(), objArr == true ? 1 : 0, 6, 0);
            sb2Var.addView(viewA);
            sb2Var.setLayoutParams(new ViewGroup.LayoutParams(iA, iA2));
            View childAt = sb2Var.getChildCount() == 0 ? null : sb2Var.getChildAt(0);
            if (childAt == null) {
                return;
            }
            final gc5 gc5Var = (gc5) this.g.invoke(sb2Var, Integer.valueOf(iA), Integer.valueOf(iA2));
            gc5Var.setTouchable(true);
            gc5Var.setOutsideTouchable(((Boolean) qb2Var.d.a(fs2Var)).booleanValue());
            if (Build.VERSION.SDK_INT >= 29) {
                gc5Var.setFocusable(true);
                gc5Var.setTouchModal(qb2Var.h instanceof dc2);
            } else {
                gc5Var.setFocusable(qb2Var.h instanceof dc2);
            }
            final View view2 = childAt;
            gc5Var.setTouchInterceptor(new mx4(gc5Var, view2, qb2Var.h instanceof dc2, gc5Var.isOutsideTouchable(), qb2Var.k, ttVar));
            k11 k11Var = qb2Var.a;
            gc5Var.setEnterTransition(k11Var != null ? rb2.a(k11Var, (pb2) qb2Var.j.a(fs2Var), true, fs2Var) : new TransitionSet().addTransition(new Fade()).addTransition(new w16((pb2) qb2Var.j.a(fs2Var))).setInterpolator((TimeInterpolator) new tp5()));
            k11 k11Var2 = qb2Var.b;
            gc5Var.setExitTransition(k11Var2 != null ? rb2.a(k11Var2, (pb2) qb2Var.j.a(fs2Var), false, fs2Var) : new TransitionSet().addTransition(new Fade()).addTransition(new w16((pb2) qb2Var.j.a(fs2Var))).setInterpolator((TimeInterpolator) new tp5()));
            s0 s0Var = this.f;
            Context context = vq0Var.getContext();
            s0Var.getClass();
            if (s0.a(context)) {
                tb2Var = new tb2(this, qb2Var, vq0Var);
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = ViewTreeOnBackPressedDispatcherOwner.get(vq0Var);
                if (onBackPressedDispatcherOwner == null || (onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher()) == null) {
                    o01.a(vq0Var, new AssertionError("Can't find onBackPressedDispatcher to set on back press listener on tooltip."));
                    j59 j59Var = j59.a;
                } else {
                    onBackPressedDispatcher.addCallback(tb2Var);
                }
            }
            final wz5 wz5Var = new wz5(qb2Var.g, ttVar, br0Var, gc5Var, tb2Var);
            gc5Var.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: iha
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    xb2.a(this.b, qb2Var, ttVar, sb2Var, vq0Var, view, gc5Var, wz5Var);
                }
            });
            this.h.put(qb2Var.g, wz5Var);
            ew1 ew1Var = this.c;
            sv1 sv1Var = new sv1() { // from class: jha
                @Override // yads.sv1
                public final void a(boolean z2) {
                    xb2.a(wz5Var, view, this, vq0Var, qb2Var, z, sb2Var, gc5Var, view2, fs2Var, ttVar, br0Var, z2);
                }
            };
            ew1Var.getClass();
            xv1 xv1Var = new xv1(sv1Var);
            bw1 bw1Var = new bw1(ew1Var, xv1Var, sv1Var, fs2Var);
            bw1Var.b(br0Var, fs2Var);
            dw1 dw1Var = bw1Var.b;
            xv1Var.c();
            wz5 wz5Var2 = (wz5) this.h.get(qb2Var.g);
            if (wz5Var2 == null) {
                return;
            }
            wz5Var2.e = dw1Var;
        }
    }

    public static final gc5 a(View view, int i, int i2) {
        return new ad2(view, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String str, tt ttVar, boolean z) {
        tt ttVar2;
        j59 j59Var;
        defpackage.b36 b36VarA = yb2.a(ttVar.a(), str);
        if (b36VarA != null) {
            qb2 qb2Var = (qb2) b36VarA.b;
            View view = (View) b36VarA.c;
            if (this.h.containsKey(qb2Var.g)) {
                ttVar2 = ttVar;
            } else {
                if (oh6.a(view) && !view.isLayoutRequested()) {
                    a(view, qb2Var, ttVar, z);
                    ttVar2 = ttVar;
                } else {
                    ttVar2 = ttVar;
                    view.addOnLayoutChangeListener(new ub2(this, view, qb2Var, ttVar2, z));
                }
                if (!oh6.a(view) && !view.isLayoutRequested()) {
                    view.requestLayout();
                }
            }
            j59Var = j59.a;
        } else {
            ttVar2 = ttVar;
            j59Var = null;
        }
        if (j59Var == null) {
            o01.a(ttVar2.a(), new IllegalStateException(defpackage.me0.c("Unable to find view for tooltip '", str, "'")));
        }
    }

    public final void a(String str) {
        gc5 gc5Var;
        wz5 wz5Var = (wz5) this.h.get(str);
        if (wz5Var == null || (gc5Var = wz5Var.d) == null) {
            return;
        }
        gc5Var.dismiss();
    }

    public final void a(View view) {
        String str;
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_tooltips_tag);
        List list = tag instanceof List ? (List) tag : null;
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                wz5 wz5Var = (wz5) this.h.get(((qb2) it.next()).g);
                if (wz5Var == null) {
                    str = null;
                } else {
                    wz5Var.g = true;
                    dw1 dw1Var = wz5Var.e;
                    if (dw1Var != null) {
                        Iterator it2 = dw1Var.a.iterator();
                        while (it2.hasNext()) {
                            ((aw1) it2.next()).cancel();
                        }
                    }
                    if (wz5Var.d.isShowing()) {
                        rb2.a(wz5Var.d);
                        wz5Var.d.dismiss();
                        str = null;
                    } else {
                        tt ttVar = wz5Var.b;
                        bj2.a(this.b, ttVar.a, ttVar.b, null, wz5Var.c);
                        str = wz5Var.a;
                    }
                }
                if (str != null) {
                    arrayList.add(str);
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                this.h.remove((String) it3.next());
            }
        }
        if (view instanceof ViewGroup) {
            Iterator<View> it4 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it4.hasNext()) {
                a(it4.next());
            }
        }
    }

    public static final void a(xb2 xb2Var, qb2 qb2Var, tt ttVar, sb2 sb2Var, vq0 vq0Var, View view, gc5 gc5Var, wz5 wz5Var) {
        xb2Var.h.remove(qb2Var.g);
        bj2.a(xb2Var.b, ttVar.a, ttVar.b, null, qb2Var.e);
        br0 br0Var = (br0) xb2Var.b.a().get(sb2Var);
        if (br0Var != null) {
            bj2 bj2Var = xb2Var.b;
            bj2Var.getClass();
            List listB = br0Var.a().b();
            if (listB != null) {
                fs2 fs2Var = ttVar.b;
                bj2Var.a(ttVar.a, fs2Var, sb2Var, br0Var, defpackage.kx2.b, bj2.a(listB, fs2Var));
            }
        }
        xb2Var.a.a();
        yb2.a(gc5Var.getContentView(), xb2Var.f);
        tb2 tb2Var = wz5Var.f;
        if (tb2Var == null) {
            return;
        }
        tb2Var.setEnabled(false);
    }

    public static final void a(wz5 wz5Var, View view, xb2 xb2Var, vq0 vq0Var, qb2 qb2Var, boolean z, sb2 sb2Var, gc5 gc5Var, View view2, fs2 fs2Var, tt ttVar, br0 br0Var, boolean z2) {
        if (z2 || wz5Var.g || !view.isAttachedToWindow()) {
            return;
        }
        ((mha) xb2Var.a).getClass();
        if (xc2.b(vq0Var, view, qb2Var, z)) {
            if (oh6.a(sb2Var) && !sb2Var.isLayoutRequested()) {
                Rect rect = new Rect();
                vq0Var.getWindowVisibleDisplayFrame(rect);
                Point pointA = yb2.a(view2, view, qb2Var, fs2Var);
                int iMin = Math.min(view2.getWidth(), rect.width());
                int iMin2 = Math.min(view2.getHeight(), rect.height());
                if (iMin < view2.getWidth()) {
                    ao2 ao2VarA = xb2Var.d.a(vq0Var.Q, vq0Var.O);
                    ao2VarA.d.add(new Throwable("Tooltip width > screen size, width was changed"));
                    ao2VarA.a();
                }
                if (iMin2 < view2.getHeight()) {
                    ao2 ao2VarA2 = xb2Var.d.a(vq0Var.Q, vq0Var.O);
                    ao2VarA2.d.add(new Throwable("Tooltip height > screen size, height was changed"));
                    ao2VarA2.a();
                }
                gc5Var.update(pointA.x, pointA.y, iMin, iMin2);
                bj2.a(xb2Var.b, ttVar.a, ttVar.b, null, br0Var);
                bj2.a(xb2Var.b, ttVar.a, ttVar.b, sb2Var, br0Var);
                xb2Var.a.a();
            } else {
                sb2Var.addOnLayoutChangeListener(new vb2(vq0Var, view2, view, qb2Var, fs2Var, xb2Var, gc5Var, ttVar, br0Var, sb2Var));
            }
            gc5Var.showAtLocation(view, 0, 0, 0);
            yb2.a(view2, xb2Var.f);
            if (((Number) qb2Var.f.a(fs2Var)).longValue() != 0) {
                xb2Var.i.postDelayed(new wb2(xb2Var, qb2Var, vq0Var), ((Number) qb2Var.f.a(fs2Var)).longValue());
            }
        }
    }
}
