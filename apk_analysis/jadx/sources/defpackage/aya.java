package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzax;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class aya implements Map.Entry {
    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (zzax.zza(getKey(), entry.getKey()) && zzax.zza(getValue(), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        Object value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    public final String toString() {
        return me0.c(String.valueOf(getKey()), "=", String.valueOf(getValue()));
    }
}
