package defpackage;

import com.tapjoy.TJDeviceNetworkKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ry8 {

    @bq7("desktop")
    private final boolean a;

    @bq7(TJDeviceNetworkKt.TJC_CONNECTION_TYPE_MOBILE)
    private final boolean b;

    @bq7("app")
    private final boolean c;

    public ry8(boolean z, boolean z2, boolean z3) {
        this.a = z;
        this.b = z2;
        this.c = z3;
    }

    public final boolean a() {
        return this.c;
    }

    public final boolean b() {
        return this.a;
    }

    public final boolean c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ry8)) {
            return false;
        }
        ry8 ry8Var = (ry8) obj;
        return this.a == ry8Var.a && this.b == ry8Var.b && this.c == ry8Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + tg.c(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        boolean z = this.a;
        boolean z2 = this.b;
        boolean z3 = this.c;
        StringBuilder sb = new StringBuilder("TrackingResponse(desktop=");
        sb.append(z);
        sb.append(", mobile=");
        sb.append(z2);
        sb.append(", app=");
        return dh.e(sb, z3, ")");
    }
}
