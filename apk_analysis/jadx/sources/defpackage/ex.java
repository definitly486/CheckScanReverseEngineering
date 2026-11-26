package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes.dex */
public interface ex {

    public static final class a implements ex {

        @bq7("confirmType")
        private final dw1 a;

        @bq7(TypedValues.AttributesType.S_TARGET)
        private final String b;

        @bq7("codeLength")
        private final int c;

        public a(dw1 dw1Var, String str, int i) {
            str.getClass();
            this.a = dw1Var;
            this.b = str;
            this.c = i;
        }

        public final int a() {
            return this.c;
        }

        public final dw1 b() {
            return this.a;
        }

        public final String c() {
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && this.c == aVar.c;
        }

        public final int hashCode() {
            dw1 dw1Var = this.a;
            return Integer.hashCode(this.c) + zg.b((dw1Var == null ? 0 : dw1Var.hashCode()) * 31, 31, this.b);
        }

        public final String toString() {
            dw1 dw1Var = this.a;
            String str = this.b;
            int i = this.c;
            StringBuilder sb = new StringBuilder("OtpConfirmResponse(confirmType=");
            sb.append(dw1Var);
            sb.append(", target=");
            sb.append(str);
            sb.append(", codeLength=");
            return l2.e(sb, ")", i);
        }
    }

    public static final class b implements ex {

        @bq7("callPhone")
        private final String a;

        @bq7("hasEmail")
        private final boolean b;

        @bq7("emailMask")
        private final String c;

        public b(String str, boolean z, String str2) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = str2;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b && aa4.e(this.c, bVar.c);
        }

        public final int hashCode() {
            int iC = tg.c(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            return iC + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            String str = this.a;
            boolean z = this.b;
            return me0.d(p2.b("UserCallResponse(callPhone=", str, ", hasEmail=", ", emailMask=", z), this.c, ")");
        }
    }
}
