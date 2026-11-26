package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewGroupKt;
import defpackage.j59;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public abstract /* synthetic */ class tq {
    public static final void a(ViewGroup viewGroup, vq0 vq0Var, List list, List list2) {
        List list3;
        bj2 bj2Var = (bj2) vq0Var.n.I.getValue();
        if (list2 != null && !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                list3 = defpackage.kx2.b;
                if (!zHasNext) {
                    break;
                }
                p41 p41VarA = ((cn1) it.next()).a.a();
                List listB = p41VarA.b();
                if (listB == null) {
                    listB = list3;
                }
                List listM = p41VarA.m();
                if (listM == null) {
                    si2 si2VarK = p41VarA.k();
                    List listH = si2VarK != null ? u96.h(si2VarK) : null;
                    if (listH != null) {
                        list3 = listH;
                    }
                } else {
                    list3 = listM;
                }
                defpackage.nn1.s(defpackage.qn1.h0(list3, listB), arrayList);
            }
            HashSet hashSet = new HashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                hashSet.add(((r02) it2.next()).g());
            }
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                cn1 cn1Var = (cn1) it3.next();
                p41 p41VarA2 = cn1Var.a.a();
                List listM2 = p41VarA2.m();
                if (listM2 == null) {
                    si2 si2VarK2 = p41VarA2.k();
                    listM2 = si2VarK2 != null ? u96.h(si2VarK2) : null;
                    if (listM2 == null) {
                        listM2 = list3;
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listM2) {
                    if (!hashSet.contains(((si2) obj).c)) {
                        arrayList2.add(obj);
                    }
                }
                List listB2 = cn1Var.a.a().b();
                if (listB2 == null) {
                    listB2 = list3;
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : listB2) {
                    if (!hashSet.contains(((gc1) obj2).d)) {
                        arrayList3.add(obj2);
                    }
                }
                bj2Var.b(vq0Var, cn1Var.b, (View) null, cn1Var.a, arrayList2, arrayList3);
            }
        }
        if (list.isEmpty()) {
            return;
        }
        viewGroup.addOnLayoutChangeListener(new sq(viewGroup, list, bj2Var, vq0Var));
    }

    public static final void b(View view, yc1 yc1Var, fs2 fs2Var) {
        if (yc1Var == null) {
            view.setPadding(0, 0, 0, 0);
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        g12 g12Var = (g12) yc1Var.g.a(fs2Var);
        as2 as2Var = yc1Var.e;
        if (as2Var == null && yc1Var.b == null) {
            view.setPadding(uq.a(((Number) yc1Var.c.a(fs2Var)).longValue(), g12Var, displayMetrics), uq.a(((Number) yc1Var.f.a(fs2Var)).longValue(), g12Var, displayMetrics), uq.a(((Number) yc1Var.d.a(fs2Var)).longValue(), g12Var, displayMetrics), uq.a(((Number) yc1Var.a.a(fs2Var)).longValue(), g12Var, displayMetrics));
            return;
        }
        int iA = as2Var != null ? uq.a(((Number) as2Var.a(fs2Var)).longValue(), g12Var, displayMetrics) : 0;
        int iA2 = uq.a(((Number) yc1Var.f.a(fs2Var)).longValue(), g12Var, displayMetrics);
        as2 as2Var2 = yc1Var.b;
        view.setPaddingRelative(iA, iA2, as2Var2 != null ? uq.a(((Number) as2Var2.a(fs2Var)).longValue(), g12Var, displayMetrics) : 0, uq.a(((Number) yc1Var.a.a(fs2Var)).longValue(), g12Var, displayMetrics));
    }

    public static final boolean b(w41 w41Var, tt ttVar, View view) {
        n32 n32Var;
        if (!(view instanceof k32)) {
            return true;
        }
        k32 k32Var = (k32) view;
        gq0 gq0Var = (gq0) k32Var.l.c;
        if (gq0Var == null || (n32Var = k32Var.m) == null) {
            return false;
        }
        w41Var.a(ttVar, view, gq0Var, n32Var.d());
        return false;
    }

    public static final void a(View view, yc1 yc1Var, fs2 fs2Var) {
        int iA;
        int iA2;
        int iA3;
        int iA4;
        Integer numValueOf;
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Integer num = null;
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams == null) {
            return;
        }
        if (yc1Var != null) {
            g12 g12Var = (g12) yc1Var.g.a(fs2Var);
            iA = uq.a((Long) yc1Var.c.a(fs2Var), displayMetrics, g12Var);
            iA2 = uq.a((Long) yc1Var.f.a(fs2Var), displayMetrics, g12Var);
            iA3 = uq.a((Long) yc1Var.d.a(fs2Var), displayMetrics, g12Var);
            iA4 = uq.a((Long) yc1Var.a.a(fs2Var), displayMetrics, g12Var);
            as2 as2Var = yc1Var.e;
            Integer numValueOf2 = as2Var != null ? Integer.valueOf(uq.a((Long) as2Var.a(fs2Var), displayMetrics, g12Var)) : null;
            as2 as2Var2 = yc1Var.b;
            numValueOf = as2Var2 != null ? Integer.valueOf(uq.a((Long) as2Var2.a(fs2Var), displayMetrics, g12Var)) : null;
            num = numValueOf2;
        } else {
            iA = 0;
            iA2 = 0;
            iA3 = 0;
            iA4 = 0;
            numValueOf = null;
        }
        if (marginLayoutParams.leftMargin == iA && marginLayoutParams.topMargin == iA2 && marginLayoutParams.rightMargin == iA3 && marginLayoutParams.bottomMargin == iA4 && ((num == null || marginLayoutParams.getMarginStart() == num.intValue()) && (numValueOf == null || marginLayoutParams.getMarginEnd() == numValueOf.intValue()))) {
            return;
        }
        marginLayoutParams.topMargin = iA2;
        marginLayoutParams.bottomMargin = iA4;
        if (num == null && numValueOf == null) {
            marginLayoutParams.leftMargin = iA;
            marginLayoutParams.rightMargin = iA3;
        } else {
            marginLayoutParams.setMarginStart(num != null ? num.intValue() : 0);
            marginLayoutParams.setMarginEnd(numValueOf != null ? numValueOf.intValue() : 0);
        }
        view.requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    public static final defpackage.bm3 a(View view, tt ttVar, k11 k11Var, dh1 dh1Var) {
        GestureDetector gestureDetector;
        defpackage.bm3 bm3VarA = k11Var != null ? v56.a(k11Var, ttVar.b, view) : null;
        if (dh1Var == null) {
            gestureDetector = null;
        } else {
            if (((dh1Var.b == null && dh1Var.c == null) ? null : dh1Var) != null) {
                gestureDetector = new GestureDetector(ttVar.a.l, dh1Var, new Handler(Looper.getMainLooper()));
            } else {
                gestureDetector = null;
            }
        }
        if (bm3VarA == null && gestureDetector == null) {
            return null;
        }
        return new defpackage.c02(2, bm3VarA, gestureDetector);
    }

    public static final void a(View view, p41 p41Var, fs2 fs2Var) {
        j59 j59Var;
        as2 as2Var;
        bd2 bd2VarL = p41Var.l();
        if (bd2VarL == null || (as2Var = bd2VarL.c) == null) {
            j59Var = null;
        } else {
            view.setRotation((float) ((Number) as2Var.a(fs2Var)).doubleValue());
            j59Var = j59.a;
        }
        if (j59Var == null) {
            view.setRotation(0.0f);
        } else if (view.getWidth() == 0 && view.getHeight() == 0) {
            OneShotPreDrawListener.add(view, new rq(view, view, bd2VarL, fs2Var));
        } else {
            view.setPivotX(a(view, view.getWidth(), bd2VarL.a, fs2Var));
            view.setPivotY(a(view, view.getHeight(), bd2VarL.b, fs2Var));
        }
    }

    public static final float a(View view, int i, ru1 ru1Var, fs2 fs2Var) {
        Object objA = ru1Var.a();
        if (!(objA instanceof su1)) {
            return objA instanceof bv1 ? (((float) ((Number) ((bv1) objA).a.a(fs2Var)).doubleValue()) / 100.0f) * i : i / 2.0f;
        }
        su1 su1Var = (su1) objA;
        as2 as2Var = su1Var.b;
        if (as2Var == null) {
            return i / 2.0f;
        }
        float fLongValue = ((Number) as2Var.a(fs2Var)).longValue();
        int iOrdinal = ((g12) su1Var.a.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            return pq.a(Float.valueOf(fLongValue), view.getResources().getDisplayMetrics());
        }
        if (iOrdinal == 1) {
            return pq.b(Float.valueOf(fLongValue), view.getResources().getDisplayMetrics());
        }
        if (iOrdinal == 2) {
            return fLongValue;
        }
        defpackage.me0.e();
        return 0.0f;
    }

    public static final void a(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ro1)) {
            Objects.toString(view.getTag());
            Objects.toString(layoutParams);
            rv3.a();
        } else {
            ro1 ro1Var = (ro1) layoutParams;
            if (ro1Var.b() != i) {
                ro1Var.b(i);
                view.requestLayout();
            }
        }
    }

    public static final boolean a(defpackage.bm3 bm3Var, GestureDetector gestureDetector, View view, MotionEvent motionEvent) {
        if (bm3Var != null) {
            bm3Var.invoke(view, motionEvent);
        }
        if (gestureDetector != null) {
            return gestureDetector.onTouchEvent(motionEvent);
        }
        return false;
    }

    public static final void a(w41 w41Var, tt ttVar, View view) {
        a(new defpackage.bg1(2, w41Var, ttVar), view);
    }

    public static final void a(nl3 nl3Var, View view) {
        if (((Boolean) nl3Var.invoke(view)).booleanValue() && (view instanceof ViewGroup)) {
            Iterator<View> it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                a(nl3Var, it.next());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(View view, b31 b31Var, b31 b31Var2, fs2 fs2Var) {
        as2 as2Var;
        as2 as2Var2;
        if (view instanceof wj) {
            tp0 tp0VarA = null;
            if (ls2.a(b31Var != null ? b31Var.a : null, b31Var2 != null ? b31Var2.a : null)) {
                return;
            }
            wj wjVar = (wj) view;
            Double d = (b31Var == null || (as2Var2 = b31Var.a) == null) ? null : (Double) as2Var2.a(fs2Var);
            wjVar.setAspectRatio(d != null ? (float) d.doubleValue() : 0.0f);
            if (ls2.a(b31Var != null ? b31Var.a : null) || !(view instanceof hs2)) {
                return;
            }
            hs2 hs2Var = (hs2) view;
            if (b31Var != null && (as2Var = b31Var.a) != null) {
                tp0VarA = as2Var.a(fs2Var, new defpackage.a02(view, 3));
            }
            hs2Var.a(tp0VarA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(View view, double d) {
        ((wj) view).setAspectRatio((float) d);
        return j59.a;
    }

    public static final void a(View view, tt ttVar, Bitmap bitmap, List list, nl3 nl3Var) {
        int i;
        if (list != null && !list.isEmpty()) {
            fs2 fs2VarB = ttVar.b();
            fu fuVar = (fu) ((nq0) ttVar.a().p()).n.getValue();
            if (oh6.a(view) && !view.isLayoutRequested()) {
                float fMax = Math.max(view.getHeight() / bitmap.getHeight(), view.getWidth() / bitmap.getWidth());
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMax), (int) (fMax * bitmap.getHeight()), false);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    wd1 wd1Var = (wd1) it.next();
                    if (wd1Var instanceof ud1) {
                        long jLongValue = ((Number) ((ud1) wd1Var).a().a.a(fs2VarB)).longValue();
                        long j = jLongValue >> 31;
                        if (j == 0 || j == -1) {
                            i = (int) jLongValue;
                        } else {
                            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                        }
                        bitmapCreateScaledBitmap = ((yv3) fuVar).a(bitmapCreateScaledBitmap, pq.a(Integer.valueOf(i), view.getResources().getDisplayMetrics()));
                    } else if ((wd1Var instanceof vd1) && oh6.b(view)) {
                        fuVar.getClass();
                        bitmapCreateScaledBitmap = fu.a(bitmapCreateScaledBitmap);
                    }
                }
                nl3Var.invoke(bitmapCreateScaledBitmap);
                return;
            }
            view.addOnLayoutChangeListener(new qq(view, bitmap, list, fs2VarB, fuVar, nl3Var));
            return;
        }
        nl3Var.invoke(bitmap);
    }

    public static final void a(View view) {
        view.performAccessibilityAction(64, null);
        view.sendAccessibilityEvent(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(ViewGroup viewGroup, as2 as2Var, as2 as2Var2, fs2 fs2Var) {
        if (ls2.a(as2Var, as2Var2)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) as2Var.a(fs2Var)).booleanValue();
        wh1 wh1Var = viewGroup instanceof wh1 ? (wh1) viewGroup : null;
        if (wh1Var != null) {
            wh1Var.setNeedClipping(zBooleanValue);
        }
        ViewParent parent = viewGroup.getParent();
        if (!zBooleanValue && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).setClipChildren(false);
        }
        if (as2Var instanceof xr2) {
            return;
        }
        wh1 wh1Var2 = viewGroup instanceof wh1 ? (wh1) viewGroup : null;
        if (wh1Var2 != null) {
            wh1Var2.a(as2Var.a(fs2Var, new defpackage.om4(viewGroup, 4)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(ViewGroup viewGroup, boolean z) {
        wh1 wh1Var = viewGroup instanceof wh1 ? (wh1) viewGroup : null;
        if (wh1Var != null) {
            wh1Var.setNeedClipping(z);
        }
        ViewParent parent = viewGroup.getParent();
        if (!z && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).setClipChildren(false);
        }
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(View view, Canvas canvas) {
        l51 l51VarI;
        int iSave = canvas.save();
        try {
            canvas.translate(view.getX(), view.getY());
            canvas.rotate(view.getRotation(), view.getPivotX(), view.getPivotY());
            s51 s51Var = view instanceof s51 ? (s51) view : null;
            if (s51Var != null && (l51VarI = s51Var.i()) != null) {
                l51VarI.c(canvas);
            }
        } finally {
            canvas.restoreToCount(iSave);
        }
    }
}
