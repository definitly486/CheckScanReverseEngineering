package defpackage;

import android.graphics.Color;
import androidx.core.app.NotificationCompat;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJKeyValueStorageKt;
import com.warefly.checkscan.R;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class yk6 {

    @bq7("headerBanners")
    private final List<c> a;

    @bq7("incompleteWarning")
    private final d b;

    @bq7("blocks")
    private final List<a> c;

    @bq7("emailBanner")
    private final b d;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("infoText")
        private final String b;

        @bq7("iconUrl")
        private final String c;

        @bq7("questions")
        private final List<g> d;

        /* JADX INFO: renamed from: yk6$a$a, reason: collision with other inner class name */
        public static final class C0362a implements g {

            @bq7("value")
            private final String a;

            @bq7("required")
            private final boolean b;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String c;

            @bq7("skip")
            private final boolean d;

            @bq7(TJKeyValueStorageKt.KEY)
            private final String e;

            @bq7("hint")
            private final d f;

            public C0362a(String str, boolean z, String str2, boolean z2, String str3, d dVar) {
                str2.getClass();
                str3.getClass();
                this.a = str;
                this.b = z;
                this.c = str2;
                this.d = z2;
                this.e = str3;
                this.f = dVar;
            }

            @Override // yk6.a.g
            public final w56 a(String str) {
                str.getClass();
                String str2 = this.e;
                boolean z = this.b;
                String str3 = this.c;
                Integer numValueOf = Integer.valueOf(R.drawable.ic_arrow_right);
                String str4 = this.a;
                String str5 = str4 == null ? "" : str4;
                String str6 = str4 == null ? "" : str4;
                boolean z2 = this.d;
                d dVar = this.f;
                String strC = dVar != null ? dVar.c() : null;
                return new m56(str2, false, z, str3, numValueOf, str5, str6, z2, strC == null ? "" : strC);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0362a)) {
                    return false;
                }
                C0362a c0362a = (C0362a) obj;
                return aa4.e(this.a, c0362a.a) && this.b == c0362a.b && aa4.e(this.c, c0362a.c) && this.d == c0362a.d && aa4.e(this.e, c0362a.e) && aa4.e(this.f, c0362a.f);
            }

            public final int hashCode() {
                String str = this.a;
                int iB = zg.b(tg.c(zg.b(tg.c((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
                d dVar = this.f;
                return iB + (dVar != null ? dVar.hashCode() : 0);
            }

            public final String toString() {
                String str = this.a;
                boolean z = this.b;
                String str2 = this.c;
                boolean z2 = this.d;
                String str3 = this.e;
                d dVar = this.f;
                StringBuilder sbB = p2.b("AreaQuestionResponse(value=", str, ", required=", ", title=", z);
                ud.f(sbB, str2, ", skip=", z2, ", key=");
                sbB.append(str3);
                sbB.append(", hint=");
                sbB.append(dVar);
                sbB.append(")");
                return sbB.toString();
            }
        }

        public static final class b implements g {

            @bq7("value")
            private final String a;

            @bq7("required")
            private final boolean b;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String c;

            @bq7(TJKeyValueStorageKt.KEY)
            private final String d;

            @bq7("skip")
            private final boolean e;

            @bq7("hint")
            private final d f;

            public b(String str, boolean z, String str2, String str3, boolean z2, d dVar) {
                str2.getClass();
                str3.getClass();
                this.a = str;
                this.b = z;
                this.c = str2;
                this.d = str3;
                this.e = z2;
                this.f = dVar;
            }

            @Override // yk6.a.g
            public final w56 a(String str) {
                String strB;
                String strC;
                String str2;
                str.getClass();
                String str3 = this.c;
                d dVar = this.f;
                if (dVar != null) {
                    strC = dVar.c();
                    strB = null;
                } else {
                    strB = null;
                    strC = null;
                }
                String str4 = this.d;
                boolean z = this.b;
                String str5 = this.a;
                if (str5 != null) {
                    DateTimeFormatter dateTimeFormatter = qb2.a;
                    str5.getClass();
                    str2 = qb2.a.format(qb2.b.parse(str5));
                    str2.getClass();
                } else {
                    str2 = strB;
                }
                if (str2 == null) {
                    str2 = "";
                }
                String str6 = this.a;
                String str7 = str6 == null ? "" : str6;
                d dVar2 = this.f;
                String strA = dVar2 != null ? dVar2.a() : strB;
                d dVar3 = this.f;
                if (dVar3 != null) {
                    strB = dVar3.b();
                }
                return new n56(str4, false, z, str2, this.e, str3, strC, str, str7, strA, strB);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return aa4.e(this.a, bVar.a) && this.b == bVar.b && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && this.e == bVar.e && aa4.e(this.f, bVar.f);
            }

            public final int hashCode() {
                String str = this.a;
                int iC = tg.c(zg.b(zg.b(tg.c((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
                d dVar = this.f;
                return iC + (dVar != null ? dVar.hashCode() : 0);
            }

            public final String toString() {
                String str = this.a;
                boolean z = this.b;
                String str2 = this.c;
                String str3 = this.d;
                boolean z2 = this.e;
                d dVar = this.f;
                StringBuilder sbB = p2.b("DateQuestionResponse(value=", str, ", required=", ", title=", z);
                kv2.c(sbB, str2, ", key=", str3, ", skip=");
                sbB.append(z2);
                sbB.append(", hint=");
                sbB.append(dVar);
                sbB.append(")");
                return sbB.toString();
            }
        }

        public static final class c implements g {

            @bq7("options")
            private final List<C0363a> a;

            @bq7("required")
            private final boolean b;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String c;

            @bq7(TJKeyValueStorageKt.KEY)
            private final String d;

            @bq7("skip")
            private final boolean e;

            @bq7("hint")
            private final d f;

            /* JADX INFO: renamed from: yk6$a$c$a, reason: collision with other inner class name */
            public static final class C0363a {

                @bq7(TJKeyValueStorageKt.KEY)
                private final String a;

                @bq7("selected")
                private final boolean b;

                @bq7(TJAdUnitConstants.String.TITLE)
                private final String c;

                @bq7("subQuestions")
                private final List<c> d;

                public C0363a(String str, boolean z, String str2, List<c> list) {
                    str.getClass();
                    str2.getClass();
                    this.a = str;
                    this.b = z;
                    this.c = str2;
                    this.d = list;
                }

                public final boolean a() {
                    return this.b;
                }

                public final s56.a b(String str, String str2) {
                    List arrayList;
                    str.getClass();
                    str2.getClass();
                    String str3 = this.a;
                    String str4 = this.c;
                    boolean z = this.b;
                    List<c> list = this.d;
                    if (list != null) {
                        List<c> list2 = list;
                        arrayList = new ArrayList(kn1.q(list2, 10));
                        Iterator<T> it = list2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((c) it.next()).a(str));
                        }
                    } else {
                        arrayList = null;
                    }
                    if (arrayList == null) {
                        arrayList = kx2.b;
                    }
                    return new s56.a(str, str2, str3, str4, z, arrayList);
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof C0363a)) {
                        return false;
                    }
                    C0363a c0363a = (C0363a) obj;
                    return aa4.e(this.a, c0363a.a) && this.b == c0363a.b && aa4.e(this.c, c0363a.c) && aa4.e(this.d, c0363a.d);
                }

                public final int hashCode() {
                    int iB = zg.b(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c);
                    List<c> list = this.d;
                    return iB + (list == null ? 0 : list.hashCode());
                }

                public final String toString() {
                    String str = this.a;
                    boolean z = this.b;
                    String str2 = this.c;
                    List<c> list = this.d;
                    StringBuilder sbB = p2.b("OptionResponse(key=", str, ", selected=", ", title=", z);
                    sbB.append(str2);
                    sbB.append(", subQuestions=");
                    sbB.append(list);
                    sbB.append(")");
                    return sbB.toString();
                }
            }

            public c(List<C0363a> list, boolean z, String str, String str2, boolean z2, d dVar) {
                list.getClass();
                str.getClass();
                str2.getClass();
                this.a = list;
                this.b = z;
                this.c = str;
                this.d = str2;
                this.e = z2;
                this.f = dVar;
            }

            @Override // yk6.a.g
            public final w56 a(String str) {
                Object next;
                str.getClass();
                Iterator<T> it = this.a.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!((C0363a) next).a());
                C0363a c0363a = (C0363a) next;
                s56.a aVarB = c0363a != null ? c0363a.b(str, this.d) : null;
                List<C0363a> list = this.a;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((C0363a) it2.next()).b(str, this.d));
                }
                String str2 = this.c;
                String str3 = this.d;
                boolean z = this.e;
                d dVar = this.f;
                String strC = dVar != null ? dVar.c() : null;
                boolean z2 = this.b;
                String str4 = aVarB != null ? aVarB.d : null;
                String str5 = str4 == null ? "" : str4;
                String str6 = aVarB != null ? aVarB.d : null;
                return new s56(arrayList, str2, aVarB, strC, Integer.valueOf(R.drawable.ic_arrow_right), str3, false, z2, str5, str6 == null ? "" : str6, z);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                return aa4.e(this.a, cVar.a) && this.b == cVar.b && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && this.e == cVar.e && aa4.e(this.f, cVar.f);
            }

            public final int hashCode() {
                int iC = tg.c(zg.b(zg.b(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
                d dVar = this.f;
                return iC + (dVar == null ? 0 : dVar.hashCode());
            }

            public final String toString() {
                List<C0363a> list = this.a;
                boolean z = this.b;
                String str = this.c;
                String str2 = this.d;
                boolean z2 = this.e;
                d dVar = this.f;
                StringBuilder sb = new StringBuilder("DropDownQuestionResponse(options=");
                sb.append(list);
                sb.append(", required=");
                sb.append(z);
                sb.append(", title=");
                kv2.c(sb, str, ", key=", str2, ", skip=");
                sb.append(z2);
                sb.append(", hint=");
                sb.append(dVar);
                sb.append(")");
                return sb.toString();
            }
        }

        public static final class d {

            @bq7("text")
            private final String a;

            @bq7("errorText")
            private final String b;

            @bq7("regex")
            private final String c;

            public d(String str, String str2, String str3) {
                x7.b(str, str2, str3);
                this.a = str;
                this.b = str2;
                this.c = str3;
            }

            public final String a() {
                return this.b;
            }

            public final String b() {
                return this.c;
            }

            public final String c() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c);
            }

            public final int hashCode() {
                return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return me0.d(ad2.d("HintResponse(text=", str, ", errorText=", str2, ", regex="), this.c, ")");
            }
        }

        public static final class e implements g {
            public static final e a = new e();

            static {
                new String();
                new String();
            }

            @Override // yk6.a.g
            public final w56 a(String str) throws Exception {
                str.getClass();
                throw new Exception("Not supported question type");
            }
        }

        public static final class f implements g {

            @bq7("value")
            private final String a;

            @bq7("required")
            private final boolean b;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String c;

            @bq7(TJKeyValueStorageKt.KEY)
            private final String d;

            @bq7("skip")
            private final boolean e;

            public f(String str, boolean z, String str2, String str3, boolean z2) {
                str2.getClass();
                str3.getClass();
                this.a = str;
                this.b = z;
                this.c = str2;
                this.d = str3;
                this.e = z2;
            }

            @Override // yk6.a.g
            public final w56 a(String str) {
                str.getClass();
                String str2 = this.d;
                boolean z = this.b;
                String str3 = this.c;
                String str4 = this.a;
                return new c66(str2, false, z, str4 == null ? "" : str4, this.e, str4 == null ? "" : str4, str3);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof f)) {
                    return false;
                }
                f fVar = (f) obj;
                return aa4.e(this.a, fVar.a) && this.b == fVar.b && aa4.e(this.c, fVar.c) && aa4.e(this.d, fVar.d) && this.e == fVar.e;
            }

            public final int hashCode() {
                String str = this.a;
                return Boolean.hashCode(this.e) + zg.b(zg.b(tg.c((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c), 31, this.d);
            }

            public final String toString() {
                String str = this.a;
                boolean z = this.b;
                String str2 = this.c;
                String str3 = this.d;
                boolean z2 = this.e;
                StringBuilder sbB = p2.b("PhoneEditQuestionResponse(value=", str, ", required=", ", title=", z);
                kv2.c(sbB, str2, ", key=", str3, ", skip=");
                return dh.e(sbB, z2, ")");
            }
        }

        public interface g {
            w56 a(String str);
        }

        public static final class h implements g {

            @bq7("required")
            private final boolean a;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String b;

            @bq7(TJKeyValueStorageKt.KEY)
            private final String c;

            @bq7("skip")
            private final boolean d;

            @bq7("options")
            private final List<C0364a> e;

            /* JADX INFO: renamed from: yk6$a$h$a, reason: collision with other inner class name */
            public static final class C0364a {

                @bq7("selected")
                private final boolean a;

                @bq7(TJKeyValueStorageKt.KEY)
                private final String b;

                @bq7(TJAdUnitConstants.String.TITLE)
                private final String c;

                @bq7("subQuestions")
                private final List<c> d;

                public C0364a(boolean z, String str, String str2, List<c> list) {
                    str.getClass();
                    str2.getClass();
                    this.a = z;
                    this.b = str;
                    this.c = str2;
                    this.d = list;
                }

                public final String a() {
                    return this.b;
                }

                public final boolean b() {
                    return this.a;
                }

                public final List<c> c() {
                    return this.d;
                }

                public final String d() {
                    return this.c;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof C0364a)) {
                        return false;
                    }
                    C0364a c0364a = (C0364a) obj;
                    return this.a == c0364a.a && aa4.e(this.b, c0364a.b) && aa4.e(this.c, c0364a.c) && aa4.e(this.d, c0364a.d);
                }

                public final int hashCode() {
                    int iB = zg.b(zg.b(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c);
                    List<c> list = this.d;
                    return iB + (list == null ? 0 : list.hashCode());
                }

                public final String toString() {
                    return "OptionResponse(selected=" + this.a + ", key=" + this.b + ", title=" + this.c + ", subQuestions=" + this.d + ")";
                }
            }

            public h(boolean z, String str, String str2, boolean z2, List<C0364a> list) {
                str.getClass();
                str2.getClass();
                list.getClass();
                this.a = z;
                this.b = str;
                this.c = str2;
                this.d = z2;
                this.e = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r15v0, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r8v4 */
            /* JADX WARN: Type inference failed for: r8v5 */
            /* JADX WARN: Type inference failed for: r8v6, types: [kx2] */
            /* JADX WARN: Type inference failed for: r8v7, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r8v8 */
            @Override // yk6.a.g
            public final w56 a(String str) {
                Object next;
                Object next2;
                str.getClass();
                String str2 = this.b;
                String str3 = this.c;
                boolean z = this.a;
                List<C0364a> list = this.e;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                Iterator it = list.iterator();
                while (true) {
                    ?? arrayList2 = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    C0364a c0364a = (C0364a) it.next();
                    String strD = c0364a.d();
                    String strA = c0364a.a();
                    String str4 = this.c;
                    boolean zB = c0364a.b();
                    List<c> listC = c0364a.c();
                    if (listC != null) {
                        List<c> list2 = listC;
                        arrayList2 = new ArrayList(kn1.q(list2, 10));
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((c) it2.next()).a(str));
                        }
                    }
                    if (arrayList2 == 0) {
                        arrayList2 = kx2.b;
                    }
                    arrayList.add(new j56(strD, str, str4, strA, zB, arrayList2));
                }
                boolean z2 = this.d;
                Iterator it3 = this.e.iterator();
                do {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it3.next();
                } while (!((C0364a) next).b());
                C0364a c0364a2 = (C0364a) next;
                String strA2 = c0364a2 != null ? c0364a2.a() : null;
                if (strA2 == null) {
                    strA2 = "";
                }
                Iterator it4 = this.e.iterator();
                do {
                    if (!it4.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it4.next();
                } while (!((C0364a) next2).b());
                C0364a c0364a3 = (C0364a) next2;
                String strA3 = c0364a3 != null ? c0364a3.a() : null;
                return new o66(str2, arrayList, strA3 != null ? strA3 : "", str3, false, z, strA2, z2);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof h)) {
                    return false;
                }
                h hVar = (h) obj;
                return this.a == hVar.a && aa4.e(this.b, hVar.b) && aa4.e(this.c, hVar.c) && this.d == hVar.d && aa4.e(this.e, hVar.e);
            }

            public final int hashCode() {
                return this.e.hashCode() + tg.c(zg.b(zg.b(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
            }

            public final String toString() {
                boolean z = this.a;
                String str = this.b;
                String str2 = this.c;
                boolean z2 = this.d;
                List<C0364a> list = this.e;
                StringBuilder sb = new StringBuilder("SingleChoiceQuestionResponse(required=");
                sb.append(z);
                sb.append(", title=");
                sb.append(str);
                sb.append(", key=");
                ud.f(sb, str2, ", skip=", z2, ", options=");
                return bg.e(")", list, sb);
            }
        }

        public static final class i implements g {

            @bq7("value")
            private final String a;

            @bq7("required")
            private final boolean b;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String c;

            @bq7(TJKeyValueStorageKt.KEY)
            private final String d;

            @bq7("skip")
            private final boolean e;

            @bq7("hint")
            private final d f;

            public i(String str, boolean z, String str2, String str3, boolean z2, d dVar) {
                str2.getClass();
                str3.getClass();
                this.a = str;
                this.b = z;
                this.c = str2;
                this.d = str3;
                this.e = z2;
                this.f = dVar;
            }

            @Override // yk6.a.g
            public final w56 a(String str) {
                String strB;
                String strC;
                str.getClass();
                String str2 = this.c;
                d dVar = this.f;
                if (dVar != null) {
                    strC = dVar.c();
                    strB = null;
                } else {
                    strB = null;
                    strC = null;
                }
                String str3 = this.d;
                boolean z = this.b;
                String str4 = this.a;
                String str5 = str4 != null ? str4 : "";
                String str6 = str4 == null ? "" : str4;
                d dVar2 = this.f;
                String strA = dVar2 != null ? dVar2.a() : strB;
                d dVar3 = this.f;
                if (dVar3 != null) {
                    strB = dVar3.b();
                }
                return new d66(str3, false, z, str5, this.e, str2, strC, str, str6, strA, strB);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof i)) {
                    return false;
                }
                i iVar = (i) obj;
                return aa4.e(this.a, iVar.a) && this.b == iVar.b && aa4.e(this.c, iVar.c) && aa4.e(this.d, iVar.d) && this.e == iVar.e && aa4.e(this.f, iVar.f);
            }

            public final int hashCode() {
                String str = this.a;
                int iC = tg.c(zg.b(zg.b(tg.c((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
                d dVar = this.f;
                return iC + (dVar != null ? dVar.hashCode() : 0);
            }

            public final String toString() {
                String str = this.a;
                boolean z = this.b;
                String str2 = this.c;
                String str3 = this.d;
                boolean z2 = this.e;
                d dVar = this.f;
                StringBuilder sbB = p2.b("TextQuestionResponse(value=", str, ", required=", ", title=", z);
                kv2.c(sbB, str2, ", key=", str3, ", skip=");
                sbB.append(z2);
                sbB.append(", hint=");
                sbB.append(dVar);
                sbB.append(")");
                return sbB.toString();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(String str, String str2, String str3, List<? extends g> list) {
            str.getClass();
            str3.getClass();
            list.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = list;
        }

        public final f56 a(String str) {
            str.getClass();
            String str2 = this.a;
            String str3 = this.b;
            String str4 = this.c;
            List<g> list = this.d;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!(((g) obj) instanceof e)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((g) it.next()).a(str));
            }
            return new f56(str2, str3, str4, str, arrayList2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return this.d.hashCode() + zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            List<g> list = this.d;
            StringBuilder sbD = ad2.d("BlockResponse(title=", str, ", infoText=", str2, ", iconUrl=");
            sbD.append(str3);
            sbD.append(", questions=");
            sbD.append(list);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("description")
        private final String b;

        @bq7("value")
        private final String c;

        @bq7("mainButton")
        private final a d;

        @bq7("statusBadgeText")
        private final String e;

        @bq7(NotificationCompat.CATEGORY_STATUS)
        private final EnumC0365b f;

        @bq7("iconUrl")
        private final String g;

        public static final class a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            public a(String str) {
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
                return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("ButtonResponse(title=", this.a, ")");
            }
        }

        /* JADX INFO: renamed from: yk6$b$b, reason: collision with other inner class name */
        public enum EnumC0365b {
            NOT_SET,
            CONFIRMED
        }

        public static final /* synthetic */ class c {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[EnumC0365b.values().length];
                try {
                    iArr[EnumC0365b.NOT_SET.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EnumC0365b.CONFIRMED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public b(String str, String str2, String str3, a aVar, String str4, EnumC0365b enumC0365b, String str5) {
            str.getClass();
            str2.getClass();
            enumC0365b.getClass();
            str5.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = aVar;
            this.e = str4;
            this.f = enumC0365b;
            this.g = str5;
        }

        public final v56 a() {
            v56.b bVar;
            String str = this.g;
            String str2 = this.a;
            String str3 = this.b;
            a aVar = this.d;
            String strA = aVar != null ? aVar.a() : null;
            String str4 = this.e;
            v56.a aVar2 = str4 != null ? new v56.a(str4) : null;
            String str5 = this.c;
            int i = c.a[this.f.ordinal()];
            if (i == 1) {
                bVar = v56.b.NotSet;
            } else {
                if (i != 2) {
                    me0.e();
                    return null;
                }
                bVar = v56.b.Set;
            }
            return new v56(str, str2, str3, strA, aVar2, str5, bVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e) && this.f == bVar.f && aa4.e(this.g, bVar.g);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            a aVar = this.d;
            int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
            String str2 = this.e;
            int iHashCode3 = str2 != null ? str2.hashCode() : 0;
            return this.g.hashCode() + ((this.f.hashCode() + ((iHashCode2 + iHashCode3) * 31)) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            a aVar = this.d;
            String str4 = this.e;
            EnumC0365b enumC0365b = this.f;
            String str5 = this.g;
            StringBuilder sbD = ad2.d("EmailBannerResponse(title=", str, ", description=", str2, ", value=");
            sbD.append(str3);
            sbD.append(", mainButton=");
            sbD.append(aVar);
            sbD.append(", statusBadgeText=");
            sbD.append(str4);
            sbD.append(", status=");
            sbD.append(enumC0365b);
            sbD.append(", iconUrl=");
            return me0.d(sbD, str5, ")");
        }
    }

    public static final class c {

        @bq7("text")
        private final String a;

        @bq7("textColor")
        private final String b;

        @bq7("backgroundColor")
        private final String c;

        @bq7("badge")
        private final a d;

        @bq7("iconUrl")
        private final String e;

        public static final class a {

            @bq7("text")
            private final String a;

            @bq7("textColor")
            private final String b;

            @bq7("backgroundColor")
            private final String c;

            public a(String str, String str2, String str3) {
                x7.b(str, str2, str3);
                this.a = str;
                this.b = str2;
                this.c = str3;
            }

            public final b56.a a() {
                String str = this.a;
                Integer numC = uc5.c(this.b);
                int iIntValue = numC != null ? numC.intValue() : Color.parseColor("#ffffff");
                Integer numC2 = uc5.c(this.c);
                return new b56.a(str, iIntValue, numC2 != null ? numC2.intValue() : Color.parseColor("#ffb300"));
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
                return me0.d(ad2.d("BadgeResponse(text=", str, ", textColor=", str2, ", backgroundColor="), this.c, ")");
            }
        }

        public c(String str, String str2, String str3, a aVar, String str4) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            aVar.getClass();
            str4.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = aVar;
            this.e = str4;
        }

        public final b56 a() {
            String str = this.a;
            Integer numC = uc5.c(this.b);
            int iIntValue = numC != null ? numC.intValue() : Color.parseColor("#ffffff");
            Integer numC2 = uc5.c(this.c);
            return new b56(str, this.d.a(), numC2 != null ? numC2.intValue() : Color.parseColor("#ffb300"), iIntValue, this.e);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && aa4.e(this.e, cVar.e);
        }

        public final int hashCode() {
            return this.e.hashCode() + ((this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c)) * 31);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            a aVar = this.d;
            String str4 = this.e;
            StringBuilder sbD = ad2.d("HeaderBanner(text=", str, ", textColor=", str2, ", backgroundColor=");
            sbD.append(str3);
            sbD.append(", badge=");
            sbD.append(aVar);
            sbD.append(", iconUrl=");
            return me0.d(sbD, str4, ")");
        }
    }

    public static final class d {

        @bq7("iconUrl")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("mainButton")
        private final a d;

        @bq7("secondaryButton")
        private final a e;

        public static final class a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
            private final EnumC0366a b;

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: renamed from: yk6$d$a$a, reason: collision with other inner class name */
            public static final class EnumC0366a {
                private static final /* synthetic */ EnumC0366a[] $VALUES;
                public static final EnumC0366a CLOSE;
                public static final EnumC0366a CONTINUE;
                public static final EnumC0366a END;

                static {
                    EnumC0366a enumC0366a = new EnumC0366a("CLOSE", 0);
                    CLOSE = enumC0366a;
                    EnumC0366a enumC0366a2 = new EnumC0366a("END", 1);
                    END = enumC0366a2;
                    EnumC0366a enumC0366a3 = new EnumC0366a("CONTINUE", 2);
                    CONTINUE = enumC0366a3;
                    $VALUES = new EnumC0366a[]{enumC0366a, enumC0366a2, enumC0366a3};
                }

                public EnumC0366a() {
                    throw null;
                }

                public static EnumC0366a valueOf(String str) {
                    return (EnumC0366a) Enum.valueOf(EnumC0366a.class, str);
                }

                public static EnumC0366a[] values() {
                    return (EnumC0366a[]) $VALUES.clone();
                }
            }

            public a(String str, EnumC0366a enumC0366a) {
                str.getClass();
                this.a = str;
                this.b = enumC0366a;
            }

            public final String a() {
                return this.a;
            }

            public final EnumC0366a b() {
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
                return aa4.e(this.a, aVar.a) && this.b == aVar.b;
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                EnumC0366a enumC0366a = this.b;
                return iHashCode + (enumC0366a == null ? 0 : enumC0366a.hashCode());
            }

            public final String toString() {
                return "ButtonResponse(title=" + this.a + ", type=" + this.b + ")";
            }
        }

        public d(String str, String str2, String str3, a aVar, a aVar2) {
            str2.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = aVar;
            this.e = aVar2;
        }

        public final com.warefly.checkscan.personalform.presentation.form.bottomSheet.a a() {
            String str = this.b;
            String str2 = this.c;
            String str3 = this.a;
            if (str3 == null) {
                str3 = "";
            }
            String str4 = str3;
            a aVar = this.d;
            com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.b bVar = null;
            com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.C0158a c0158a = aVar != null ? new com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.C0158a(aVar.a()) : null;
            a aVar2 = this.e;
            if (aVar2 != null) {
                bVar = new com.warefly.checkscan.personalform.presentation.form.bottomSheet.a.b(aVar2.a(), this.e.b() != a.EnumC0366a.CONTINUE);
            }
            return new com.warefly.checkscan.personalform.presentation.form.bottomSheet.a(str, str2, str4, c0158a, bVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c) && aa4.e(this.d, dVar.d) && aa4.e(this.e, dVar.e);
        }

        public final int hashCode() {
            String str = this.a;
            int iB = zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c);
            a aVar = this.d;
            int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
            a aVar2 = this.e;
            return iHashCode + (aVar2 != null ? aVar2.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            a aVar = this.d;
            a aVar2 = this.e;
            StringBuilder sbD = ad2.d("IncompleteWarningResponse(iconUrl=", str, ", title=", str2, ", text=");
            sbD.append(str3);
            sbD.append(", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondaryButton=");
            sbD.append(aVar2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public yk6(List<c> list, d dVar, List<a> list2, b bVar) {
        list.getClass();
        list2.getClass();
        this.a = list;
        this.b = dVar;
        this.c = list2;
        this.d = bVar;
    }

    public final b a() {
        return this.d;
    }

    public final d b() {
        return this.b;
    }

    public final ArrayList c() {
        List<c> list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((c) it.next()).a());
        }
        b bVar = this.d;
        ArrayList arrayListH0 = qn1.h0(u96.j(bVar != null ? bVar.a() : null), arrayList);
        List<a> list2 = this.c;
        ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            arrayList2.add(((a) obj).a(String.valueOf(i)));
            i = i2;
        }
        return qn1.h0(arrayList2, arrayListH0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yk6)) {
            return false;
        }
        yk6 yk6Var = (yk6) obj;
        return aa4.e(this.a, yk6Var.a) && aa4.e(this.b, yk6Var.b) && aa4.e(this.c, yk6Var.c) && aa4.e(this.d, yk6Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        d dVar = this.b;
        int iB = e2.b(this.c, (iHashCode + (dVar == null ? 0 : dVar.hashCode())) * 31, 31);
        b bVar = this.d;
        return iB + (bVar != null ? bVar.hashCode() : 0);
    }

    public final String toString() {
        return "ProfileDataFormResponse(headerBanners=" + this.a + ", incompleteWarning=" + this.b + ", blocks=" + this.c + ", emailBanner=" + this.d + ")";
    }
}
