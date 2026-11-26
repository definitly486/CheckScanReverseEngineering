package defpackage;

import com.google.android.gms.internal.measurement.zzael;
import com.google.android.gms.internal.measurement.zzafc;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class qra implements Map.Entry {
    public final Map.Entry b;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        zzael zzaelVar = (zzael) this.b.getValue();
        if (zzaelVar == null) {
            return null;
        }
        zzaelVar.a(null);
        return zzaelVar.a;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzafc) {
            return ((zzael) this.b.getValue()).zza((zzafc) obj);
        }
        fg.c("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        return null;
    }
}
