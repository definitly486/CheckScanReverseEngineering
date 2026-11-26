package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class jm7 {

    public static final class a extends jm7 {
        public static final a e = new a(null, "Что-то пошло не так", "Пожалуйста повторите попытку позже", "Понятно");
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        public a(String str, String str2, String str3, String str4) {
            x7.b(str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
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
            String str = this.a;
            return this.d.hashCode() + zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            return dg.c(ad2.d("Error(iconUrl=", this.a, ", title=", this.b, ", description="), this.c, ", buttonTitle=", this.d, ")");
        }
    }

    public static final class b extends jm7 {
        public final String a;
        public final String b;
        public final String c;
        public final String d;
        public final String e;
        public final String f;

        public b(String str, String str2, String str3, String str4, String str5, String str6) {
            x7.b(str2, str3, str5);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e) && aa4.e(this.f, bVar.f);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
            String str = this.f;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("Success(iconUrl=", this.a, ", title=", this.b, ", description=");
            kv2.c(sbD, this.c, ", promocode=", this.d, ", mainButtonTitle=");
            return dg.c(sbD, this.e, ", useUrl=", this.f, ")");
        }
    }
}
