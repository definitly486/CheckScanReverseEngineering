package defpackage;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class e09 {

    @bq7(TJAdUnitConstants.String.MESSAGE)
    private final String a;

    @bq7("code")
    private final String b;

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final a c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a FAIL;
        public static final a SUCCESS;

        static {
            a aVar = new a("SUCCESS", 0);
            SUCCESS = aVar;
            a aVar2 = new a("FAIL", 1);
            FAIL = aVar2;
            $VALUES = new a[]{aVar, aVar2};
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

    public e09(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
        aVar.getClass();
        this.a = str;
        this.b = str2;
        this.c = aVar;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final a c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e09)) {
            return false;
        }
        e09 e09Var = (e09) obj;
        return aa4.e(this.a, e09Var.a) && aa4.e(this.b, e09Var.b) && this.c == e09Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        a aVar = this.c;
        StringBuilder sbD = ad2.d("TransferResultMetro(message=", str, ", code=", str2, ", status=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
