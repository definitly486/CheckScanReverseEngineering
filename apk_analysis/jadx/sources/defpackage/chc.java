package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzab;
import com.google.android.gms.internal.mlkit_vision_common.zzs;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class chc extends zzs {
    public final transient lic d;
    public final transient vhc e;

    public chc(lic licVar, vhc vhcVar) {
        this.d = licVar;
        this.e = vhcVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int a(Object[] objArr) {
        return this.e.a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.d.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzs, com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.d.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzs, com.google.android.gms.internal.mlkit_vision_common.zzl
    /* JADX INFO: renamed from: zzd */
    public final zzab iterator() {
        return this.e.listIterator(0);
    }
}
