package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzcv;
import com.google.android.gms.internal.mlkit_vision_barcode.zzdu;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class w5b extends zzcv {
    public final transient i6b d;
    public final transient c6b e;

    public w5b(i6b i6bVar, c6b c6bVar) {
        this.d = i6bVar;
        this.e = c6bVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    public final int a(int i, Object[] objArr) {
        return this.e.a(i, objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcv, com.google.android.gms.internal.mlkit_vision_barcode.zzcn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcv, com.google.android.gms.internal.mlkit_vision_barcode.zzcn
    /* JADX INFO: renamed from: zzd */
    public final zzdu iterator() {
        return this.e.listIterator(0);
    }
}
