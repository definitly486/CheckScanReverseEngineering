package defpackage;

import com.google.android.gms.internal.mlkit_common.zzaj;
import com.google.android.gms.internal.mlkit_common.zzas;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class kua extends zzaj {
    public final transient rua d;
    public final transient nua e;

    public kua(rua ruaVar, nua nuaVar) {
        this.d = ruaVar;
        this.e = nuaVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int a(Object[] objArr) {
        return this.e.a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.d.g;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, com.google.android.gms.internal.mlkit_common.zzab
    /* JADX INFO: renamed from: zzd */
    public final zzas iterator() {
        return this.e.listIterator(0);
    }
}
