package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class fo8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final a b;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String c;

    @bq7("subtitle")
    private final String d;

    @bq7("logoUrl")
    private final String e;

    @bq7("badgeUrls")
    private final List<String> f;

    @bq7("badgeUrl")
    private final String g;

    @bq7("animatedBadgeUrl")
    private final String h;

    @bq7("imageUrl")
    private final String i;

    @bq7(TJAdUnitConstants.String.ENABLED)
    private final boolean j;

    @bq7("completed")
    private final boolean k;

    @bq7("isRewardAvailable")
    private final Boolean l;

    @bq7("completedUsersCount")
    private final String m;

    @bq7("skipDetails")
    private final Boolean n;

    @bq7("block")
    private final String o;

    @bq7("badge")
    private final String p;

    public enum a {
        SIMPLE,
        DETAILED,
        SIMPLE_WITH_SUBTASKS,
        SIMPLE_WITH_REWARD_SUBTASKS,
        PROMOCODE_TASK,
        GROUPED_TASKS,
        CHECKBOX_TASK,
        SIMPLE_WITH_CHECKBOX_SUBTASKS
    }

    public /* synthetic */ fo8(int i, a aVar, String str, String str2, String str3, List list, String str4, String str5, String str6, boolean z, boolean z2, Boolean bool, String str7, Boolean bool2, String str8, String str9, int i2, jh2 jh2Var) {
        this(i, aVar, str, str2, str3, list, str4, str5, str6, z, z2, bool, str7, bool2, (i2 & 16384) != 0 ? null : str8, (i2 & 32768) != 0 ? null : str9);
    }

    public final String a() {
        return this.h;
    }

    public final String b() {
        return this.p;
    }

    public final String c() {
        return this.g;
    }

    public final List<String> d() {
        return this.f;
    }

    public final String e() {
        return this.o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fo8)) {
            return false;
        }
        fo8 fo8Var = (fo8) obj;
        return this.a == fo8Var.a && this.b == fo8Var.b && aa4.e(this.c, fo8Var.c) && aa4.e(this.d, fo8Var.d) && aa4.e(this.e, fo8Var.e) && aa4.e(this.f, fo8Var.f) && aa4.e(this.g, fo8Var.g) && aa4.e(this.h, fo8Var.h) && aa4.e(this.i, fo8Var.i) && this.j == fo8Var.j && this.k == fo8Var.k && aa4.e(this.l, fo8Var.l) && aa4.e(this.m, fo8Var.m) && aa4.e(this.n, fo8Var.n) && aa4.e(this.o, fo8Var.o) && aa4.e(this.p, fo8Var.p);
    }

    public final boolean f() {
        return this.k;
    }

    public final String g() {
        return this.m;
    }

    public final boolean h() {
        return this.j;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        a aVar = this.b;
        int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<String> list = this.f;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.g;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.h;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.i;
        int iC = tg.c(tg.c((iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.j), 31, this.k);
        Boolean bool = this.l;
        int iHashCode9 = (iC + (bool == null ? 0 : bool.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool2 = this.n;
        int iHashCode11 = (iHashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str8 = this.o;
        int iHashCode12 = (iHashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.p;
        return iHashCode12 + (str9 != null ? str9.hashCode() : 0);
    }

    public final int i() {
        return this.a;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        return this.e;
    }

    public final Boolean l() {
        return this.n;
    }

    public final String m() {
        return this.d;
    }

    public final String n() {
        return this.c;
    }

    public final a o() {
        return this.b;
    }

    public final Boolean p() {
        return this.l;
    }

    public final String toString() {
        int i = this.a;
        a aVar = this.b;
        String str = this.c;
        String str2 = this.d;
        String str3 = this.e;
        List<String> list = this.f;
        String str4 = this.g;
        String str5 = this.h;
        String str6 = this.i;
        boolean z = this.j;
        boolean z2 = this.k;
        Boolean bool = this.l;
        String str7 = this.m;
        Boolean bool2 = this.n;
        String str8 = this.o;
        String str9 = this.p;
        StringBuilder sb = new StringBuilder("TaskResponse(id=");
        sb.append(i);
        sb.append(", type=");
        sb.append(aVar);
        sb.append(", title=");
        kv2.c(sb, str, ", subtitle=", str2, ", logoUrl=");
        sb.append(str3);
        sb.append(", badgeUrls=");
        sb.append(list);
        sb.append(", badgeUrl=");
        kv2.c(sb, str4, ", animatedBadgeUrl=", str5, ", imageUrl=");
        ud.f(sb, str6, ", enabled=", z, ", completed=");
        sb.append(z2);
        sb.append(", isRewardAvailable=");
        sb.append(bool);
        sb.append(", completedUsersCount=");
        sb.append(str7);
        sb.append(", skipDetails=");
        sb.append(bool2);
        sb.append(", block=");
        return dg.c(sb, str8, ", badge=", str9, ")");
    }

    public fo8(int i, a aVar, String str, String str2, String str3, List<String> list, String str4, String str5, String str6, boolean z, boolean z2, Boolean bool, String str7, Boolean bool2, String str8, String str9) {
        this.a = i;
        this.b = aVar;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = list;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.j = z;
        this.k = z2;
        this.l = bool;
        this.m = str7;
        this.n = bool2;
        this.o = str8;
        this.p = str9;
    }
}
