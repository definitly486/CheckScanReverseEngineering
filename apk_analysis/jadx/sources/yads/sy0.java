package yads;

import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.q5a;
import java.util.List;
import org.json.JSONArray;
import yads.sy0;

/* JADX INFO: loaded from: classes6.dex */
public final class sy0 implements yy0 {
    public static final JSONArray a(Integer num, vq0 vq0Var, String str, Object obj, JSONArray jSONArray) {
        int length = jSONArray.length();
        if (num == null || num.intValue() == length) {
            return ty0.a(jSONArray, new defpackage.mk(obj, 4));
        }
        if (kx6.n(0, length).c(num.intValue())) {
            return ty0.a(jSONArray, new defpackage.w44(1, num, obj));
        }
        StringBuilder sb = new StringBuilder("Index out of bound (");
        sb.append(num);
        sb.append(") for mutation ");
        sb.append(str);
        sb.append(" (");
        o01.a(vq0Var, new IndexOutOfBoundsException(defpackage.l2.e(sb, ")", length)));
        return jSONArray;
    }

    public static void a(js0 js0Var, vq0 vq0Var, fs2 fs2Var) {
        String str = (String) js0Var.c.a(fs2Var);
        as2 as2Var = js0Var.a;
        ty0.a(vq0Var, str, fs2Var, new q5a(as2Var != null ? Integer.valueOf((int) ((Number) as2Var.a(fs2Var)).longValue()) : null, vq0Var, str, o01.c(js0Var.b, fs2Var)));
    }

    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (ry0Var instanceof yx0) {
            a(((yx0) ry0Var).a, vq0Var, fs2Var);
            return true;
        }
        if (ry0Var instanceof zx0) {
            a(((zx0) ry0Var).a, vq0Var, fs2Var);
            return true;
        }
        if (!(ry0Var instanceof ay0)) {
            return false;
        }
        a(((ay0) ry0Var).a, vq0Var, fs2Var);
        return true;
    }

    public static final j59 a(Object obj, List list) {
        list.add(obj);
        return j59.a;
    }

    public static final j59 a(Integer num, Object obj, List list) {
        list.add(num.intValue(), obj);
        return j59.a;
    }

    public static void a(os0 os0Var, final vq0 vq0Var, fs2 fs2Var) {
        final String str = (String) os0Var.b.a(fs2Var);
        final int iLongValue = (int) ((Number) os0Var.a.a(fs2Var)).longValue();
        ty0.a(vq0Var, str, fs2Var, new nl3() { // from class: o8a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return sy0.a(iLongValue, vq0Var, str, (JSONArray) obj);
            }
        });
    }

    public static final JSONArray a(final int i, vq0 vq0Var, String str, JSONArray jSONArray) {
        int length = jSONArray.length();
        if (i >= 0 && i < length) {
            return ty0.a(jSONArray, new nl3() { // from class: q8a
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return sy0.a(i, (List) obj);
                }
            });
        }
        o01.a(vq0Var, new IndexOutOfBoundsException(defpackage.l2.e(defpackage.ng.e(i, "Index out of bound (", ") for mutation ", str, " ("), ")", length)));
        return jSONArray;
    }

    public static final j59 a(int i, List list) {
        list.remove(i);
        return j59.a;
    }

    public static void a(ts0 ts0Var, final vq0 vq0Var, fs2 fs2Var) {
        final String str = (String) ts0Var.c.a(fs2Var);
        final int iLongValue = (int) ((Number) ts0Var.a.a(fs2Var)).longValue();
        final Object objC = o01.c(ts0Var.b, fs2Var);
        ty0.a(vq0Var, str, fs2Var, new nl3() { // from class: p8a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return sy0.a(iLongValue, vq0Var, str, objC, (JSONArray) obj);
            }
        });
    }

    public static final JSONArray a(int i, vq0 vq0Var, String str, Object obj, JSONArray jSONArray) {
        int length = jSONArray.length();
        if (i >= 0 && i < length) {
            return ty0.a(jSONArray, new defpackage.x2(i, obj));
        }
        o01.a(vq0Var, new IndexOutOfBoundsException(defpackage.l2.e(defpackage.ng.e(i, "Index out of bound (", ") for mutation ", str, " ("), ")", length)));
        return jSONArray;
    }

    public static final j59 a(int i, Object obj, List list) {
        list.set(i, obj);
        return j59.a;
    }
}
