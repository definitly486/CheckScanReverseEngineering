package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class e10 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("mainButton")
    private final a c;

    @bq7("secondButton")
    private final a d;

    @bq7("warning")
    private final c e;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        @bq7(NotificationCompat.CATEGORY_EVENT)
        private final b c;

        public a(String str, String str2, b bVar) {
            str.getClass();
            this.a = str;
            this.b = str2;
            this.c = bVar;
        }

        public final b a() {
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
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            b bVar = this.c;
            return iHashCode2 + (bVar != null ? bVar.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            b bVar = this.c;
            StringBuilder sbD = ad2.d("ButtonResponse(text=", str, ", url=", str2, ", event=");
            sbD.append(bVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class b {

        @bq7("path")
        private final String a;

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final u37 b;

        @bq7("request")
        private final String c;

        @bq7("refresh")
        private final boolean d;

        public b(String str, u37 u37Var, String str2, boolean z) {
            str.getClass();
            u37Var.getClass();
            this.a = str;
            this.b = u37Var;
            this.c = str2;
            this.d = z;
        }

        public final String a() {
            return this.a;
        }

        public final boolean b() {
            return this.d;
        }

        public final String c() {
            return this.c;
        }

        public final u37 d() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b && aa4.e(this.c, bVar.c) && this.d == bVar.d;
        }

        public final int hashCode() {
            int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
            String str = this.c;
            return Boolean.hashCode(this.d) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            return "EventResponse(path=" + this.a + ", type=" + this.b + ", request=" + this.c + ", refresh=" + this.d + ")";
        }
    }

    public static final class c {

        @bq7("text")
        private final String a;

        public c(String str) {
            str.getClass();
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && aa4.e(this.a, ((c) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("WarningResponse(text=", this.a, ")");
        }
    }

    public e10(String str, String str2, a aVar, a aVar2, c cVar) {
        this.a = str;
        this.b = str2;
        this.c = aVar;
        this.d = aVar2;
        this.e = cVar;
    }

    public final a a() {
        return this.c;
    }

    public final a b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final c e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e10)) {
            return false;
        }
        e10 e10Var = (e10) obj;
        return aa4.e(this.a, e10Var.a) && aa4.e(this.b, e10Var.b) && aa4.e(this.c, e10Var.c) && aa4.e(this.d, e10Var.d) && aa4.e(this.e, e10Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        a aVar = this.c;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        a aVar2 = this.d;
        int iHashCode4 = (iHashCode3 + (aVar2 == null ? 0 : aVar2.hashCode())) * 31;
        c cVar = this.e;
        return iHashCode4 + (cVar != null ? cVar.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        a aVar = this.c;
        a aVar2 = this.d;
        c cVar = this.e;
        StringBuilder sbD = ad2.d("BalanceBlockBankVerificationResponse(title=", str, ", text=", str2, ", mainButton=");
        sbD.append(aVar);
        sbD.append(", secondButton=");
        sbD.append(aVar2);
        sbD.append(", warning=");
        sbD.append(cVar);
        sbD.append(")");
        return sbD.toString();
    }
}
