package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class k70 {

    @bq7("meta")
    private final g a;

    @bq7("blocks")
    private final List<b> b;

    @bq7("balance")
    private final a c;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("bottomText")
        private final String b;

        @bq7("transferButton")
        private final C0217a c;

        /* JADX INFO: renamed from: k70$a$a, reason: collision with other inner class name */
        public static final class C0217a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            public C0217a(String str) {
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
                return (obj instanceof C0217a) && aa4.e(this.a, ((C0217a) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("ButtonResponse(title=", this.a, ")");
            }
        }

        public a(String str, String str2, C0217a c0217a) {
            str.getClass();
            this.a = str;
            this.b = str2;
            this.c = c0217a;
        }

        public final aj9 a() {
            String str = this.a;
            String str2 = this.b;
            C0217a c0217a = this.c;
            return new aj9(str, str2, c0217a != null ? c0217a.a() : null);
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
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            C0217a c0217a = this.c;
            return iHashCode2 + (c0217a != null ? c0217a.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            C0217a c0217a = this.c;
            StringBuilder sbD = ad2.d("BalanceResponse(text=", str, ", bottomText=", str2, ", transferButton=");
            sbD.append(c0217a);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public interface b {

        public enum a {
            REGISTER,
            PHONE,
            SBP_PHONE,
            COMMON_CELL,
            COMMON_BANNER,
            MINI_LOGO_BANNER,
            HEADER_LOGO_BANNERS,
            TITLE,
            NOT_SUPPORTED
        }

        hk9 a();

        int b();

        boolean c();

        a getType();
    }

    public static final class c implements b {

        @bq7("url")
        private final String a;

        @bq7("logoUrl")
        private final String b;

        @bq7("aspectRatio")
        private final float c;

        @bq7("sort")
        private final int d;

        @bq7("preview")
        private final boolean e;
        public final b.a f;

        public c(String str, String str2, float f, int i, boolean z) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = f;
            this.d = i;
            this.e = z;
            this.f = b.a.COMMON_BANNER;
        }

        @Override // k70.b
        public final hk9 a() {
            return new jj9(this.d, this.b, new wi9.e(this.a));
        }

        @Override // k70.b
        public final int b() {
            return this.d;
        }

        @Override // k70.b
        public final boolean c() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && Float.compare(this.c, cVar.c) == 0 && this.d == cVar.d && this.e == cVar.e;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.f;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.e) + ej0.b(this.d, jn.b(this.c, zg.b(this.a.hashCode() * 31, 31, this.b), 31), 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            float f = this.c;
            int i = this.d;
            boolean z = this.e;
            StringBuilder sbD = ad2.d("CommonBannerBlockResponse(url=", str, ", logoUrl=", str2, ", aspectRatio=");
            sbD.append(f);
            sbD.append(", sort=");
            sbD.append(i);
            sbD.append(", preview=");
            return dh.e(sbD, z, ")");
        }
    }

    public static final class d implements b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("url")
        private final String c;

        @bq7("logoUrl")
        private final String d;

        @bq7("sort")
        private final int e;

        @bq7("preview")
        private final boolean f;
        public final b.a g;

        public d(String str, String str2, String str3, String str4, int i, boolean z) {
            x7.b(str, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = i;
            this.f = z;
            this.g = b.a.COMMON_CELL;
        }

        @Override // k70.b
        public final hk9 a() {
            return new lj9(this.e, this.a, this.b, this.d, new wi9.e(this.c));
        }

        @Override // k70.b
        public final int b() {
            return this.e;
        }

        @Override // k70.b
        public final boolean c() {
            return this.f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c) && aa4.e(this.d, dVar.d) && this.e == dVar.e && this.f == dVar.f;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.g;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return Boolean.hashCode(this.f) + ej0.b(this.e, zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d), 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            int i = this.e;
            boolean z = this.f;
            StringBuilder sbD = ad2.d("CommonCellBlockResponse(title=", str, ", text=", str2, ", url=");
            kv2.c(sbD, str3, ", logoUrl=", str4, ", sort=");
            sbD.append(i);
            sbD.append(", preview=");
            sbD.append(z);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class e {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("url")
        private final String d;

        @bq7("sort")
        private final int e;

        public e(String str, String str2, String str3, String str4, int i) {
            str.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = i;
        }

        public final int a() {
            return this.e;
        }

        public final nj9 b() {
            int i = this.e;
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            return new nj9(i, str, str2, str3, str4 != null ? new wi9.e(str4) : wi9.b.a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b) && aa4.e(this.c, eVar.c) && aa4.e(this.d, eVar.d) && this.e == eVar.e;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iB = zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
            String str2 = this.d;
            return Integer.hashCode(this.e) + ((iB + (str2 != null ? str2.hashCode() : 0)) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            int i = this.e;
            StringBuilder sbD = ad2.d("HeaderLogoBannerBlockResponse(title=", str, ", text=", str2, ", logoUrl=");
            kv2.c(sbD, str3, ", url=", str4, ", sort=");
            return l2.e(sbD, ")", i);
        }
    }

    public static final class f implements b {

        @bq7("subBlocks")
        private final List<e> a;

        @bq7("sort")
        private final int b;

        @bq7("preview")
        private final boolean c;
        public final b.a d;

        public static final class a<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a(Integer.valueOf(((e) t).a()), Integer.valueOf(((e) t2).a()));
            }
        }

        public f(List<e> list, int i, boolean z) {
            list.getClass();
            this.a = list;
            this.b = i;
            this.c = z;
            this.d = b.a.HEADER_LOGO_BANNERS;
        }

        @Override // k70.b
        public final hk9 a() {
            if (this.a.size() <= 1) {
                if (this.a.size() == 1) {
                    return ((e) qn1.T(this.a)).b();
                }
                return null;
            }
            int i = this.b;
            List listN0 = qn1.n0(this.a, new a());
            ArrayList arrayList = new ArrayList(kn1.q(listN0, 10));
            Iterator it = listN0.iterator();
            while (it.hasNext()) {
                arrayList.add(((e) it.next()).b());
            }
            return new oj9(i, arrayList);
        }

        @Override // k70.b
        public final int b() {
            return this.b;
        }

        @Override // k70.b
        public final boolean c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return aa4.e(this.a, fVar.a) && this.b == fVar.b && this.c == fVar.c;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + ej0.b(this.b, this.a.hashCode() * 31, 31);
        }

        public final String toString() {
            List<e> list = this.a;
            int i = this.b;
            boolean z = this.c;
            StringBuilder sb = new StringBuilder("HeaderLogoBannersBlockResponse(subBlocks=");
            sb.append(list);
            sb.append(", sort=");
            sb.append(i);
            sb.append(", preview=");
            return dh.e(sb, z, ")");
        }
    }

    public static final class g {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("showAll")
        private final a b;

        public static final class a {

            @bq7(AppMeasurementSdk.ConditionalUserProperty.ACTIVE)
            private final boolean a;

            @bq7("text")
            private final String b;

            public a(boolean z, String str) {
                str.getClass();
                this.a = z;
                this.b = str;
            }

            public final boolean a() {
                return this.a;
            }

            public final String b() {
                return this.b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return this.a == aVar.a && aa4.e(this.b, aVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
            }

            public final String toString() {
                return "ShowAllResponse(active=" + this.a + ", text=" + this.b + ")";
            }
        }

        public g(String str, a aVar) {
            str.getClass();
            aVar.getClass();
            this.a = str;
            this.b = aVar;
        }

        public final String a() {
            return this.a;
        }

        public final yj9 b() {
            if (this.b.a()) {
                return new yj9(this.b.b());
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return aa4.e(this.a, gVar.a) && aa4.e(this.b, gVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "MetaResponse(title=" + this.a + ", showAll=" + this.b + ")";
        }
    }

    public static final class h implements b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final a c;

        @bq7("secondButton")
        private final a d;

        @bq7("logoUrl")
        private final String e;

        @bq7("sort")
        private final int f;

        @bq7("preview")
        private final boolean g;
        public final b.a h;

        public static final class a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            @bq7(NotificationCompat.CATEGORY_EVENT)
            private final d c;

            @bq7("confirm")
            private final c d;

            @bq7("card")
            private final C0218a e;

            @bq7("claimTask")
            private final b f;

            /* JADX INFO: renamed from: k70$h$a$a, reason: collision with other inner class name */
            public static final class C0218a {

                @bq7("subId")
                private final long a;

                public C0218a(long j) {
                    this.a = j;
                }

                public final long a() {
                    return this.a;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0218a) && this.a == ((C0218a) obj).a;
                }

                public final int hashCode() {
                    return Long.hashCode(this.a);
                }

                public final String toString() {
                    return bg.d(this.a, "CardResponse(subId=", ")");
                }
            }

            public static final class b {

                @bq7("taskId")
                private final int a;

                public b(int i) {
                    this.a = i;
                }

                public final int a() {
                    return this.a;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof b) && this.a == ((b) obj).a;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.a);
                }

                public final String toString() {
                    return kv2.b(this.a, "ClaimTaskResponse(taskId=", ")");
                }
            }

            public static final class c {

                @bq7(TJAdUnitConstants.String.TITLE)
                private final String a;

                @bq7("text")
                private final String b;

                @bq7("buttonConfirm")
                private final String c;

                @bq7("buttonCancel")
                private final String d;

                public c(String str, String str2, String str3, String str4) {
                    m2.e(str, str2, str3, str4);
                    this.a = str;
                    this.b = str2;
                    this.c = str3;
                    this.d = str4;
                }

                public final ec a() {
                    return new ec(this.a, this.b, this.d, this.c);
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
                    return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
                }

                public final String toString() {
                    String str = this.a;
                    String str2 = this.b;
                    return dg.c(ad2.d("ConfirmResponse(title=", str, ", text=", str2, ", buttonConfirm="), this.c, ", buttonCancel=", this.d, ")");
                }
            }

            public static final class d {

                @bq7("path")
                private final String a;

                @bq7("refresh")
                private final boolean b;

                public d(String str, boolean z) {
                    str.getClass();
                    this.a = str;
                    this.b = z;
                }

                public final String a() {
                    return this.a;
                }

                public final boolean b() {
                    return this.b;
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
                    return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
                }

                public final String toString() {
                    return "EventResponse(path=" + this.a + ", refresh=" + this.b + ")";
                }
            }

            public a(String str, String str2, d dVar, c cVar, C0218a c0218a, b bVar) {
                str.getClass();
                this.a = str;
                this.b = str2;
                this.c = dVar;
                this.d = cVar;
                this.e = c0218a;
                this.f = bVar;
            }

            public final uj9.a a() {
                wi9 eVar;
                String str;
                b bVar = this.f;
                if (bVar != null) {
                    eVar = new wi9.a(bVar.a());
                } else {
                    C0218a c0218a = this.e;
                    if (c0218a != null) {
                        eVar = new wi9.c(c0218a.a());
                    } else {
                        d dVar = this.c;
                        if (dVar != null && (str = this.b) != null) {
                            eVar = new wi9.i(str, dVar.a(), this.c.b());
                        } else if (dVar != null) {
                            eVar = new wi9.j(dVar.a(), this.c.b());
                        } else {
                            String str2 = this.b;
                            eVar = str2 != null ? new wi9.e(str2) : wi9.b.a;
                        }
                    }
                }
                c cVar = this.d;
                String str3 = this.a;
                return cVar != null ? new uj9.a(new wi9.k(cVar.a(), eVar), str3) : new uj9.a(eVar, str3);
            }

            public final vj9.a b() {
                wi9 eVar;
                String str;
                String str2 = this.a;
                b bVar = this.f;
                if (bVar != null) {
                    eVar = new wi9.a(bVar.a());
                } else {
                    C0218a c0218a = this.e;
                    if (c0218a != null) {
                        eVar = new wi9.c(c0218a.a());
                    } else {
                        d dVar = this.c;
                        if (dVar != null && (str = this.b) != null) {
                            eVar = new wi9.i(str, dVar.a(), this.c.b());
                        } else if (dVar != null) {
                            eVar = new wi9.j(dVar.a(), this.c.b());
                        } else {
                            String str3 = this.b;
                            if (str3 != null) {
                                boolean zC = ra8.C(str3, "checkscan://", false);
                                String str4 = this.b;
                                eVar = zC ? new wi9.e(str4) : new wi9.d(str4);
                            } else {
                                eVar = wi9.b.a;
                            }
                        }
                    }
                }
                return new vj9.a(eVar, str2);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                d dVar = this.c;
                int iHashCode3 = (iHashCode2 + (dVar == null ? 0 : dVar.hashCode())) * 31;
                c cVar = this.d;
                int iHashCode4 = (iHashCode3 + (cVar == null ? 0 : cVar.hashCode())) * 31;
                C0218a c0218a = this.e;
                int iHashCode5 = (iHashCode4 + (c0218a == null ? 0 : c0218a.hashCode())) * 31;
                b bVar = this.f;
                return iHashCode5 + (bVar != null ? bVar.hashCode() : 0);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                d dVar = this.c;
                c cVar = this.d;
                C0218a c0218a = this.e;
                b bVar = this.f;
                StringBuilder sbD = ad2.d("ButtonResponse(title=", str, ", url=", str2, ", event=");
                sbD.append(dVar);
                sbD.append(", confirm=");
                sbD.append(cVar);
                sbD.append(", card=");
                sbD.append(c0218a);
                sbD.append(", claimTask=");
                sbD.append(bVar);
                sbD.append(")");
                return sbD.toString();
            }
        }

        public h(String str, String str2, a aVar, a aVar2, String str3, int i, boolean z) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = aVar;
            this.d = aVar2;
            this.e = str3;
            this.f = i;
            this.g = z;
            this.h = b.a.MINI_LOGO_BANNER;
        }

        @Override // k70.b
        public final hk9 a() {
            String str = this.e;
            String str2 = this.a;
            String str3 = this.b;
            a aVar = this.c;
            uj9.a aVarA = aVar != null ? aVar.a() : null;
            a aVar2 = this.d;
            return new uj9(str, str2, str3, aVarA, aVar2 != null ? aVar2.a() : null, null);
        }

        @Override // k70.b
        public final int b() {
            return this.f;
        }

        @Override // k70.b
        public final boolean c() {
            return this.g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return aa4.e(this.a, hVar.a) && aa4.e(this.b, hVar.b) && aa4.e(this.c, hVar.c) && aa4.e(this.d, hVar.d) && aa4.e(this.e, hVar.e) && this.f == hVar.f && this.g == hVar.g;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.h;
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            a aVar = this.c;
            int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
            a aVar2 = this.d;
            return Boolean.hashCode(this.g) + ej0.b(this.f, zg.b((iHashCode + (aVar2 != null ? aVar2.hashCode() : 0)) * 31, 31, this.e), 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            a aVar = this.c;
            a aVar2 = this.d;
            String str3 = this.e;
            int i = this.f;
            boolean z = this.g;
            StringBuilder sbD = ad2.d("MiniLogoBlockResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondButton=");
            sbD.append(aVar2);
            sbD.append(", logoUrl=");
            o2.e(sbD, str3, ", sort=", i, ", preview=");
            return dh.e(sbD, z, ")");
        }
    }

    public static final class i implements b {
        public static final i a = new i();
        public static final b.a b = b.a.NOT_SUPPORTED;
        public static final int c = Integer.MAX_VALUE;

        @Override // k70.b
        public final hk9 a() throws Exception {
            throw new Exception("Can not cast not supported block to WithdrawalViewModel");
        }

        @Override // k70.b
        public final int b() {
            return c;
        }

        @Override // k70.b
        public final boolean c() {
            return false;
        }

        @Override // k70.b
        public final b.a getType() {
            return b;
        }
    }

    public static final class j implements b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("sort")
        private final int d;

        @bq7("preview")
        private final boolean e;
        public final b.a f;

        public j(String str, String str2, String str3, int i, boolean z) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = i;
            this.e = z;
            this.f = b.a.PHONE;
        }

        @Override // k70.b
        public final hk9 a() {
            int i = this.d;
            String str = this.a;
            return new lj9(i, str, this.b, this.c, new wi9.g(str));
        }

        @Override // k70.b
        public final int b() {
            return this.d;
        }

        @Override // k70.b
        public final boolean c() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return aa4.e(this.a, jVar.a) && aa4.e(this.b, jVar.b) && aa4.e(this.c, jVar.c) && this.d == jVar.d && this.e == jVar.e;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.f;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.e) + ej0.b(this.d, zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            int i = this.d;
            boolean z = this.e;
            StringBuilder sbD = ad2.d("PhoneBlockResponse(title=", str, ", text=", str2, ", logoUrl=");
            o2.e(sbD, str3, ", sort=", i, ", preview=");
            return dh.e(sbD, z, ")");
        }
    }

    public static final class k implements b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("sort")
        private final int d;

        @bq7("preview")
        private final boolean e;
        public final b.a f;

        public k(String str, String str2, String str3, int i, boolean z) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = i;
            this.e = z;
            this.f = b.a.REGISTER;
        }

        @Override // k70.b
        public final hk9 a() {
            return new ck9(this.d, this.a, this.c, new wi9.e(this.b));
        }

        @Override // k70.b
        public final int b() {
            return this.d;
        }

        @Override // k70.b
        public final boolean c() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return aa4.e(this.a, kVar.a) && aa4.e(this.b, kVar.b) && aa4.e(this.c, kVar.c) && this.d == kVar.d && this.e == kVar.e;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.f;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.e) + ej0.b(this.d, zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            int i = this.d;
            boolean z = this.e;
            StringBuilder sbD = ad2.d("RegisterBlockResponse(title=", str, ", url=", str2, ", logoUrl=");
            o2.e(sbD, str3, ", sort=", i, ", preview=");
            return dh.e(sbD, z, ")");
        }
    }

    public static final class l implements b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("sort")
        private final int d;

        @bq7("preview")
        private final boolean e;
        public final b.a f;

        public l(String str, String str2, String str3, int i, boolean z) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = i;
            this.e = z;
            this.f = b.a.SBP_PHONE;
        }

        @Override // k70.b
        public final hk9 a() {
            int i = this.d;
            String str = this.a;
            return new lj9(i, str, this.b, this.c, new wi9.h(str));
        }

        @Override // k70.b
        public final int b() {
            return this.d;
        }

        @Override // k70.b
        public final boolean c() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return aa4.e(this.a, lVar.a) && aa4.e(this.b, lVar.b) && aa4.e(this.c, lVar.c) && this.d == lVar.d && this.e == lVar.e;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.f;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.e) + ej0.b(this.d, zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            int i = this.d;
            boolean z = this.e;
            StringBuilder sbD = ad2.d("SBPPhoneBlockResponse(title=", str, ", text=", str2, ", logoUrl=");
            o2.e(sbD, str3, ", sort=", i, ", preview=");
            return dh.e(sbD, z, ")");
        }
    }

    public static final class m implements b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("sort")
        private final int b;

        @bq7("preview")
        private final boolean c;
        public final b.a d;

        public m(String str, int i, boolean z) {
            str.getClass();
            this.a = str;
            this.b = i;
            this.c = z;
            this.d = b.a.TITLE;
        }

        @Override // k70.b
        public final hk9 a() {
            return new ek9(this.a);
        }

        @Override // k70.b
        public final int b() {
            return this.b;
        }

        @Override // k70.b
        public final boolean c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof m)) {
                return false;
            }
            m mVar = (m) obj;
            return aa4.e(this.a, mVar.a) && this.b == mVar.b && this.c == mVar.c;
        }

        @Override // k70.b
        public final b.a getType() {
            return this.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + ej0.b(this.b, this.a.hashCode() * 31, 31);
        }

        public final String toString() {
            String str = this.a;
            int i = this.b;
            return dh.e(mz0.a(i, "TitleBlockResponse(title=", str, ", sort=", ", preview="), this.c, ")");
        }
    }

    public static final class n<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return pp1.a(Integer.valueOf(((b) t).b()), Integer.valueOf(((b) t2).b()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k70(g gVar, List<? extends b> list, a aVar) {
        gVar.getClass();
        list.getClass();
        this.a = gVar;
        this.b = list;
        this.c = aVar;
    }

    public final g a() {
        return this.a;
    }

    public final ArrayList b() {
        List<b> list = this.b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((b) obj).getType() != b.a.NOT_SUPPORTED) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            hk9 hk9VarA = ((b) it.next()).a();
            if (hk9VarA != null) {
                arrayList2.add(hk9VarA);
            }
        }
        return arrayList2;
    }

    public final v70 c(String str) {
        str.getClass();
        a aVar = this.c;
        ArrayList arrayListG = yr.G(new pz3[]{aVar != null ? aVar.a() : null, new dj9(str)});
        List<b> list = this.b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            b bVar = (b) obj;
            if (bVar.getType() != b.a.NOT_SUPPORTED && bVar.c()) {
                arrayList.add(obj);
            }
        }
        List listN0 = qn1.n0(arrayList, new n());
        ArrayList arrayList2 = new ArrayList();
        Iterator it = listN0.iterator();
        while (it.hasNext()) {
            hk9 hk9VarA = ((b) it.next()).a();
            if (hk9VarA != null) {
                arrayList2.add(hk9VarA);
            }
        }
        return new v70(qn1.h0(u96.j(this.a.b()), qn1.h0(arrayList2, arrayListG)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k70)) {
            return false;
        }
        k70 k70Var = (k70) obj;
        return aa4.e(this.a, k70Var.a) && aa4.e(this.b, k70Var.b) && aa4.e(this.c, k70Var.c);
    }

    public final int hashCode() {
        int iB = e2.b(this.b, this.a.hashCode() * 31, 31);
        a aVar = this.c;
        return iB + (aVar == null ? 0 : aVar.hashCode());
    }

    public final String toString() {
        return "BalanceTransferShowcaseResponse(meta=" + this.a + ", blocks=" + this.b + ", balance=" + this.c + ")";
    }
}
