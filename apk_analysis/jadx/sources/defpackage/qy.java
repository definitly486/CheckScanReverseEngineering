package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class qy extends k62 {
    public final Context a;
    public final hm1 b;
    public final hm1 c;
    public final String d;

    public qy(Context context, hm1 hm1Var, hm1 hm1Var2, String str) {
        if (context == null) {
            o2.d("Null applicationContext");
            throw null;
        }
        this.a = context;
        if (hm1Var == null) {
            o2.d("Null wallClock");
            throw null;
        }
        this.b = hm1Var;
        if (hm1Var2 == null) {
            o2.d("Null monotonicClock");
            throw null;
        }
        this.c = hm1Var2;
        if (str != null) {
            this.d = str;
        } else {
            o2.d("Null backendName");
            throw null;
        }
    }

    @Override // defpackage.k62
    public final Context a() {
        return this.a;
    }

    @Override // defpackage.k62
    public final String b() {
        return this.d;
    }

    @Override // defpackage.k62
    public final hm1 c() {
        return this.c;
    }

    @Override // defpackage.k62
    public final hm1 d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k62)) {
            return false;
        }
        k62 k62Var = (k62) obj;
        return this.a.equals(k62Var.a()) && this.b.equals(k62Var.d()) && this.c.equals(k62Var.c()) && this.d.equals(k62Var.b());
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.a);
        sb.append(", wallClock=");
        sb.append(this.b);
        sb.append(", monotonicClock=");
        sb.append(this.c);
        sb.append(", backendName=");
        return me0.d(sb, this.d, "}");
    }
}
