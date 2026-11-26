package defpackage;

import android.app.Application;
import android.graphics.drawable.Drawable;
import com.google.gson.Gson;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class b68 {
    public final jf6 a;
    public final rp0 b;
    public final Application c;

    public static final class a {
        public final Drawable a;

        public a(Drawable drawable) {
            this.a = drawable;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            Drawable drawable = this.a;
            if (drawable == null) {
                return 0;
            }
            return drawable.hashCode();
        }

        public final String toString() {
            return "OptionalDrawable(drawable=" + this.a + ")";
        }
    }

    public static final class b {

        @bq7("lastShownId")
        private final Integer a;

        public b(Integer num) {
            this.a = num;
        }

        public final Integer a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && aa4.e(this.a, ((b) obj).a);
        }

        public final int hashCode() {
            Integer num = this.a;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        public final String toString() {
            return "SplashShowCalendar(lastShownId=" + this.a + ")";
        }
    }

    public static final class c extends x39<List<? extends hc0.c>> {
    }

    public static final class d extends x39<b> {
    }

    public b68(jf6 jf6Var, rp0 rp0Var, Application application) {
        this.a = jf6Var;
        this.b = rp0Var;
        this.c = application;
    }

    public final hc0.c a() {
        Object aVar;
        jf6 jf6Var = this.a;
        try {
            String strT = jf6Var.t();
            Gson gsonC = ht3.c();
            Type type = new c().b;
            gsonC.getClass();
            List list = (List) gsonC.f(strT, new x39(type));
            if (list.isEmpty()) {
                aVar = null;
            } else {
                String strW = jf6Var.W();
                Gson gsonC2 = ht3.c();
                Type type2 = new d().b;
                type2.getClass();
                b bVar = (b) ht3.a(gsonC2, strW, type2);
                Integer numA = bVar != null ? bVar.a() : null;
                Iterator it = list.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    int i2 = ((hc0.c) it.next()).a;
                    if (numA != null && i2 == numA.intValue()) {
                        break;
                    }
                    i++;
                }
                hc0.c cVar = (hc0.c) list.get((i + 1) % list.size());
                jf6Var.g(ht3.c().j(new b(Integer.valueOf(cVar.a))));
                aVar = cVar;
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (hc0.c) (aVar instanceof k57.a ? null : aVar);
    }

    public final nq1 b() {
        int iO0 = this.a.O0();
        mz7 mz7VarB = this.b.b(fc0.SPLASH, iO0, null);
        wq wqVar = new wq(new f68(this), 4);
        mz7VarB.getClass();
        return new nq1(new h08(mz7VarB, wqVar));
    }
}
