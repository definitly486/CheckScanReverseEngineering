package defpackage;

import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes5.dex */
public final class f10 {

    @bq7("virtualCardId")
    private final long a;

    @bq7("balance")
    private final b b;

    @bq7("autoTransfer")
    private final a c;

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
            return "AutoTransferResponse(active=" + this.a + ", text=" + this.b + ")";
        }
    }

    public static final class b {

        @bq7("topText")
        private final String a;

        @bq7("text")
        private final String b;

        public b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return n2.d("BalanceResponse(topText=", this.a, ", text=", this.b, ")");
        }
    }

    public f10(long j, b bVar, a aVar) {
        bVar.getClass();
        this.a = j;
        this.b = bVar;
        this.c = aVar;
    }

    public final long a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f10)) {
            return false;
        }
        f10 f10Var = (f10) obj;
        return this.a == f10Var.a && aa4.e(this.b, f10Var.b) && aa4.e(this.c, f10Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31;
        a aVar = this.c;
        return iHashCode + (aVar == null ? 0 : aVar.hashCode());
    }

    public final String toString() {
        return "BalanceBlockCardManagementResponse(virtualCardId=" + this.a + ", balance=" + this.b + ", autoTransfer=" + this.c + ")";
    }
}
