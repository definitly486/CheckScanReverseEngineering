package yads;

import android.widget.TextView;
import defpackage.c1a;
import defpackage.j59;
import defpackage.kp9;
import defpackage.nl3;
import defpackage.ps9;
import defpackage.u96;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import yads.kw5;

/* JADX INFO: loaded from: classes6.dex */
public abstract class kw5 {
    public static final j59 a(TextView textView, as2 as2Var, as2 as2Var2, as2 as2Var3, fs2 fs2Var, JSONObject jSONObject) throws JSONException {
        Integer numValueOf;
        int i;
        String strA = null;
        tf1 tf1Var = as2Var != null ? (tf1) as2Var.a(fs2Var) : null;
        if (as2Var2 != null) {
            long jLongValue = ((Number) as2Var2.a(fs2Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        JSONObject jSONObject2 = as2Var3 != null ? (JSONObject) as2Var3.a(fs2Var) : null;
        boolean z = (tf1Var == null && numValueOf == null) ? false : true;
        int iA = gf2.a(tf1Var, numValueOf);
        if (jSONObject2 != null && jSONObject2.length() != 0) {
            if (z && !jSONObject2.has("wght")) {
                jSONObject2.put("wght", iA);
            }
            defpackage.ar4 ar4VarE = u96.e();
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject2.get(next);
                if (obj instanceof Number) {
                    ar4VarE.add(a(next, (Number) obj));
                }
            }
            strA = defpackage.qn1.a0(u96.d(ar4VarE), ", ", null, null, 0, null, 62);
        } else if (z) {
            strA = a("wght", Integer.valueOf(iA));
        }
        textView.setFontVariationSettings(strA);
        return j59.a;
    }

    public static final void b(TextView textView, as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, fs2 fs2Var, hs2 hs2Var) {
        if (ls2.a(as2Var, as2Var3) && ls2.a(as2Var2, as2Var4)) {
            return;
        }
        textView.setLetterSpacing(((float) ((Number) as2Var.a(fs2Var)).doubleValue()) / ((Number) as2Var2.a(fs2Var)).floatValue());
        if ((as2Var instanceof xr2) && (as2Var2 instanceof xr2)) {
            return;
        }
        c1a c1aVar = new c1a(textView, as2Var, as2Var2, fs2Var, 0);
        hs2Var.a(as2Var2.a(fs2Var, c1aVar));
        hs2Var.a(as2Var.a(fs2Var, c1aVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void c(TextView textView, as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, fs2 fs2Var, hs2 hs2Var) {
        if (ls2.a(as2Var, as2Var3) && ls2.a(as2Var2, as2Var4)) {
            return;
        }
        ((ox2) textView).setFixedLineHeight(as2Var != null ? uq.a(Long.valueOf(((Number) as2Var.a(fs2Var)).longValue()), textView.getResources().getDisplayMetrics(), (g12) as2Var2.a(fs2Var)) : -1);
        if (as2Var != null) {
            if ((as2Var instanceof xr2) && (as2Var2 instanceof xr2)) {
                return;
            }
            kp9 kp9Var = new kp9(textView, as2Var, as2Var2, fs2Var, 1);
            hs2Var.a(as2Var.a(fs2Var, kp9Var));
            hs2Var.a(as2Var2.a(fs2Var, kp9Var));
        }
    }

    public static final j59 b(TextView textView, as2 as2Var, as2 as2Var2, fs2 fs2Var, Object obj) {
        textView.setLetterSpacing(((float) ((Number) as2Var.a(fs2Var)).doubleValue()) / ((Number) as2Var2.a(fs2Var)).floatValue());
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 c(TextView textView, as2 as2Var, as2 as2Var2, fs2 fs2Var, Object obj) {
        ((ox2) textView).setFixedLineHeight(as2Var != null ? uq.a(Long.valueOf(((Number) as2Var.a(fs2Var)).longValue()), textView.getResources().getDisplayMetrics(), (g12) as2Var2.a(fs2Var)) : -1);
        return j59.a;
    }

    public static final void a(final TextView textView, final as2 as2Var, final as2 as2Var2, as2 as2Var3, as2 as2Var4, final fs2 fs2Var, hs2 hs2Var) {
        if (ls2.a(as2Var, as2Var3) && ls2.a(as2Var2, as2Var4)) {
            return;
        }
        int iOrdinal = ((g12) as2Var2.a(fs2Var)).ordinal();
        int i = 1;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                i = 2;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return;
                }
                i = 0;
            }
        }
        textView.setTextSize(i, ((Number) as2Var.a(fs2Var)).longValue());
        if ((as2Var instanceof xr2) && (as2Var2 instanceof xr2)) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: d1a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return kw5.a(textView, as2Var, as2Var2, fs2Var, obj);
            }
        };
        hs2Var.a(as2Var.a(fs2Var, nl3Var));
        hs2Var.a(as2Var2.a(fs2Var, nl3Var));
    }

    public static final j59 a(TextView textView, as2 as2Var, as2 as2Var2, fs2 fs2Var, Object obj) {
        int iOrdinal = ((g12) as2Var2.a(fs2Var)).ordinal();
        int i = 1;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                i = 2;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return null;
                }
                i = 0;
            }
        }
        textView.setTextSize(i, ((Number) as2Var.a(fs2Var)).longValue());
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(TextView textView, as2 as2Var, as2 as2Var2, fs2 fs2Var) {
        if (ls2.a(as2Var, as2Var2)) {
            return;
        }
        textView.setTextColor(((Number) as2Var.a(fs2Var)).intValue());
        if (as2Var instanceof xr2) {
            return;
        }
        ((hs2) textView).a(as2Var.a(fs2Var, new defpackage.mr2(textView, 3)));
    }

    public static final j59 a(TextView textView, int i) {
        textView.setTextColor(i);
        return j59.a;
    }

    public static final void a(TextView textView, as2 as2Var, as2 as2Var2, as2 as2Var3, ef2 ef2Var, fs2 fs2Var) {
        int i;
        Integer numValueOf = null;
        cf2 cf2VarA = ef2Var.a(as2Var != null ? (String) as2Var.a(fs2Var) : null);
        tf1 tf1Var = as2Var2 != null ? (tf1) as2Var2.a(fs2Var) : null;
        if (as2Var3 != null) {
            long jLongValue = ((Number) as2Var3.a(fs2Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        }
        textView.setTypeface(gf2.a(tf1Var, numValueOf, cf2VarA));
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(final TextView textView, final as2 as2Var, final as2 as2Var2, final as2 as2Var3, final as2 as2Var4, final ef2 ef2Var, final fs2 fs2Var) {
        if (ls2.a(as2Var) && ls2.a(as2Var2) && ls2.a(as2Var3)) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: e1a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return kw5.a(textView, as2Var, as2Var2, as2Var3, as2Var4, ef2Var, fs2Var, obj);
            }
        };
        if (as2Var != null) {
            ((hs2) textView).a(as2Var.a(fs2Var, nl3Var));
        }
        if (as2Var2 != null) {
            ((hs2) textView).a(as2Var2.a(fs2Var, nl3Var));
        }
        if (as2Var3 != null) {
            ((hs2) textView).a(as2Var3.a(fs2Var, nl3Var));
        }
    }

    public static final j59 a(TextView textView, as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, ef2 ef2Var, fs2 fs2Var, Object obj) {
        a(textView, as2Var, as2Var2, as2Var3, ef2Var, fs2Var);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(TextView textView, as2 as2Var, as2 as2Var2, as2 as2Var3, fs2 fs2Var) {
        if (!a() || ls2.a(as2Var3)) {
            return;
        }
        ((hs2) textView).a(as2Var3 != null ? as2Var3.a(fs2Var, new ps9(textView, as2Var, as2Var2, as2Var3, fs2Var, 1)) : null);
    }

    public static final boolean a() {
        return true;
    }

    public static final String a(String str, Number number) {
        return "'" + str + "' " + number;
    }
}
