package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zo8 {

    @bq7("headerBanner")
    private final c a;

    @bq7("header")
    private final fo8 b;

    @bq7("listTitle")
    private final String c;

    @bq7("tasksPromoBanners")
    private final g d;

    @bq7("list")
    private final List<fo8> e;

    @bq7("listId")
    private final String f;

    @bq7("rankerVersion")
    private final String g;

    @bq7("experimentKey")
    private final String h;

    @bq7("experimentVariant")
    private final String i;

    public enum a {
        AVAILABLE,
        COMPLETED
    }

    public enum b {
        DAILY,
        AD
    }

    public static final class e {

        @bq7("textLeft")
        private final String a;

        @bq7("currencyUrl")
        private final String b;

        @bq7("textRight")
        private final String c;

        @bq7("delayMillisecondsLeft")
        private final Long d;

        public e(String str, String str2, String str3, Long l) {
            str.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = l;
        }

        public final String a() {
            return this.b;
        }

        public final Long b() {
            return this.d;
        }

        public final String c() {
            return this.a;
        }

        public final String d() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b) && aa4.e(this.c, eVar.c) && aa4.e(this.d, eVar.d);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iB = zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
            Long l = this.d;
            return iB + (l != null ? l.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            Long l = this.d;
            StringBuilder sbD = ad2.d("PromoButtonResponse(textLeft=", str, ", currencyUrl=", str2, ", textRight=");
            sbD.append(str3);
            sbD.append(", delayMillisecondsLeft=");
            sbD.append(l);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class f {

        @bq7("text")
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
            return me0.c("SecondaryPromoButtonResponse(text=", this.a, ")");
        }
    }

    public static final class g {

        @bq7("banners")
        private final List<d> a;

        public g(List<d> list) {
            list.getClass();
            this.a = list;
        }

        public final List<d> a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof g) && aa4.e(this.a, ((g) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return rs2.c("TasksPromoBanners(banners=", this.a, ")");
        }
    }

    public zo8(c cVar, fo8 fo8Var, String str, g gVar, List<fo8> list, String str2, String str3, String str4, String str5) {
        str.getClass();
        list.getClass();
        this.a = cVar;
        this.b = fo8Var;
        this.c = str;
        this.d = gVar;
        this.e = list;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = str5;
    }

    public final String a() {
        return this.h;
    }

    public final String b() {
        return this.i;
    }

    public final fo8 c() {
        return this.b;
    }

    public final c d() {
        return this.a;
    }

    public final List<fo8> e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zo8)) {
            return false;
        }
        zo8 zo8Var = (zo8) obj;
        return aa4.e(this.a, zo8Var.a) && aa4.e(this.b, zo8Var.b) && aa4.e(this.c, zo8Var.c) && aa4.e(this.d, zo8Var.d) && aa4.e(this.e, zo8Var.e) && aa4.e(this.f, zo8Var.f) && aa4.e(this.g, zo8Var.g) && aa4.e(this.h, zo8Var.h) && aa4.e(this.i, zo8Var.i);
    }

    public final String f() {
        return this.f;
    }

    public final String g() {
        return this.c;
    }

    public final String h() {
        return this.g;
    }

    public final int hashCode() {
        c cVar = this.a;
        int iHashCode = (cVar == null ? 0 : cVar.hashCode()) * 31;
        fo8 fo8Var = this.b;
        int iB = zg.b((iHashCode + (fo8Var == null ? 0 : fo8Var.hashCode())) * 31, 31, this.c);
        g gVar = this.d;
        int iB2 = e2.b(this.e, (iB + (gVar == null ? 0 : gVar.hashCode())) * 31, 31);
        String str = this.f;
        int iHashCode2 = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.h;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.i;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final g i() {
        return this.d;
    }

    public final String toString() {
        c cVar = this.a;
        fo8 fo8Var = this.b;
        String str = this.c;
        g gVar = this.d;
        List<fo8> list = this.e;
        String str2 = this.f;
        String str3 = this.g;
        String str4 = this.h;
        String str5 = this.i;
        StringBuilder sb = new StringBuilder("TasksMainResponse(headerBanner=");
        sb.append(cVar);
        sb.append(", header=");
        sb.append(fo8Var);
        sb.append(", listTitle=");
        sb.append(str);
        sb.append(", tasksPromoBanners=");
        sb.append(gVar);
        sb.append(", list=");
        sb.append(list);
        sb.append(", listId=");
        sb.append(str2);
        sb.append(", rankerVersion=");
        kv2.c(sb, str3, ", experimentKey=", str4, ", experimentVariant=");
        return me0.d(sb, str5, ")");
    }

    public static final class c {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7("ordInfo")
        private final c06 b;

        @bq7("url")
        private final String c;

        @bq7("imageUrl")
        private final String d;

        @bq7("block")
        private final String e;

        public c(int i, c06 c06Var, String str, String str2, String str3) {
            str.getClass();
            str2.getClass();
            this.a = i;
            this.b = c06Var;
            this.c = str;
            this.d = str2;
            this.e = str3;
        }

        public final String a() {
            return this.e;
        }

        public final int b() {
            return this.a;
        }

        public final String c() {
            return this.d;
        }

        public final c06 d() {
            return this.b;
        }

        public final String e() {
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
            return this.a == cVar.a && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && aa4.e(this.e, cVar.e);
        }

        public final int hashCode() {
            int iHashCode = Integer.hashCode(this.a) * 31;
            c06 c06Var = this.b;
            int iB = zg.b(zg.b((iHashCode + (c06Var == null ? 0 : c06Var.hashCode())) * 31, 31, this.c), 31, this.d);
            String str = this.e;
            return iB + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            int i = this.a;
            c06 c06Var = this.b;
            String str = this.c;
            String str2 = this.d;
            String str3 = this.e;
            StringBuilder sb = new StringBuilder("HeaderBanner(id=");
            sb.append(i);
            sb.append(", ordInfo=");
            sb.append(c06Var);
            sb.append(", url=");
            kv2.c(sb, str, ", imageUrl=", str2, ", block=");
            return me0.d(sb, str3, ")");
        }

        public /* synthetic */ c(int i, c06 c06Var, String str, String str2, String str3, int i2, jh2 jh2Var) {
            this(i, c06Var, str, str2, (i2 & 16) != 0 ? null : str3);
        }
    }

    public /* synthetic */ zo8(c cVar, fo8 fo8Var, String str, g gVar, List list, String str2, String str3, String str4, String str5, int i, jh2 jh2Var) {
        this(cVar, fo8Var, str, gVar, list, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : str3, (i & 128) != 0 ? null : str4, (i & 256) != 0 ? null : str5);
    }

    public static final class d {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("imageUrl")
        private final String c;

        @bq7("button")
        private final e d;

        @bq7("secondaryButton")
        private final f e;

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final b f;

        @bq7(RemoteConfigConstants.ResponseFieldKey.STATE)
        private final a g;

        @bq7("block")
        private final String h;

        public d(int i, String str, String str2, e eVar, f fVar, b bVar, a aVar, String str3) {
            str.getClass();
            str2.getClass();
            bVar.getClass();
            aVar.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = eVar;
            this.e = fVar;
            this.f = bVar;
            this.g = aVar;
            this.h = str3;
        }

        public final String a() {
            return this.h;
        }

        public final e b() {
            return this.d;
        }

        public final int c() {
            return this.a;
        }

        public final String d() {
            return this.c;
        }

        public final f e() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c) && aa4.e(this.d, dVar.d) && aa4.e(this.e, dVar.e) && this.f == dVar.f && this.g == dVar.g && aa4.e(this.h, dVar.h);
        }

        public final a f() {
            return this.g;
        }

        public final String g() {
            return this.b;
        }

        public final b h() {
            return this.f;
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
            e eVar = this.d;
            int iHashCode = (iB + (eVar == null ? 0 : eVar.hashCode())) * 31;
            f fVar = this.e;
            int iHashCode2 = (this.g.hashCode() + ((this.f.hashCode() + ((iHashCode + (fVar == null ? 0 : fVar.hashCode())) * 31)) * 31)) * 31;
            String str = this.h;
            return iHashCode2 + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            e eVar = this.d;
            f fVar = this.e;
            b bVar = this.f;
            a aVar = this.g;
            String str3 = this.h;
            StringBuilder sbE = ng.e(i, "PromoBannerResponse(id=", ", title=", str, ", imageUrl=");
            sbE.append(str2);
            sbE.append(", button=");
            sbE.append(eVar);
            sbE.append(", secondaryButton=");
            sbE.append(fVar);
            sbE.append(", type=");
            sbE.append(bVar);
            sbE.append(", state=");
            sbE.append(aVar);
            sbE.append(", block=");
            sbE.append(str3);
            sbE.append(")");
            return sbE.toString();
        }

        public /* synthetic */ d(int i, String str, String str2, e eVar, f fVar, b bVar, a aVar, String str3, int i2, jh2 jh2Var) {
            this(i, str, str2, eVar, fVar, bVar, aVar, (i2 & 128) != 0 ? null : str3);
        }
    }
}
