package defpackage;

import com.google.android.gms.internal.auth.zzdj;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class z5b implements Serializable, zzdj {
    public final Object b;

    public z5b(Object obj) {
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof z5b)) {
            return false;
        }
        Object obj2 = ((z5b) obj).b;
        Object obj3 = this.b;
        return obj3 == obj2 || obj3.equals(obj2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b});
    }

    public final String toString() {
        return me0.c("Suppliers.ofInstance(", this.b.toString(), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        return this.b;
    }
}
