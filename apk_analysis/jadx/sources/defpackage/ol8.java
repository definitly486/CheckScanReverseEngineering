package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ol8 {

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean a;

    @bq7("reward")
    private final b b;

    public static final class a {

        @bq7("text")
        private final String a;

        public a(String str) {
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
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("MainButtonResponse(text=", this.a, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("subtitle")
        private final String b;

        @bq7("imageUrl")
        private final String c;

        @bq7("badgeUrls")
        private final List<String> d;

        @bq7("mainButton")
        private final a e;

        public b(String str, String str2, String str3, List<String> list, a aVar) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            aVar.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = list;
            this.e = aVar;
        }

        public final List<String> a() {
            return this.d;
        }

        public final String b() {
            return this.c;
        }

        public final a c() {
            return this.e;
        }

        public final String d() {
            return this.b;
        }

        public final String e() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
            List<String> list = this.d;
            return this.e.hashCode() + ((iB + (list == null ? 0 : list.hashCode())) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            List<String> list = this.d;
            a aVar = this.e;
            StringBuilder sbD = ad2.d("RewardResponse(title=", str, ", subtitle=", str2, ", imageUrl=");
            sbD.append(str3);
            sbD.append(", badgeUrls=");
            sbD.append(list);
            sbD.append(", mainButton=");
            sbD.append(aVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public ol8(boolean z, b bVar) {
        this.a = z;
        this.b = bVar;
    }

    public final b a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ol8)) {
            return false;
        }
        ol8 ol8Var = (ol8) obj;
        return this.a == ol8Var.a && aa4.e(this.b, ol8Var.b);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        b bVar = this.b;
        return iHashCode + (bVar == null ? 0 : bVar.hashCode());
    }

    public final String toString() {
        return "TaskAdWatchResponse(success=" + this.a + ", reward=" + this.b + ")";
    }
}
