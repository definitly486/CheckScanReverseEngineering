package defpackage;

import java.util.AbstractCollection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o4b extends AbstractCollection {
    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        ((cya) this).b.zzs();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ((cya) this).b.zzx(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ((cya) this).b.zzy(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return ((cya) this).b.zzh();
    }
}
