package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzds;
import java.util.AbstractSet;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t6b extends AbstractSet {
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection collection) {
        return zzds.c(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection collection) {
        collection.getClass();
        return super.retainAll(collection);
    }
}
