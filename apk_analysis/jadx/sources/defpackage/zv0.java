package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class zv0 {

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final b a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("url")
    private final String c;

    @bq7("eventName")
    private final String d;

    @bq7("alert")
    private final a e;

    public static final class a {

        @bq7("imageUrl")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("mainButton")
        private final C0375a c;

        @bq7("secondaryButton")
        private final C0375a d;

        /* JADX INFO: renamed from: zv0$a$a, reason: collision with other inner class name */
        public static final class C0375a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            @bq7("eventName")
            private final String c;

            public C0375a(String str, String str2, String str3) {
                str.getClass();
                this.a = str;
                this.b = str2;
                this.c = str3;
            }

            public final String a() {
                return this.c;
            }

            public final String b() {
                return this.a;
            }

            public final String c() {
                return this.b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0375a)) {
                    return false;
                }
                C0375a c0375a = (C0375a) obj;
                return aa4.e(this.a, c0375a.a) && aa4.e(this.b, c0375a.b) && aa4.e(this.c, c0375a.c);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.c;
                return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return me0.d(ad2.d("ButtonResponse(title=", str, ", url=", str2, ", eventName="), this.c, ")");
            }
        }

        public a(String str, String str2, C0375a c0375a, C0375a c0375a2) {
            str.getClass();
            str2.getClass();
            c0375a.getClass();
            c0375a2.getClass();
            this.a = str;
            this.b = str2;
            this.c = c0375a;
            this.d = c0375a2;
        }

        public final String a() {
            return this.a;
        }

        public final C0375a b() {
            return this.c;
        }

        public final C0375a c() {
            return this.d;
        }

        public final String d() {
            return this.b;
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
            return this.d.hashCode() + ((this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            C0375a c0375a = this.c;
            C0375a c0375a2 = this.d;
            StringBuilder sbD = ad2.d("AlertResponse(imageUrl=", str, ", title=", str2, ", mainButton=");
            sbD.append(c0375a);
            sbD.append(", secondaryButton=");
            sbD.append(c0375a2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public enum b {
        URL,
        REFERRAL,
        NEXT,
        ALERT
    }

    public zv0(b bVar, String str, String str2, String str3, a aVar) {
        str.getClass();
        this.a = bVar;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = aVar;
    }

    public final a a() {
        return this.e;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final b d() {
        return this.a;
    }

    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zv0)) {
            return false;
        }
        zv0 zv0Var = (zv0) obj;
        return this.a == zv0Var.a && aa4.e(this.b, zv0Var.b) && aa4.e(this.c, zv0Var.c) && aa4.e(this.d, zv0Var.d) && aa4.e(this.e, zv0Var.e);
    }

    public final int hashCode() {
        b bVar = this.a;
        int iB = zg.b((bVar == null ? 0 : bVar.hashCode()) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        a aVar = this.e;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        b bVar = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        a aVar = this.e;
        StringBuilder sb = new StringBuilder("ButtonResponse(type=");
        sb.append(bVar);
        sb.append(", title=");
        sb.append(str);
        sb.append(", url=");
        kv2.c(sb, str2, ", eventName=", str3, ", alert=");
        sb.append(aVar);
        sb.append(")");
        return sb.toString();
    }
}
