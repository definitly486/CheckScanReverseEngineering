package defpackage;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class yz8 {

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final String a;

    @bq7("dateTime")
    private final String b;

    @bq7("valueText")
    private final String c;

    @bq7("titleValueText")
    private final String d;

    @bq7(TJAdUnitConstants.String.MESSAGE)
    private final String e;

    @bq7("bottomSheet")
    private final a f;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final C0369a c;

        @bq7("secondButton")
        private final C0369a d;

        @bq7("logoUrl")
        private final String e;

        /* JADX INFO: renamed from: yz8$a$a, reason: collision with other inner class name */
        public static final class C0369a {

            @bq7("text")
            private final String a;

            @bq7("url")
            private final String b;

            public C0369a(String str, String str2) {
                str.getClass();
                this.a = str;
                this.b = str2;
            }

            public final xz8.a.C0360a a() {
                return new xz8.a.C0360a(this.a, this.b);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0369a)) {
                    return false;
                }
                C0369a c0369a = (C0369a) obj;
                return aa4.e(this.a, c0369a.a) && aa4.e(this.b, c0369a.b);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return n2.d("ButtonResponse(text=", this.a, ", url=", this.b, ")");
            }
        }

        public a(String str, String str2, C0369a c0369a, C0369a c0369a2, String str3) {
            str.getClass();
            str2.getClass();
            c0369a.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = c0369a;
            this.d = c0369a2;
            this.e = str3;
        }

        public final xz8.a a() {
            String str = this.e;
            String str2 = this.a;
            String str3 = this.b;
            xz8.a.C0360a c0360aA = this.c.a();
            C0369a c0369a = this.d;
            return new xz8.a(str, str2, str3, c0360aA, c0369a != null ? c0369a.a() : null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e);
        }

        public final int hashCode() {
            int iHashCode = (this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31;
            C0369a c0369a = this.d;
            return this.e.hashCode() + ((iHashCode + (c0369a == null ? 0 : c0369a.hashCode())) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            C0369a c0369a = this.c;
            C0369a c0369a2 = this.d;
            String str3 = this.e;
            StringBuilder sbD = ad2.d("BottomSheetResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(c0369a);
            sbD.append(", secondButton=");
            sbD.append(c0369a2);
            sbD.append(", logoUrl=");
            return me0.d(sbD, str3, ")");
        }
    }

    public yz8(String str, String str2, String str3, String str4, String str5, a aVar) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = aVar;
    }

    public final xz8 a() {
        xz8.b bVar = aa4.e(this.a, "SUCCESS") ? xz8.b.Success : xz8.b.Fail;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        a aVar = this.f;
        return new xz8(bVar, str, str2, str3, str4, aVar != null ? aVar.a() : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yz8)) {
            return false;
        }
        yz8 yz8Var = (yz8) obj;
        return aa4.e(this.a, yz8Var.a) && aa4.e(this.b, yz8Var.b) && aa4.e(this.c, yz8Var.c) && aa4.e(this.d, yz8Var.d) && aa4.e(this.e, yz8Var.e) && aa4.e(this.f, yz8Var.f);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        a aVar = this.f;
        return iHashCode + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        a aVar = this.f;
        StringBuilder sbD = ad2.d("TransferPhoneResultResponse(status=", str, ", dateTime=", str2, ", valueText=");
        kv2.c(sbD, str3, ", titleValueText=", str4, ", message=");
        sbD.append(str5);
        sbD.append(", bottomSheet=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
