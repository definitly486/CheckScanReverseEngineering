package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class w1c extends f3c {
    public final Context a;
    public final kd8 b;

    public w1c(Context context, kd8 kd8Var) {
        this.a = context;
        this.b = kd8Var;
    }

    @Override // defpackage.f3c
    public final Context a() {
        return this.a;
    }

    @Override // defpackage.f3c
    public final kd8 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f3c)) {
            return false;
        }
        f3c f3cVar = (f3c) obj;
        if (!this.a.equals(f3cVar.a())) {
            return false;
        }
        kd8 kd8Var = this.b;
        if (kd8Var == null) {
            return f3cVar.b() == null;
        }
        return kd8Var.equals(f3cVar.b());
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        kd8 kd8Var = this.b;
        return (kd8Var == null ? 0 : kd8Var.hashCode()) ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(length + 45 + strValueOf.length() + 1);
        kv2.c(sb, "FlagsContext{context=", string, ", hermeticFileOverrides=", strValueOf);
        sb.append("}");
        return sb.toString();
    }
}
