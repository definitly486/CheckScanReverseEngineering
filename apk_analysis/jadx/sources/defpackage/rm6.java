package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class rm6 {

    @bq7("personal")
    private final l a;

    @bq7("email")
    private final h b;

    @bq7("pro")
    private final n c;

    @bq7("invite")
    private final k d;

    @bq7("footer")
    private final j e;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("titleColor")
        private final String b;

        @bq7("url")
        private final String c;

        public a(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("ActionButton(title=", str, ", titleColor=", str2, ", url="), this.c, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("rightText")
        private final String b;

        @bq7("iconUrl")
        private final String c;

        @bq7("backgroundColor")
        private final String d;

        @bq7("additionalInfo")
        private final c e;

        public b(String str, String str2, String str3, String str4, c cVar) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = cVar;
        }

        public final c a() {
            return this.e;
        }

        public final String b() {
            return this.d;
        }

        public final String c() {
            return this.c;
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
            int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
            c cVar = this.e;
            return iB + (cVar == null ? 0 : cVar.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            c cVar = this.e;
            StringBuilder sbD = ad2.d("ActiveBanner(title=", str, ", rightText=", str2, ", iconUrl=");
            kv2.c(sbD, str3, ", backgroundColor=", str4, ", additionalInfo=");
            sbD.append(cVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class c {

        @bq7("leftText")
        private final String a;

        @bq7("iconUrl")
        private final String b;

        @bq7("rightText")
        private final String c;

        public c(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final String c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("AdditionalInfo(leftText=", str, ", iconUrl=", str2, ", rightText="), this.c, ")");
        }
    }

    public static final class d {

        @bq7("avatarUrl")
        private final String a;

        public d(String str) {
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
            return (obj instanceof d) && aa4.e(this.a, ((d) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("Avatar(avatarUrl=", this.a, ")");
        }
    }

    public static final class e {

        @bq7("text")
        private final String a;

        @bq7("textColor")
        private final String b;

        @bq7("backgroundColor")
        private final String c;

        public e(String str, String str2, String str3) {
            x7.b(str, str2, str3);
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
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b) && aa4.e(this.c, eVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("BonusBadge(text=", str, ", textColor=", str2, ", backgroundColor="), this.c, ")");
        }
    }

    public static final class f {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        public f(String str) {
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
            return (obj instanceof f) && aa4.e(this.a, ((f) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("ButtonItem(title=", this.a, ")");
        }
    }

    public static final class g {

        @bq7("url")
        private final String a;

        @bq7("color")
        private final String b;

        @bq7("bonusBadge")
        private final e c;

        public g(String str, String str2, e eVar) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = eVar;
        }

        public final e a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return aa4.e(this.a, gVar.a) && aa4.e(this.b, gVar.b) && aa4.e(this.c, gVar.c);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            e eVar = this.c;
            return iB + (eVar == null ? 0 : eVar.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            e eVar = this.c;
            StringBuilder sbD = ad2.d("Edit(url=", str, ", color=", str2, ", bonusBadge=");
            sbD.append(eVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class h {

        @bq7("iconUrl")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("description")
        private final String c;

        @bq7("backgroundColor")
        private final String d;

        @bq7("url")
        private final String e;

        public h(String str, String str2, String str3, String str4, String str5) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            str5.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
        }

        public final String a() {
            return this.d;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.b;
        }

        public final String e() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return aa4.e(this.a, hVar.a) && aa4.e(this.b, hVar.b) && aa4.e(this.c, hVar.c) && aa4.e(this.d, hVar.d) && aa4.e(this.e, hVar.e);
        }

        public final int hashCode() {
            return this.e.hashCode() + zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            String str5 = this.e;
            StringBuilder sbD = ad2.d("EmailBanner(iconUrl=", str, ", title=", str2, ", description=");
            kv2.c(sbD, str3, ", backgroundColor=", str4, ", url=");
            return me0.d(sbD, str5, ")");
        }
    }

    public static final class i {

        @bq7("iconUrl")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("backgroundColor")
        private final String d;

        @bq7("actionButton")
        private final a e;

        public i(String str, String str2, String str3, String str4, a aVar) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = aVar;
        }

        public final a a() {
            return this.e;
        }

        public final String b() {
            return this.d;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.c;
        }

        public final String e() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return aa4.e(this.a, iVar.a) && aa4.e(this.b, iVar.b) && aa4.e(this.c, iVar.c) && aa4.e(this.d, iVar.d) && aa4.e(this.e, iVar.e);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
            a aVar = this.e;
            return iB + (aVar == null ? 0 : aVar.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            a aVar = this.e;
            StringBuilder sbD = ad2.d("ExpiredBanner(iconUrl=", str, ", title=", str2, ", text=");
            kv2.c(sbD, str3, ", backgroundColor=", str4, ", actionButton=");
            sbD.append(aVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class j {

        @bq7("policy")
        private final m a;

        @bq7("logout")
        private final p b;

        @bq7("deleteAccount")
        private final p c;

        public j(m mVar, p pVar, p pVar2) {
            mVar.getClass();
            pVar.getClass();
            pVar2.getClass();
            this.a = mVar;
            this.b = pVar;
            this.c = pVar2;
        }

        public final p a() {
            return this.c;
        }

        public final p b() {
            return this.b;
        }

        public final m c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return aa4.e(this.a, jVar.a) && aa4.e(this.b, jVar.b) && aa4.e(this.c, jVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "Footer(policy=" + this.a + ", logout=" + this.b + ", deleteAccount=" + this.c + ")";
        }
    }

    public static final class k {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("code")
        private final String b;

        @bq7("copyButton")
        private final f c;

        @bq7("shareButton")
        private final f d;

        public k(String str, String str2, f fVar, f fVar2) {
            str.getClass();
            str2.getClass();
            fVar.getClass();
            this.a = str;
            this.b = str2;
            this.c = fVar;
            this.d = fVar2;
        }

        public final String a() {
            return this.b;
        }

        public final f b() {
            return this.c;
        }

        public final f c() {
            return this.d;
        }

        public final String d() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return aa4.e(this.a, kVar.a) && aa4.e(this.b, kVar.b) && aa4.e(this.c, kVar.c) && aa4.e(this.d, kVar.d);
        }

        public final int hashCode() {
            int iHashCode = (this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31;
            f fVar = this.d;
            return iHashCode + (fVar == null ? 0 : fVar.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            f fVar = this.c;
            f fVar2 = this.d;
            StringBuilder sbD = ad2.d("Invite(title=", str, ", code=", str2, ", copyButton=");
            sbD.append(fVar);
            sbD.append(", shareButton=");
            sbD.append(fVar2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class l {

        @bq7("avatar")
        private final d a;

        @bq7("phone")
        private final String b;

        @bq7("name")
        private final String c;

        @bq7("email")
        private final String d;

        @bq7("edit")
        private final g e;

        public l(d dVar, String str, String str2, String str3, g gVar) {
            dVar.getClass();
            str.getClass();
            str2.getClass();
            gVar.getClass();
            this.a = dVar;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = gVar;
        }

        public final d a() {
            return this.a;
        }

        public final g b() {
            return this.e;
        }

        public final String c() {
            return this.d;
        }

        public final String d() {
            return this.c;
        }

        public final String e() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return aa4.e(this.a, lVar.a) && aa4.e(this.b, lVar.b) && aa4.e(this.c, lVar.c) && aa4.e(this.d, lVar.d) && aa4.e(this.e, lVar.e);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
            String str = this.d;
            return this.e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            d dVar = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            g gVar = this.e;
            StringBuilder sb = new StringBuilder("Personal(avatar=");
            sb.append(dVar);
            sb.append(", phone=");
            sb.append(str);
            sb.append(", name=");
            kv2.c(sb, str2, ", email=", str3, ", edit=");
            sb.append(gVar);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class m {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        public m(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof m)) {
                return false;
            }
            m mVar = (m) obj;
            return aa4.e(this.a, mVar.a) && aa4.e(this.b, mVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("PolicyItem(title=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class n {

        @bq7(RemoteConfigConstants.ResponseFieldKey.STATE)
        private final o a;

        @bq7("activeBanner")
        private final b b;

        @bq7("expiredBanner")
        private final i c;

        public n(o oVar, b bVar, i iVar) {
            oVar.getClass();
            this.a = oVar;
            this.b = bVar;
            this.c = iVar;
        }

        public final b a() {
            return this.b;
        }

        public final i b() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof n)) {
                return false;
            }
            n nVar = (n) obj;
            return this.a == nVar.a && aa4.e(this.b, nVar.b) && aa4.e(this.c, nVar.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            b bVar = this.b;
            int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
            i iVar = this.c;
            return iHashCode2 + (iVar != null ? iVar.hashCode() : 0);
        }

        public final String toString() {
            return "Pro(state=" + this.a + ", activeBanner=" + this.b + ", expiredBanner=" + this.c + ")";
        }
    }

    public enum o {
        ACTIVE,
        EXPIRED
    }

    public static final class p {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        public p(String str) {
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
            return (obj instanceof p) && aa4.e(this.a, ((p) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("TitleItem(title=", this.a, ")");
        }
    }

    public rm6(l lVar, h hVar, n nVar, k kVar, j jVar) {
        lVar.getClass();
        kVar.getClass();
        jVar.getClass();
        this.a = lVar;
        this.b = hVar;
        this.c = nVar;
        this.d = kVar;
        this.e = jVar;
    }

    public final h a() {
        return this.b;
    }

    public final j b() {
        return this.e;
    }

    public final k c() {
        return this.d;
    }

    public final l d() {
        return this.a;
    }

    public final n e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rm6)) {
            return false;
        }
        rm6 rm6Var = (rm6) obj;
        return aa4.e(this.a, rm6Var.a) && aa4.e(this.b, rm6Var.b) && aa4.e(this.c, rm6Var.c) && aa4.e(this.d, rm6Var.d) && aa4.e(this.e, rm6Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        h hVar = this.b;
        int iHashCode2 = (iHashCode + (hVar == null ? 0 : hVar.hashCode())) * 31;
        n nVar = this.c;
        int iHashCode3 = nVar != null ? nVar.hashCode() : 0;
        return this.e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + iHashCode3) * 31)) * 31);
    }

    public final String toString() {
        return "ProfileResponse(personal=" + this.a + ", email=" + this.b + ", pro=" + this.c + ", invite=" + this.d + ", footer=" + this.e + ")";
    }
}
