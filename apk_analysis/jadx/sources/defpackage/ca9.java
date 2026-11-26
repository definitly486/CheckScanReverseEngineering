package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ca9 {

    @bq7("cards")
    private final List<a> a;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @bq7("subId")
        private final Long d;

        @bq7("url")
        private final String e;

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final EnumC0122a f;

        /* JADX INFO: renamed from: ca9$a$a, reason: collision with other inner class name */
        public enum EnumC0122a {
            DEFAULT,
            GO_TO_URL
        }

        public static final /* synthetic */ class b {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[EnumC0122a.values().length];
                try {
                    iArr[EnumC0122a.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EnumC0122a.GO_TO_URL.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public a(String str, String str2, String str3, Long l, String str4, EnumC0122a enumC0122a) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = l;
            this.e = str4;
            this.f = enumC0122a;
        }

        public final gj9 a() {
            wi9 eVar;
            wi9 cVar;
            Object obj = this.d;
            if (obj == null && (obj = this.e) == null) {
                obj = -1;
            }
            Object obj2 = obj;
            String str = this.c;
            String str2 = this.a;
            String str3 = this.b;
            EnumC0122a enumC0122a = this.f;
            int i = enumC0122a == null ? -1 : b.a[enumC0122a.ordinal()];
            if (i == -1) {
                eVar = wi9.b.a;
            } else {
                if (i == 1) {
                    Long l = this.d;
                    if (l != null) {
                        cVar = new wi9.c(l.longValue());
                    } else {
                        eVar = wi9.b.a;
                    }
                    return new gj9(obj2, str, str2, str3, cVar);
                }
                if (i != 2) {
                    me0.e();
                    return null;
                }
                String str4 = this.e;
                eVar = str4 != null ? new wi9.e(str4) : wi9.b.a;
            }
            cVar = eVar;
            return new gj9(obj2, str, str2, str3, cVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && this.f == aVar.f;
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
            Long l = this.d;
            int iHashCode = (iB + (l == null ? 0 : l.hashCode())) * 31;
            String str = this.e;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            EnumC0122a enumC0122a = this.f;
            return iHashCode2 + (enumC0122a != null ? enumC0122a.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            Long l = this.d;
            String str4 = this.e;
            EnumC0122a enumC0122a = this.f;
            StringBuilder sbD = ad2.d("Card(title=", str, ", text=", str2, ", logoUrl=");
            sbD.append(str3);
            sbD.append(", subId=");
            sbD.append(l);
            sbD.append(", url=");
            sbD.append(str4);
            sbD.append(", type=");
            sbD.append(enumC0122a);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public ca9(List<a> list) {
        list.getClass();
        this.a = list;
    }

    public final ArrayList a() {
        List<a> list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((a) it.next()).a());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((gj9) obj).a.equals(-1)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ca9) && aa4.e(this.a, ((ca9) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("UserWithdrawalCardsResponse(cards=", this.a, ")");
    }
}
