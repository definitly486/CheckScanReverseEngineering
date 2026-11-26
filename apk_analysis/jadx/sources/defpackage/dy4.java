package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dy4 implements zh6 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7("levels")
        private final List<C0182a> a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("totalAmountSpent")
        private final int c;

        @bq7("progressMessage")
        private final String d;

        @bq7("maxParticipationsReached")
        private final boolean e;

        /* JADX INFO: renamed from: dy4$a$a, reason: collision with other inner class name */
        public static final class C0182a {

            @bq7("rewardAmount")
            private final int a;

            @bq7("totalAmountSpent")
            private final int b;

            public C0182a(int i, int i2) {
                this.a = i;
                this.b = i2;
            }

            public final int a() {
                return this.a;
            }

            public final int b() {
                return this.b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0182a)) {
                    return false;
                }
                C0182a c0182a = (C0182a) obj;
                return this.a == c0182a.a && this.b == c0182a.b;
            }

            public final int hashCode() {
                return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
            }

            public final String toString() {
                return ln.c(this.a, this.b, "Level(rewardAmount=", ", totalAmountSpent=", ")");
            }
        }

        public a(List<C0182a> list, String str, int i, String str2, boolean z) {
            list.getClass();
            str.getClass();
            this.a = list;
            this.b = str;
            this.c = i;
            this.d = str2;
            this.e = z;
        }

        public final List<C0182a> a() {
            return this.a;
        }

        public final String b() {
            return this.d;
        }

        public final String c() {
            return this.b;
        }

        public final int d() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && this.c == aVar.c && aa4.e(this.d, aVar.d) && this.e == aVar.e;
        }

        public final int hashCode() {
            int iB = ej0.b(this.c, zg.b(this.a.hashCode() * 31, 31, this.b), 31);
            String str = this.d;
            return Boolean.hashCode(this.e) + ((iB + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            List<C0182a> list = this.a;
            String str = this.b;
            int i = this.c;
            String str2 = this.d;
            boolean z = this.e;
            StringBuilder sb = new StringBuilder("Content(levels=");
            sb.append(list);
            sb.append(", title=");
            sb.append(str);
            sb.append(", totalAmountSpent=");
            sb.append(i);
            sb.append(", progressMessage=");
            sb.append(str2);
            sb.append(", maxParticipationsReached=");
            return dh.e(sb, z, ")");
        }
    }

    public dy4(a aVar) {
        aVar.getClass();
        this.a = aVar;
        zh6.a aVar2 = zh6.a.OfferHeader;
    }

    public final a a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dy4) && aa4.e(this.a, ((dy4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "LoyaltyProgramResponse(content=" + this.a + ")";
    }
}
