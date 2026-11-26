package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ak0 {

    @bq7("areaId")
    private final int a;

    @bq7("description")
    private final String b;

    @bq7(TtmlNode.ATTR_ID)
    private final int c;

    @bq7("imageUrl")
    private final String d;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String e;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final a f;

    @bq7("subBlocks")
    private final List<b> g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a BANNERS;
        public static final a BANNER_HIDABLE;
        public static final a BUTTONS;
        public static final a CATEGORIES;
        public static final a CHECKSCAN_PRO;
        public static final a CHECKSCAN_PROMOCODE;
        public static final a EARNING;
        public static final a FAVORITE_ONLINE_SHOPS;
        public static final a GROUPED_ONLINE_SHOPS;
        public static final a OFFLINE_ONLINE;
        public static final a ONLINE_SHOPS;

        static {
            a aVar = new a("BUTTONS", 0);
            BUTTONS = aVar;
            a aVar2 = new a("BANNERS", 1);
            BANNERS = aVar2;
            a aVar3 = new a("CATEGORIES", 2);
            CATEGORIES = aVar3;
            a aVar4 = new a("GROUPED_ONLINE_SHOPS", 3);
            GROUPED_ONLINE_SHOPS = aVar4;
            a aVar5 = new a("ONLINE_SHOPS", 4);
            ONLINE_SHOPS = aVar5;
            a aVar6 = new a("FAVORITE_ONLINE_SHOPS", 5);
            FAVORITE_ONLINE_SHOPS = aVar6;
            a aVar7 = new a("BANNER_HIDABLE", 6);
            BANNER_HIDABLE = aVar7;
            a aVar8 = new a("CHECKSCAN_PRO", 7);
            CHECKSCAN_PRO = aVar8;
            a aVar9 = new a("EARNING", 8);
            EARNING = aVar9;
            a aVar10 = new a("CHECKSCAN_PROMOCODE", 9);
            CHECKSCAN_PROMOCODE = aVar10;
            a aVar11 = new a("OFFLINE_ONLINE", 10);
            OFFLINE_ONLINE = aVar11;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public ak0(int i, String str, int i2, String str2, String str3, a aVar, List<b> list) {
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = str2;
        this.e = str3;
        this.f = aVar;
        this.g = list;
    }

    public final String a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final String c() {
        return this.e;
    }

    public final a d() {
        return this.f;
    }

    public final List<b> e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ak0)) {
            return false;
        }
        ak0 ak0Var = (ak0) obj;
        return this.a == ak0Var.a && aa4.e(this.b, ak0Var.b) && this.c == ak0Var.c && aa4.e(this.d, ak0Var.d) && aa4.e(this.e, ak0Var.e) && this.f == ak0Var.f && aa4.e(this.g, ak0Var.g);
    }

    public final a f() {
        return this.f;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iB = zg.b(ej0.b(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31), 31, this.d);
        String str2 = this.e;
        int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        a aVar = this.f;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        List<b> list = this.g;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        int i2 = this.c;
        String str2 = this.d;
        String str3 = this.e;
        a aVar = this.f;
        List<b> list = this.g;
        StringBuilder sbE = ng.e(i, "BlockResponse(areaId=", ", description=", str, ", id=");
        sbE.append(i2);
        sbE.append(", imageUrl=");
        sbE.append(str2);
        sbE.append(", title=");
        sbE.append(str3);
        sbE.append(", type=");
        sbE.append(aVar);
        sbE.append(", subBlocks=");
        return bg.e(")", list, sbE);
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7(TtmlNode.ATTR_ID)
        private final int b;

        @bq7("imageUrl")
        private final String c;

        @bq7("url")
        private final String d;

        public b(String str, int i, String str2, String str3) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = i;
            this.c = str2;
            this.d = str3;
        }

        public final int a() {
            return this.b;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(ej0.b(this.b, this.a.hashCode() * 31, 31), 31, this.c);
            String str = this.d;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String str = this.a;
            int i = this.b;
            return dg.c(mz0.a(i, "SubBlock(title=", str, ", id=", ", imageUrl="), this.c, ", url=", this.d, ")");
        }

        public /* synthetic */ b(String str, int i, String str2, String str3, int i2, jh2 jh2Var) {
            this(str, i, str2, (i2 & 8) != 0 ? null : str3);
        }
    }
}
