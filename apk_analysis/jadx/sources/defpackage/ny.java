package defpackage;

import com.google.firebase.encoders.annotations.Encodable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ny extends fi0 {
    public final ArrayList a;

    public ny(ArrayList arrayList) {
        this.a = arrayList;
    }

    @Override // defpackage.fi0
    @Encodable.Field(name = "logRequest")
    public final List<av4> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof fi0) {
            return this.a.equals(((fi0) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.a + "}";
    }
}
