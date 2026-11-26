package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class t99 {

    @bq7("apiBankAlfa")
    private final mn a;

    @bq7("experimentOfferCardButton")
    private final Boolean b;

    @bq7("experimentOnlineShopTutorial")
    private final s33 c;

    @bq7("floatingButton")
    private final Boolean d;

    @bq7("experimentOnboardingNew")
    private final r33 e;

    @bq7("experimentNewCreditBanner")
    private final q33 f;

    @bq7("experimentGoodsShowcase")
    private final o33 g;

    @bq7("experimentSearchString")
    private final t33 h;

    @bq7("experimentAddReceiptButton")
    private final l33 i;

    @bq7("experimentFloatingDK")
    private final m33 j;

    @bq7("experimentGamesTabbar")
    private final n33 k;

    @bq7("experimentGamesTabbarLink")
    private final String l;

    public /* synthetic */ t99(mn mnVar, Boolean bool, s33 s33Var, Boolean bool2, r33 r33Var, q33 q33Var, o33 o33Var, t33 t33Var, l33 l33Var, m33 m33Var, n33 n33Var, String str, int i, jh2 jh2Var) {
        mn mnVar2;
        if ((i & 1) != 0) {
            mnVar2 = new mn(false, 0L, 0L, null, 15, null);
        } else {
            mnVar2 = mnVar;
        }
        this(mnVar2, bool, s33Var, bool2, r33Var, q33Var, o33Var, t33Var, l33Var, m33Var, n33Var, str);
    }

    public final mn a() {
        return this.a;
    }

    public final l33 b() {
        return this.i;
    }

    public final m33 c() {
        return this.j;
    }

    public final n33 d() {
        return this.k;
    }

    public final String e() {
        return this.l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t99)) {
            return false;
        }
        t99 t99Var = (t99) obj;
        return aa4.e(this.a, t99Var.a) && aa4.e(this.b, t99Var.b) && this.c == t99Var.c && aa4.e(this.d, t99Var.d) && this.e == t99Var.e && this.f == t99Var.f && this.g == t99Var.g && this.h == t99Var.h && this.i == t99Var.i && this.j == t99Var.j && this.k == t99Var.k && aa4.e(this.l, t99Var.l);
    }

    public final o33 f() {
        return this.g;
    }

    public final q33 g() {
        return this.f;
    }

    public final Boolean h() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Boolean bool = this.b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        s33 s33Var = this.c;
        int iHashCode3 = (iHashCode2 + (s33Var == null ? 0 : s33Var.hashCode())) * 31;
        Boolean bool2 = this.d;
        int iHashCode4 = (iHashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        r33 r33Var = this.e;
        int iHashCode5 = (iHashCode4 + (r33Var == null ? 0 : r33Var.hashCode())) * 31;
        q33 q33Var = this.f;
        int iHashCode6 = (iHashCode5 + (q33Var == null ? 0 : q33Var.hashCode())) * 31;
        o33 o33Var = this.g;
        int iHashCode7 = (iHashCode6 + (o33Var == null ? 0 : o33Var.hashCode())) * 31;
        t33 t33Var = this.h;
        int iHashCode8 = (iHashCode7 + (t33Var == null ? 0 : t33Var.hashCode())) * 31;
        l33 l33Var = this.i;
        int iHashCode9 = (iHashCode8 + (l33Var == null ? 0 : l33Var.hashCode())) * 31;
        m33 m33Var = this.j;
        int iHashCode10 = (iHashCode9 + (m33Var == null ? 0 : m33Var.hashCode())) * 31;
        n33 n33Var = this.k;
        int iHashCode11 = (iHashCode10 + (n33Var == null ? 0 : n33Var.hashCode())) * 31;
        String str = this.l;
        return iHashCode11 + (str != null ? str.hashCode() : 0);
    }

    public final r33 i() {
        return this.e;
    }

    public final s33 j() {
        return this.c;
    }

    public final t33 k() {
        return this.h;
    }

    public final Boolean l() {
        return this.d;
    }

    public final String toString() {
        return "UserFeaturesResponse(apiBankAlpha=" + this.a + ", experimentOfferCardButton=" + this.b + ", experimentOnlineShopTutorial=" + this.c + ", floatingButton=" + this.d + ", experimentOnboardingNew=" + this.e + ", experimentNewCreditBanner=" + this.f + ", experimentGoodsShowcase=" + this.g + ", experimentSearchString=" + this.h + ", experimentAddReceiptButton=" + this.i + ", experimentFloatingDK=" + this.j + ", experimentGamesTabbar=" + this.k + ", experimentGamesTabbarLink=" + this.l + ")";
    }

    public t99(mn mnVar, Boolean bool, s33 s33Var, Boolean bool2, r33 r33Var, q33 q33Var, o33 o33Var, t33 t33Var, l33 l33Var, m33 m33Var, n33 n33Var, String str) {
        mnVar.getClass();
        this.a = mnVar;
        this.b = bool;
        this.c = s33Var;
        this.d = bool2;
        this.e = r33Var;
        this.f = q33Var;
        this.g = o33Var;
        this.h = t33Var;
        this.i = l33Var;
        this.j = m33Var;
        this.k = n33Var;
        this.l = str;
    }
}
