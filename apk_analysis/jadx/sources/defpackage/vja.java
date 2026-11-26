package defpackage;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Objects;
import com.tapjoy.TJKeyValueStorageKt;

/* JADX INFO: loaded from: classes4.dex */
public final class vja {
    public final ApiKey a;
    public final Feature b;

    public /* synthetic */ vja(ApiKey apiKey, Feature feature) {
        this.a = apiKey;
        this.b = feature;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof vja)) {
            return false;
        }
        vja vjaVar = (vja) obj;
        return Objects.equal(this.a, vjaVar.a) && Objects.equal(this.b, vjaVar.b);
    }

    public final int hashCode() {
        return Objects.hashCode(this.a, this.b);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(TJKeyValueStorageKt.KEY, this.a).add("feature", this.b).toString();
    }
}
