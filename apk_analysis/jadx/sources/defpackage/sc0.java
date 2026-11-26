package defpackage;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class sc0 {
    public final int a;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof sc0) && this.a == ((sc0) obj).a && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.a), Boolean.FALSE, null, null);
    }
}
