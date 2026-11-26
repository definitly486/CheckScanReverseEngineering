package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jm8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("subtitle")
    private final String c;

    @bq7("logoUrl")
    private final String d;

    @bq7("badgeUrls")
    private final List<String> e;

    @bq7("claimButton")
    private final a f;

    @bq7("ordInfo")
    private final c06 g;

    @bq7("aboutUrl")
    private final String h;

    @bq7("agreements")
    private final List<Object> i;

    @bq7("completed")
    private final boolean j;

    @bq7("fullTerms")
    private final jl3 k;

    @bq7("disclaimers")
    private final List<fn8> l;

    @bq7("subtasks")
    private final List<b> m;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7(TJAdUnitConstants.String.ENABLED)
        private final boolean b;

        @bq7("delayMs")
        private final long c;

        public a(String str, boolean z, long j) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = j;
        }

        public final boolean a() {
            return this.b;
        }

        public final String b() {
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
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return Long.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return k2.b(this.c, ")", p2.b("ClaimButtonResponse(text=", this.a, ", enabled=", ", delayMs=", this.b));
        }
    }

    public static final class b {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("pendingText")
        private final String d;

        @bq7("completed")
        private final boolean e;

        @bq7("agreements")
        private final List<C0214b> f;

        @bq7("actionButton")
        private final a g;

        @bq7(RemoteConfigConstants.ResponseFieldKey.STATE)
        private final c h;

        public static final class a {

            @bq7("text")
            private final String a;

            @bq7(TJAdUnitConstants.String.ENABLED)
            private final Boolean b;

            @bq7("registrationRequired")
            private final Boolean c;

            public a(String str, Boolean bool, Boolean bool2) {
                this.a = str;
                this.b = bool;
                this.c = bool2;
            }

            public final Boolean a() {
                return this.b;
            }

            public final Boolean b() {
                return this.c;
            }

            public final String c() {
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
                return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
            }

            public final int hashCode() {
                String str = this.a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                Boolean bool = this.b;
                int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
                Boolean bool2 = this.c;
                return iHashCode2 + (bool2 != null ? bool2.hashCode() : 0);
            }

            public final String toString() {
                return "ActionButtonResponse(text=" + this.a + ", enabled=" + this.b + ", registrationRequired=" + this.c + ")";
            }
        }

        /* JADX INFO: renamed from: jm8$b$b, reason: collision with other inner class name */
        public static final class C0214b {

            @bq7("text")
            private final String a;

            public C0214b(String str) {
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
                return (obj instanceof C0214b) && aa4.e(this.a, ((C0214b) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("AgreementResponse(text=", this.a, ")");
            }
        }

        public enum c {
            INITIAL,
            PENDING,
            COMPLETED
        }

        public b(int i, String str, String str2, String str3, boolean z, List<C0214b> list, a aVar, c cVar) {
            str.getClass();
            str2.getClass();
            cVar.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = z;
            this.f = list;
            this.g = aVar;
            this.h = cVar;
        }

        public final a a() {
            return this.g;
        }

        public final List<C0214b> b() {
            return this.f;
        }

        public final int c() {
            return this.a;
        }

        public final String d() {
            return this.d;
        }

        public final c e() {
            return this.h;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && this.e == bVar.e && aa4.e(this.f, bVar.f) && aa4.e(this.g, bVar.g) && this.h == bVar.h;
        }

        public final String f() {
            return this.c;
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
            String str = this.d;
            int iC = tg.c((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.e);
            List<C0214b> list = this.f;
            int iHashCode = (iC + (list == null ? 0 : list.hashCode())) * 31;
            a aVar = this.g;
            return this.h.hashCode() + ((iHashCode + (aVar != null ? aVar.hashCode() : 0)) * 31);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            boolean z = this.e;
            List<C0214b> list = this.f;
            a aVar = this.g;
            c cVar = this.h;
            StringBuilder sbE = ng.e(i, "SubtaskResponse(id=", ", type=", str, ", text=");
            kv2.c(sbE, str2, ", pendingText=", str3, ", completed=");
            sbE.append(z);
            sbE.append(", agreements=");
            sbE.append(list);
            sbE.append(", actionButton=");
            sbE.append(aVar);
            sbE.append(", state=");
            sbE.append(cVar);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public jm8(int i, String str, String str2, String str3, List<String> list, a aVar, c06 c06Var, String str4, List<Object> list2, boolean z, jl3 jl3Var, List<fn8> list3, List<b> list4) {
        str.getClass();
        str3.getClass();
        list.getClass();
        aVar.getClass();
        list2.getClass();
        list4.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
        this.f = aVar;
        this.g = c06Var;
        this.h = str4;
        this.i = list2;
        this.j = z;
        this.k = jl3Var;
        this.l = list3;
        this.m = list4;
    }

    public final String a() {
        return this.h;
    }

    public final List<String> b() {
        return this.e;
    }

    public final a c() {
        return this.f;
    }

    public final jl3 d() {
        return this.k;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jm8)) {
            return false;
        }
        jm8 jm8Var = (jm8) obj;
        return this.a == jm8Var.a && aa4.e(this.b, jm8Var.b) && aa4.e(this.c, jm8Var.c) && aa4.e(this.d, jm8Var.d) && aa4.e(this.e, jm8Var.e) && aa4.e(this.f, jm8Var.f) && aa4.e(this.g, jm8Var.g) && aa4.e(this.h, jm8Var.h) && aa4.e(this.i, jm8Var.i) && this.j == jm8Var.j && aa4.e(this.k, jm8Var.k) && aa4.e(this.l, jm8Var.l) && aa4.e(this.m, jm8Var.m);
    }

    public final c06 f() {
        return this.g;
    }

    public final List<b> g() {
        return this.m;
    }

    public final String h() {
        return this.c;
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (this.f.hashCode() + e2.b(this.e, zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d), 31)) * 31;
        c06 c06Var = this.g;
        int iHashCode2 = (iHashCode + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        String str2 = this.h;
        int iC = tg.c(e2.b(this.i, (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31, this.j);
        jl3 jl3Var = this.k;
        int iHashCode3 = (iC + (jl3Var == null ? 0 : jl3Var.hashCode())) * 31;
        List<fn8> list = this.l;
        return this.m.hashCode() + ((iHashCode3 + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String i() {
        return this.b;
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        List<String> list = this.e;
        a aVar = this.f;
        c06 c06Var = this.g;
        String str4 = this.h;
        List<Object> list2 = this.i;
        boolean z = this.j;
        jl3 jl3Var = this.k;
        List<fn8> list3 = this.l;
        List<b> list4 = this.m;
        StringBuilder sbE = ng.e(i, "TaskCheckboxStepsDetailsResponse(id=", ", title=", str, ", subtitle=");
        kv2.c(sbE, str2, ", logoUrl=", str3, ", badgeUrls=");
        sbE.append(list);
        sbE.append(", claimButton=");
        sbE.append(aVar);
        sbE.append(", ordInfoResponse=");
        sbE.append(c06Var);
        sbE.append(", aboutUrl=");
        sbE.append(str4);
        sbE.append(", agreements=");
        sbE.append(list2);
        sbE.append(", completed=");
        sbE.append(z);
        sbE.append(", fullTerms=");
        sbE.append(jl3Var);
        sbE.append(", disclaimers=");
        sbE.append(list3);
        sbE.append(", subtasks=");
        return bg.e(")", list4, sbE);
    }
}
