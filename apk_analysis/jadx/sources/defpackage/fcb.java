package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzew;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class fcb implements Map.Entry {
    public final Map.Entry b;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzew) this.b.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzfm) {
            return ((zzew) this.b.getValue()).zzc((zzfm) obj);
        }
        fg.c("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        return null;
    }
}
