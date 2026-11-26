package yads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.nl3;
import java.util.Arrays;
import yads.so1;

/* JADX INFO: loaded from: classes6.dex */
public final class so1 {
    public final bo2 a;

    public so1(bo2 bo2Var) {
        this.a = bo2Var;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0075 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    public static void a(View view, p41 p41Var, fs2 fs2Var, ao2 ao2Var) {
        boolean z;
        boolean z2;
        as2 as2Var;
        a(p41Var.getHeight(), TJAdUnitConstants.String.HEIGHT, p41Var.a(), view.getResources().getDisplayMetrics(), fs2Var, ao2Var);
        int iA = jf2.a(p41Var.getHeight(), view.getResources().getDisplayMetrics(), fs2Var, view.getLayoutParams());
        boolean z3 = true;
        boolean z4 = false;
        if (view.getLayoutParams().height == iA) {
            z = false;
        } else {
            view.getLayoutParams().height = iA;
            z = true;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ro1 ro1Var = layoutParams instanceof ro1 ? (ro1) layoutParams : null;
        if (ro1Var != null) {
            x02 height = p41Var.getHeight();
            v02 v02Var = height instanceof v02 ? (v02) height : null;
            float fDoubleValue = (v02Var == null || (as2Var = v02Var.a.c) == null) ? 0.0f : (float) ((Number) as2Var.a(fs2Var)).doubleValue();
            if (ro1Var.c != fDoubleValue) {
                ro1Var.c = fDoubleValue;
            } else if (z) {
                z2 = false;
            }
            z2 = true;
        } else if (z) {
            z2 = false;
        } else {
            z2 = true;
        }
        h12 h12VarB = b(p41Var.getHeight());
        int iA2 = h12VarB != null ? uq.a(h12VarB, view.getResources().getDisplayMetrics(), fs2Var) : 0;
        h12 h12VarA = a(p41Var.getHeight());
        int i = Integer.MAX_VALUE;
        int iA3 = h12VarA != null ? uq.a(h12VarA, view.getResources().getDisplayMetrics(), fs2Var) : Integer.MAX_VALUE;
        if (iA2 > iA3) {
            iA2 = 0;
        } else {
            i = iA3;
        }
        if (view.getMinimumHeight() != iA2) {
            view.setMinimumHeight(iA2);
            z4 = true;
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        ro1 ro1Var2 = layoutParams2 instanceof ro1 ? (ro1) layoutParams2 : null;
        if (ro1Var2 == null || ro1Var2.g == i) {
            z3 = z4;
        } else {
            ro1Var2.g = i;
        }
        if (z3 || z2) {
            view.requestLayout();
            tq.a(view, p41Var, fs2Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0075 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    public static void b(View view, p41 p41Var, fs2 fs2Var, ao2 ao2Var) {
        boolean z;
        boolean z2;
        as2 as2Var;
        a(p41Var.getWidth(), TJAdUnitConstants.String.WIDTH, p41Var.a(), view.getResources().getDisplayMetrics(), fs2Var, ao2Var);
        int iA = jf2.a(p41Var.getWidth(), view.getResources().getDisplayMetrics(), fs2Var, view.getLayoutParams());
        boolean z3 = true;
        boolean z4 = false;
        if (view.getLayoutParams().width == iA) {
            z = false;
        } else {
            view.getLayoutParams().width = iA;
            z = true;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ro1 ro1Var = layoutParams instanceof ro1 ? (ro1) layoutParams : null;
        if (ro1Var != null) {
            x02 width = p41Var.getWidth();
            v02 v02Var = width instanceof v02 ? (v02) width : null;
            float fDoubleValue = (v02Var == null || (as2Var = v02Var.a.c) == null) ? 0.0f : (float) ((Number) as2Var.a(fs2Var)).doubleValue();
            if (ro1Var.d != fDoubleValue) {
                ro1Var.d = fDoubleValue;
            } else if (z) {
                z2 = false;
            }
            z2 = true;
        } else if (z) {
            z2 = false;
        } else {
            z2 = true;
        }
        h12 h12VarB = b(p41Var.getWidth());
        int iA2 = h12VarB != null ? uq.a(h12VarB, view.getResources().getDisplayMetrics(), fs2Var) : 0;
        h12 h12VarA = a(p41Var.getWidth());
        int i = Integer.MAX_VALUE;
        int iA3 = h12VarA != null ? uq.a(h12VarA, view.getResources().getDisplayMetrics(), fs2Var) : Integer.MAX_VALUE;
        if (iA2 > iA3) {
            iA2 = 0;
        } else {
            i = iA3;
        }
        if (view.getMinimumWidth() != iA2) {
            view.setMinimumWidth(iA2);
            z4 = true;
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        ro1 ro1Var2 = layoutParams2 instanceof ro1 ? (ro1) layoutParams2 : null;
        if (ro1Var2 == null || ro1Var2.h == i) {
            z3 = z4;
        } else {
            ro1Var2.h = i;
        }
        if (z3 || z2) {
            view.requestLayout();
            tq.a(view, p41Var, fs2Var);
        }
    }

    public static String a(h12 h12Var, fs2 fs2Var) {
        Object objA = h12Var.b.a(fs2Var);
        f12 f12Var = g12.c;
        g12 g12Var = (g12) h12Var.a.a(fs2Var);
        f12Var.getClass();
        return objA + f12.a(g12Var);
    }

    public static final j59 b(so1 so1Var, View view, p41 p41Var, fs2 fs2Var, ao2 ao2Var, Object obj) {
        so1Var.getClass();
        b(view, p41Var, fs2Var, ao2Var);
        return j59.a;
    }

    public final void a(final View view, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var, final ao2 ao2Var) {
        if (gb1.a(p41Var.getHeight(), p41Var2 != null ? p41Var2.getHeight() : null)) {
            a(p41Var.getHeight(), TJAdUnitConstants.String.HEIGHT, p41Var.a(), view.getResources().getDisplayMetrics(), fs2Var, ao2Var);
            return;
        }
        a(view, p41Var, fs2Var, ao2Var);
        if (gb1.a(p41Var.getHeight())) {
            return;
        }
        js2.a(hs2Var, p41Var.getHeight(), fs2Var, new nl3() { // from class: m8a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return so1.a(this.b, view, p41Var, fs2Var, ao2Var, obj);
            }
        });
    }

    public final void b(final View view, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var, final ao2 ao2Var) {
        if (gb1.a(p41Var.getWidth(), p41Var2 != null ? p41Var2.getWidth() : null)) {
            a(p41Var.getWidth(), TJAdUnitConstants.String.WIDTH, p41Var.a(), view.getResources().getDisplayMetrics(), fs2Var, ao2Var);
            return;
        }
        b(view, p41Var, fs2Var, ao2Var);
        if (gb1.a(p41Var.getWidth())) {
            return;
        }
        js2.a(hs2Var, p41Var.getWidth(), fs2Var, new nl3() { // from class: n8a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return so1.b(this.b, view, p41Var, fs2Var, ao2Var, obj);
            }
        });
    }

    public static final j59 a(so1 so1Var, View view, p41 p41Var, fs2 fs2Var, ao2 ao2Var, Object obj) {
        so1Var.getClass();
        a(view, p41Var, fs2Var, ao2Var);
        return j59.a;
    }

    public static h12 b(x02 x02Var) {
        if (x02Var instanceof w02) {
            return ((w02) x02Var).a.c;
        }
        if (x02Var instanceof v02) {
            return ((v02) x02Var).a.b;
        }
        return null;
    }

    public static void a(x02 x02Var, String str, String str2, DisplayMetrics displayMetrics, fs2 fs2Var, ao2 ao2Var) {
        h12 h12VarA;
        h12 h12VarB = b(x02Var);
        if (h12VarB == null || (h12VarA = a(x02Var)) == null || uq.a(h12VarB, displayMetrics, fs2Var) <= uq.a(h12VarA, displayMetrics, fs2Var)) {
            return;
        }
        ao2Var.b.add(new Throwable(String.format("Element has incorrect %s constraints (min size is bigger than max size). %sminSize: %s, maxSize: %s.", Arrays.copyOf(new Object[]{str, str2 != null ? String.format("Id: '%s', ", Arrays.copyOf(new Object[]{str2}, 1)) : "", a(h12VarB, fs2Var), a(h12VarA, fs2Var)}, 4))));
        ao2Var.a();
    }

    public static h12 a(x02 x02Var) {
        if (x02Var instanceof w02) {
            return ((w02) x02Var).a.b;
        }
        if (x02Var instanceof v02) {
            return ((v02) x02Var).a.a;
        }
        return null;
    }
}
