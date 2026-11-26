package defpackage;

import android.graphics.Color;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;

/* JADX INFO: loaded from: classes5.dex */
public final class sc8 {

    @bq7("customBadge")
    private final a a;

    @bq7("avatarUrl")
    private final String b;

    public static final class a {

        @bq7("startGradientColor")
        private final String a;

        @bq7("endGradientColor")
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("textColor")
        private final String d;

        @bq7("strokeColor")
        private final String e;

        @bq7("isStrikethrough")
        private final boolean f;

        @bq7("isWarning")
        private final boolean g;

        @bq7("warningIconUrl")
        private final String h;

        public a(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, String str6) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = z;
            this.g = z2;
            this.h = str6;
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final String c() {
            return this.e;
        }

        public final String d() {
            return this.c;
        }

        public final String e() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && this.f == aVar.f && this.g == aVar.g && aa4.e(this.h, aVar.h);
        }

        public final String f() {
            return this.h;
        }

        public final boolean g() {
            return this.f;
        }

        public final boolean h() {
            return this.g;
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
            String str = this.e;
            int iC = tg.c(tg.c((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f), 31, this.g);
            String str2 = this.h;
            return iC + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            String str5 = this.e;
            boolean z = this.f;
            boolean z2 = this.g;
            String str6 = this.h;
            StringBuilder sbD = ad2.d("BadgeResponse(startGradientColor=", str, ", endGradientColor=", str2, ", text=");
            kv2.c(sbD, str3, ", textColor=", str4, ", strokeColor=");
            ud.f(sbD, str5, ", isStrikethrough=", z, ", isWarning=");
            sbD.append(z2);
            sbD.append(", warningIconUrl=");
            sbD.append(str6);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public sc8(a aVar, String str) {
        this.a = aVar;
        this.b = str;
    }

    public final ProfileBadgeView.b a(String str) {
        str.getClass();
        a aVar = this.a;
        if (aVar != null && aVar.h() && this.a.f() != null) {
            return new ProfileBadgeView.b.C0175b(this.a.f(), this.b, Color.parseColor(this.a.b()), Color.parseColor(this.a.a()));
        }
        a aVar2 = this.a;
        String str2 = this.b;
        if (aVar2 == null) {
            if (str2 != null) {
                str = str2;
            }
            return new ProfileBadgeView.b.d(str);
        }
        String strD = aVar2.d();
        int color = Color.parseColor(this.a.e());
        int color2 = Color.parseColor(this.a.b());
        int color3 = Color.parseColor(this.a.a());
        String strC = this.a.c();
        return new ProfileBadgeView.b.e(str2, strD, color, color2, color3, strC != null ? Integer.valueOf(Color.parseColor(strC)) : null, this.a.g());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sc8)) {
            return false;
        }
        sc8 sc8Var = (sc8) obj;
        return aa4.e(this.a, sc8Var.a) && aa4.e(this.b, sc8Var.b);
    }

    public final int hashCode() {
        a aVar = this.a;
        int iHashCode = (aVar == null ? 0 : aVar.hashCode()) * 31;
        String str = this.b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "SubscriptionProfileBadgeResponse(customBadge=" + this.a + ", avatarUrl=" + this.b + ")";
    }
}
