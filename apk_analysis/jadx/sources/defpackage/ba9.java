package defpackage;

import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class ba9 {

    @bq7("userId")
    private final long a;

    @bq7("cashbackBalance")
    private final long b;

    @bq7("inviteCode")
    private final String c;

    @bq7("avatarUrl")
    private final String d;

    @bq7("birthdate")
    private final String e;

    @bq7("fullName")
    private final String f;

    @bq7(HintConstants.AUTOFILL_HINT_GENDER)
    private final String g;

    @bq7("deeplinks")
    private final a h;

    @bq7("email")
    private final String i;

    @bq7("userCity")
    private final d j;

    @bq7("isElectroReceiptRegistered")
    private final boolean k;

    @bq7("phone")
    private final String l;

    @bq7("referralLink")
    private final String m;

    @bq7("isInvited")
    private final Boolean n;

    @bq7("registrationDate")
    private final String o;

    @bq7("hadWithdrawOperations")
    private final Boolean p;

    @bq7("tasksAvailable")
    private final Boolean q;

    @bq7("scanButtonLogoUrl")
    private final String r;

    @bq7("profileFormBlock")
    private final c s;

    @bq7("promocodeBlock")
    private final zp6 t;

    @bq7("faqUrl")
    private final String u;

    @bq7("privacyPolicy")
    private final b v;

    public static final class a {

        @bq7("favoriteBonuses")
        private final String a;

        @bq7("shownBonuses")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Deeplinks(favoriteBonuses=", this.a, ", shownBonuses=", this.b, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        public b(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("PrivacyPolicyBlockResponse(title=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class c {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("logoUrl")
        private final String b;

        @bq7("url")
        private final String c;

        @bq7("badgeUrl")
        private final String d;

        public c(String str, String str2, String str3, String str4) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
            String str = this.d;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return dg.c(ad2.d("ProfileFormBlockResponse(title=", str, ", logoUrl=", str2, ", url="), this.c, ", badgeUrl=", this.d, ")");
        }
    }

    public static final class d {

        @bq7("name")
        private final String a;

        @bq7(TtmlNode.ATTR_ID)
        private final int b;

        public d(String str, int i) {
            str.getClass();
            this.a = str;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && this.b == dVar.b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return hg.d(this.b, "UserCity(name=", this.a, ", id=", ")");
        }
    }

    public ba9(long j, long j2, String str, String str2, String str3, String str4, String str5, a aVar, String str6, d dVar, boolean z, String str7, String str8, Boolean bool, String str9, Boolean bool2, Boolean bool3, String str10, c cVar, zp6 zp6Var, String str11, b bVar) {
        str.getClass();
        aVar.getClass();
        dVar.getClass();
        this.a = j;
        this.b = j2;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = aVar;
        this.i = str6;
        this.j = dVar;
        this.k = z;
        this.l = str7;
        this.m = str8;
        this.n = bool;
        this.o = str9;
        this.p = bool2;
        this.q = bool3;
        this.r = str10;
        this.s = cVar;
        this.t = zp6Var;
        this.u = str11;
        this.v = bVar;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.e;
    }

    public final long c() {
        return this.b;
    }

    public final a d() {
        return this.h;
    }

    public final String e() {
        return this.i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ba9)) {
            return false;
        }
        ba9 ba9Var = (ba9) obj;
        return this.a == ba9Var.a && this.b == ba9Var.b && aa4.e(this.c, ba9Var.c) && aa4.e(this.d, ba9Var.d) && aa4.e(this.e, ba9Var.e) && aa4.e(this.f, ba9Var.f) && aa4.e(this.g, ba9Var.g) && aa4.e(this.h, ba9Var.h) && aa4.e(this.i, ba9Var.i) && aa4.e(this.j, ba9Var.j) && this.k == ba9Var.k && aa4.e(this.l, ba9Var.l) && aa4.e(this.m, ba9Var.m) && aa4.e(this.n, ba9Var.n) && aa4.e(this.o, ba9Var.o) && aa4.e(this.p, ba9Var.p) && aa4.e(this.q, ba9Var.q) && aa4.e(this.r, ba9Var.r) && aa4.e(this.s, ba9Var.s) && aa4.e(this.t, ba9Var.t) && aa4.e(this.u, ba9Var.u) && aa4.e(this.v, ba9Var.v);
    }

    public final String f() {
        return this.g;
    }

    public final String g() {
        return this.u;
    }

    public final String h() {
        return this.f;
    }

    public final int hashCode() {
        int iB = zg.b(vg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.g;
        int iHashCode4 = (this.h.hashCode() + ((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31;
        String str5 = this.i;
        int iC = tg.c((this.j.hashCode() + ((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31)) * 31, 31, this.k);
        String str6 = this.l;
        int iHashCode5 = (iC + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode6 = (iHashCode5 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool = this.n;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str8 = this.o;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool2 = this.p;
        int iHashCode9 = (iHashCode8 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.q;
        int iHashCode10 = (iHashCode9 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str9 = this.r;
        int iHashCode11 = (iHashCode10 + (str9 == null ? 0 : str9.hashCode())) * 31;
        c cVar = this.s;
        int iHashCode12 = (iHashCode11 + (cVar == null ? 0 : cVar.hashCode())) * 31;
        zp6 zp6Var = this.t;
        int iHashCode13 = (iHashCode12 + (zp6Var == null ? 0 : zp6Var.hashCode())) * 31;
        String str10 = this.u;
        int iHashCode14 = (iHashCode13 + (str10 == null ? 0 : str10.hashCode())) * 31;
        b bVar = this.v;
        return iHashCode14 + (bVar != null ? bVar.hashCode() : 0);
    }

    public final String i() {
        return this.c;
    }

    public final String j() {
        return this.l;
    }

    public final c k() {
        return this.s;
    }

    public final zp6 l() {
        return this.t;
    }

    public final String m() {
        return this.m;
    }

    public final Boolean n() {
        return this.q;
    }

    public final long o() {
        return this.a;
    }

    public final boolean p() {
        return this.k;
    }

    public final String toString() {
        long j = this.a;
        long j2 = this.b;
        String str = this.c;
        String str2 = this.d;
        String str3 = this.e;
        String str4 = this.f;
        String str5 = this.g;
        a aVar = this.h;
        String str6 = this.i;
        d dVar = this.j;
        boolean z = this.k;
        String str7 = this.l;
        String str8 = this.m;
        Boolean bool = this.n;
        String str9 = this.o;
        Boolean bool2 = this.p;
        Boolean bool3 = this.q;
        String str10 = this.r;
        c cVar = this.s;
        zp6 zp6Var = this.t;
        String str11 = this.u;
        b bVar = this.v;
        StringBuilder sbF = xp.f(j, "UserProfileInfoResponse(userId=", ", cashBackBalance=");
        sbF.append(j2);
        sbF.append(", inviteCode=");
        sbF.append(str);
        kv2.c(sbF, ", avatarUrl=", str2, ", birthDate=", str3);
        kv2.c(sbF, ", fullName=", str4, ", fGender=", str5);
        sbF.append(", deepLinks=");
        sbF.append(aVar);
        sbF.append(", email=");
        sbF.append(str6);
        sbF.append(", userCity=");
        sbF.append(dVar);
        sbF.append(", isElectroReceiptRegistered=");
        sbF.append(z);
        kv2.c(sbF, ", phone=", str7, ", referralLink=", str8);
        sbF.append(", isInvited=");
        sbF.append(bool);
        sbF.append(", registrationDate=");
        sbF.append(str9);
        sbF.append(", hadWithdrawOperations=");
        sbF.append(bool2);
        sbF.append(", tasksAvailable=");
        sbF.append(bool3);
        sbF.append(", scanButtonLogoUrl=");
        sbF.append(str10);
        sbF.append(", profileFormBlock=");
        sbF.append(cVar);
        sbF.append(", promocodeBlock=");
        sbF.append(zp6Var);
        sbF.append(", faqUrl=");
        sbF.append(str11);
        sbF.append(", privacyPolicy=");
        sbF.append(bVar);
        sbF.append(")");
        return sbF.toString();
    }

    public /* synthetic */ ba9(long j, long j2, String str, String str2, String str3, String str4, String str5, a aVar, String str6, d dVar, boolean z, String str7, String str8, Boolean bool, String str9, Boolean bool2, Boolean bool3, String str10, c cVar, zp6 zp6Var, String str11, b bVar, int i, jh2 jh2Var) {
        this(j, j2, str, str2, str3, str4, str5, aVar, str6, dVar, z, str7, str8, (i & 8192) != 0 ? Boolean.FALSE : bool, (i & 16384) != 0 ? new String() : str9, bool2, bool3, str10, cVar, zp6Var, str11, bVar);
    }
}
