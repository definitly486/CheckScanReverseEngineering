package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hd1 {

    @bq7(TtmlNode.ATTR_ID)
    private int a;

    @bq7("purchaseDateTime")
    private String b;

    @bq7("totalSum")
    private int c;

    @bq7("qr_code")
    private String d;

    @bq7("shop")
    private lu7 e;

    @bq7("promotion_info")
    private jh1.a f;
    public final boolean g;

    @bq7(FirebaseAnalytics.Param.ITEMS)
    private List<vg6> h;

    @bq7("inn")
    private String i;

    @bq7("organizationName")
    private String j;

    public /* synthetic */ hd1(int i, String str, int i2, String str2, lu7 lu7Var, jh1.a aVar, boolean z, List list, String str3, String str4, int i3, jh2 jh2Var) {
        this(i, str, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : str2, lu7Var, (i3 & 32) != 0 ? null : aVar, z, (i3 & 128) != 0 ? null : list, str3, str4);
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.i;
    }

    public final List<vg6> c() {
        return this.h;
    }

    public final String d() {
        return this.j;
    }

    public final jh1.a e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hd1)) {
            return false;
        }
        hd1 hd1Var = (hd1) obj;
        return this.a == hd1Var.a && aa4.e(this.b, hd1Var.b) && this.c == hd1Var.c && aa4.e(this.d, hd1Var.d) && aa4.e(this.e, hd1Var.e) && aa4.e(this.f, hd1Var.f) && this.g == hd1Var.g && aa4.e(this.h, hd1Var.h) && aa4.e(this.i, hd1Var.i) && aa4.e(this.j, hd1Var.j);
    }

    public final String f() {
        return this.b;
    }

    public final String g() {
        return this.d;
    }

    public final lu7 h() {
        return this.e;
    }

    public final int hashCode() {
        int iB = ej0.b(this.c, zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31);
        String str = this.d;
        int iHashCode = (this.e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        jh1.a aVar = this.f;
        int iC = tg.c((iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31, 31, this.g);
        List<vg6> list = this.h;
        int iHashCode2 = (iC + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.i;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.j;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final int i() {
        return this.c;
    }

    public final void j(ArrayList arrayList) {
        this.h = arrayList;
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        int i2 = this.c;
        String str2 = this.d;
        lu7 lu7Var = this.e;
        jh1.a aVar = this.f;
        List<vg6> list = this.h;
        String str3 = this.i;
        String str4 = this.j;
        StringBuilder sbE = ng.e(i, "Cheque(id=", ", purchaseDateTime=", str, ", totalSum=");
        sbE.append(i2);
        sbE.append(", qrCode=");
        sbE.append(str2);
        sbE.append(", shop=");
        sbE.append(lu7Var);
        sbE.append(", promotion_info=");
        sbE.append(aVar);
        sbE.append(", isInfoDisplayed=");
        sbE.append(this.g);
        sbE.append(", items=");
        sbE.append(list);
        sbE.append(", inn=");
        return dg.c(sbE, str3, ", nameLegalFace=", str4, ")");
    }

    public hd1(int i, String str, int i2, String str2, lu7 lu7Var, jh1.a aVar, boolean z, List<vg6> list, String str3, String str4) {
        str.getClass();
        lu7Var.getClass();
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = str2;
        this.e = lu7Var;
        this.f = aVar;
        this.g = z;
        this.h = list;
        this.i = str3;
        this.j = str4;
    }
}
