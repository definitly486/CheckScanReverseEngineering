package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class wi9 {

    public static final class a extends wi9 {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a == ((a) obj).a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            return kv2.b(this.a, "ClaimTask(taskId=", ")");
        }
    }

    public static final class b extends wi9 {
        public static final b a = new b();
    }

    public static final class c extends wi9 {
        public final long a;

        public c(long j) {
            this.a = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.a == ((c) obj).a;
        }

        public final int hashCode() {
            return Long.hashCode(this.a);
        }

        public final String toString() {
            return bg.d(this.a, "OnCardClicked(cardId=", ")");
        }
    }

    public static final class d extends wi9 {
        public final String a;

        public d(String str) {
            str.getClass();
            this.a = str;
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
            return me0.c("OpenBankPage(url=", this.a, ")");
        }
    }

    public static final class e extends wi9 {
        public final String a;

        public e(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && aa4.e(this.a, ((e) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("OpenCustomTab(url=", this.a, ")");
        }
    }

    public static final class f extends wi9 {
    }

    public static final class g extends wi9 {
        public final String a;

        public g(String str) {
            str.getClass();
            this.a = str;
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
            return me0.c("Phone(title=", this.a, ")");
        }
    }

    public static final class h extends wi9 {
        public final String a;

        public h(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && aa4.e(this.a, ((h) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("SBPPhone(title=", this.a, ")");
        }
    }

    public static final class i extends wi9 {
        public final String a;
        public final String b;
        public final boolean c;

        public i(String str, String str2, boolean z) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return aa4.e(this.a, iVar.a) && aa4.e(this.b, iVar.b) && this.c == iVar.c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return dh.e(ad2.d("SendEventAndOpenLink(url=", this.a, ", eventRequest=", this.b, ", needRefresh="), this.c, ")");
        }
    }

    public static final class j extends wi9 {
        public final String a;
        public final boolean b;

        public j(String str, boolean z) {
            str.getClass();
            this.a = str;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return aa4.e(this.a, jVar.a) && this.b == jVar.b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "SendEventRequest(eventRequest=" + this.a + ", needRefresh=" + this.b + ")";
        }
    }

    public static final class k extends wi9 {
        public final ec a;
        public final wi9 b;

        public k(ec ecVar, wi9 wi9Var) {
            wi9Var.getClass();
            this.a = ecVar;
            this.b = wi9Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return aa4.e(this.a, kVar.a) && aa4.e(this.b, kVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "ShowAlertBeforeAction(alertModel=" + this.a + ", afterAlertEvent=" + this.b + ")";
        }
    }

    public static final class l extends wi9 {
        public final List<gj9> a;

        public l(List<gj9> list) {
            list.getClass();
            this.a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof l) && aa4.e(this.a, ((l) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return rs2.c("ShowCards(cards=", this.a, ")");
        }
    }

    public static final class m extends wi9 {
    }
}
