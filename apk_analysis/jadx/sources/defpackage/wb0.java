package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class wb0 {

    @bq7("banks")
    private final List<t90> a;

    @bq7("rules")
    private final a b;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("terms")
        private final List<String> b;

        @bq7("description")
        private final String c;

        @bq7("markdownDescription")
        private final String d;

        public a(String str, List<String> list, String str2, String str3) {
            str.getClass();
            list.getClass();
            str2.getClass();
            this.a = str;
            this.b = list;
            this.c = str2;
            this.d = str3;
        }

        public final String a() {
            return this.d;
        }

        public final String b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(e2.b(this.b, this.a.hashCode() * 31, 31), 31, this.c);
            String str = this.d;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String str = this.a;
            List<String> list = this.b;
            String str2 = this.c;
            String str3 = this.d;
            StringBuilder sb = new StringBuilder("Rules(title=");
            sb.append(str);
            sb.append(", terms=");
            sb.append(list);
            sb.append(", description=");
            return dg.c(sb, str2, ", markdownDescription=", str3, ")");
        }
    }

    public wb0(List<t90> list, a aVar) {
        list.getClass();
        aVar.getClass();
        this.a = list;
        this.b = aVar;
    }

    public final List<t90> a() {
        return this.a;
    }

    public final a b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wb0)) {
            return false;
        }
        wb0 wb0Var = (wb0) obj;
        return aa4.e(this.a, wb0Var.a) && aa4.e(this.b, wb0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BanksInfo(banks=" + this.a + ", rules=" + this.b + ")";
    }
}
