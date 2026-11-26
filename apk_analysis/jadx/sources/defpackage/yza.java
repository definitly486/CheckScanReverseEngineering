package defpackage;

import android.content.Context;
import com.google.android.gms.internal.auth.zzdj;

/* JADX INFO: loaded from: classes4.dex */
public final class yza extends k3b {
    public final Context a;
    public final zzdj b;

    public yza(Context context, zzdj zzdjVar) {
        this.a = context;
        this.b = zzdjVar;
    }

    @Override // defpackage.k3b
    public final Context a() {
        return this.a;
    }

    @Override // defpackage.k3b
    public final zzdj b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k3b)) {
            return false;
        }
        k3b k3bVar = (k3b) obj;
        return this.a.equals(k3bVar.a()) && this.b.equals(k3bVar.b());
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return n2.d("FlagsContext{context=", this.a.toString(), ", hermeticFileOverrides=", this.b.toString(), "}");
    }
}
