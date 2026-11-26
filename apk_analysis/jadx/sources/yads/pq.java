package yads;

import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import defpackage.nl3;
import defpackage.u96;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pq {
    public static final int a(ac1 ac1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        int iOrdinal = ((g12) ac1Var.a.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            return defpackage.w65.b(a((Number) ac1Var.b.a(fs2Var), displayMetrics));
        }
        if (iOrdinal == 1) {
            return defpackage.w65.b(b((Number) ac1Var.b.a(fs2Var), displayMetrics));
        }
        if (iOrdinal == 2) {
            return (int) ((Number) ac1Var.b.a(fs2Var)).doubleValue();
        }
        defpackage.me0.e();
        return 0;
    }

    public static final float b(af1 af1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        long jLongValue = ((Number) af1Var.b.a(fs2Var)).longValue();
        int iOrdinal = ((g12) af1Var.a.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            return a((Number) Long.valueOf(jLongValue), displayMetrics);
        }
        if (iOrdinal == 1) {
            return b((Number) Long.valueOf(jLongValue), displayMetrics);
        }
        if (iOrdinal == 2) {
            return jLongValue;
        }
        defpackage.me0.e();
        return 0.0f;
    }

    public static final float b(Number number, DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(2, number != null ? number.floatValue() : 0.0f, displayMetrics);
    }

    public static final int b(Long l, DisplayMetrics displayMetrics) {
        return uq.b(l, displayMetrics);
    }

    public static final float b(Number number, DisplayMetrics displayMetrics, g12 g12Var) {
        int iOrdinal = g12Var.ordinal();
        int i = 1;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                i = 2;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return 0.0f;
                }
                i = 0;
            }
        }
        return TypedValue.applyDimension(i, number != null ? number.floatValue() : 0.0f, displayMetrics);
    }

    public static final int a(af1 af1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        return uq.a(af1Var, displayMetrics, fs2Var);
    }

    public static final void a(View view, tt ttVar, xr0 xr0Var, List list, List list2, List list3, List list4, List list5, List list6, List list7, k11 k11Var, as2 as2Var) {
        bt0 bt0Var = (bt0) ttVar.a.n.G.getValue();
        if (list == null || list.isEmpty()) {
            list = xr0Var != null ? u96.h(xr0Var) : null;
        }
        bt0Var.a(ttVar, view, list, list2, list3, list4, list5, list6, list7, k11Var, as2Var);
    }

    public static final float a(Number number, DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(1, number != null ? number.floatValue() : 0.0f, displayMetrics);
    }

    public static final int a(Integer num, DisplayMetrics displayMetrics) {
        return defpackage.w65.b(a((Number) num, displayMetrics));
    }

    public static final int a(Number number, DisplayMetrics displayMetrics, g12 g12Var) {
        return defpackage.w65.b(b(number, displayMetrics, g12Var));
    }

    public static final int a(Long l, DisplayMetrics displayMetrics) {
        return uq.a(l, displayMetrics);
    }

    public static final void a(View view, f11 f11Var, h11 h11Var) {
        tq.a(view, jf2.a(f11Var, h11Var));
        boolean z = h11Var == h11.BASELINE;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ro1 ro1Var = layoutParams instanceof ro1 ? (ro1) layoutParams : null;
        if (ro1Var == null || ro1Var.b == z) {
            return;
        }
        ro1Var.b = z;
        view.requestLayout();
    }

    public static final void a(View view, sg3 sg3Var) {
        View view2;
        if (view.isFocused() || !view.isInTouchMode()) {
            return;
        }
        sg3Var.getClass();
        WeakReference weakReference = sg3.d;
        if (weakReference == null || (view2 = (View) weakReference.get()) == null) {
            return;
        }
        view2.clearFocus();
        o01.a(view2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final tt a(View view) {
        wh1 wh1Var = view instanceof wh1 ? (wh1) view : null;
        if (wh1Var != null) {
            return wh1Var.c();
        }
        return null;
    }

    public static final void a(j71 j71Var, fs2 fs2Var, nl3 nl3Var) throws JSONException {
        fs2 fs2VarA;
        j71Var.a.a(fs2Var, nl3Var);
        JSONArray jSONArray = (JSONArray) j71Var.a.a(fs2Var);
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            if (obj != null && (fs2VarA = f71.a(j71Var, obj, i, fs2Var)) != null) {
                fs2Var = fs2VarA;
                break;
            }
        }
        Iterator it = j71Var.c.iterator();
        while (it.hasNext()) {
            ((i71) it.next()).c.a(fs2Var, nl3Var);
        }
    }
}
