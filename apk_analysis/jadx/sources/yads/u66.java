package yads;

import android.net.Uri;
import defpackage.nl3;
import defpackage.ta8;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u66 {
    public final gp4 a = new gp4();

    public abstract String a();

    public final void a(Object obj) {
        try {
            if (this instanceof s66) {
                obj.getClass();
                ((s66) this).d((String) obj);
                return;
            }
            if (this instanceof r66) {
                obj.getClass();
                ((r66) this).b(((Number) obj).longValue());
                return;
            }
            if (this instanceof n66) {
                obj.getClass();
                ((n66) this).b(((Boolean) obj).booleanValue());
                return;
            }
            if (this instanceof q66) {
                obj.getClass();
                ((q66) this).b(((Number) obj).doubleValue());
                return;
            }
            if (this instanceof o66) {
                obj.getClass();
                ((o66) this).b(((l20) obj).a());
                return;
            }
            if (this instanceof t66) {
                obj.getClass();
                ((t66) this).b((Uri) obj);
            } else if (this instanceof p66) {
                obj.getClass();
                ((p66) this).b((JSONObject) obj);
            } else {
                if (!(this instanceof m66)) {
                    throw new NoWhenBranchMatchedException();
                }
                obj.getClass();
                ((m66) this).b((JSONArray) obj);
            }
        } catch (ClassCastException unused) {
            throw new k76("Unable to set value with type " + obj.getClass() + " to " + this, null, 2);
        }
    }

    public final void b(u66 u66Var) {
        if ((this instanceof s66) && (u66Var instanceof s66)) {
            ((s66) this).d(((s66) u66Var).c());
            return;
        }
        if ((this instanceof r66) && (u66Var instanceof r66)) {
            ((r66) this).b(((r66) u66Var).c());
            return;
        }
        if ((this instanceof n66) && (u66Var instanceof n66)) {
            ((n66) this).b(((n66) u66Var).c());
            return;
        }
        if ((this instanceof q66) && (u66Var instanceof q66)) {
            ((q66) this).b(((q66) u66Var).c());
            return;
        }
        if ((this instanceof o66) && (u66Var instanceof o66)) {
            ((o66) this).b(((o66) u66Var).c());
            return;
        }
        if ((this instanceof t66) && (u66Var instanceof t66)) {
            ((t66) this).b(((t66) u66Var).c());
            return;
        }
        if ((this instanceof p66) && (u66Var instanceof p66)) {
            ((p66) this).b(((p66) u66Var).c());
            return;
        }
        if ((this instanceof m66) && (u66Var instanceof m66)) {
            ((m66) this).b(((m66) u66Var).c());
            return;
        }
        throw new k76("Setting value to " + this + " from " + u66Var + " not supported!", null, 2);
    }

    public final void c(String str) {
        if (this instanceof s66) {
            ((s66) this).d(str);
            return;
        }
        if (this instanceof r66) {
            try {
                ((r66) this).b(Long.parseLong(str));
                return;
            } catch (NumberFormatException e) {
                throw new k76(null, e, 1);
            }
        }
        if (this instanceof n66) {
            ((n66) this).b(a(str));
            return;
        }
        if (this instanceof q66) {
            try {
                ((q66) this).b(Double.parseDouble(str));
                return;
            } catch (NumberFormatException e2) {
                throw new k76(null, e2, 1);
            }
        }
        if (this instanceof o66) {
            ((o66) this).b(b(str));
            return;
        }
        if (this instanceof t66) {
            try {
                ((t66) this).b(Uri.parse(str));
            } catch (IllegalArgumentException e3) {
                throw new k76(null, e3, 1);
            }
        } else if (this instanceof p66) {
            try {
                ((p66) this).b(new JSONObject(str));
            } catch (JSONException e4) {
                throw new k76(null, e4, 1);
            }
        } else {
            if (!(this instanceof m66)) {
                defpackage.me0.e();
                return;
            }
            try {
                ((m66) this).b(new JSONArray(str));
            } catch (JSONException e5) {
                throw new k76(null, e5, 1);
            }
        }
    }

    public final void a(u66 u66Var) {
        Iterator it = this.a.iterator();
        while (true) {
            fp4 fp4Var = (fp4) it;
            if (!fp4Var.hasNext()) {
                return;
            } else {
                ((nl3) fp4Var.next()).invoke(u66Var);
            }
        }
    }

    public static boolean a(String str) {
        Boolean boolE0 = ta8.e0(str);
        if (boolE0 == null) {
            try {
                Boolean boolA = d70.a(Integer.parseInt(str));
                if (boolA == null) {
                    throw new k76(defpackage.me0.c("Unable to convert ", str, " to boolean"), null, 2);
                }
                boolE0 = boolA;
            } catch (NumberFormatException e) {
                throw new k76(null, e, 1);
            }
        }
        return boolE0.booleanValue();
    }

    public final Object b() {
        if (this instanceof s66) {
            return ((s66) this).c;
        }
        if (this instanceof r66) {
            return Long.valueOf(((r66) this).c);
        }
        if (this instanceof n66) {
            return Boolean.valueOf(((n66) this).c);
        }
        if (this instanceof q66) {
            return Double.valueOf(((q66) this).c);
        }
        if (this instanceof o66) {
            return new l20(((o66) this).c);
        }
        if (this instanceof t66) {
            return ((t66) this).c;
        }
        if (this instanceof p66) {
            return ((p66) this).c;
        }
        if (this instanceof m66) {
            return ((m66) this).c;
        }
        defpackage.me0.e();
        return null;
    }

    public static int b(String str) {
        Integer num = (Integer) bt4.a.invoke(str);
        if (num != null) {
            return l20.b(num.intValue());
        }
        throw new k76(defpackage.me0.c("Wrong value format for color variable: '", str, "'"), null, 2);
    }
}
