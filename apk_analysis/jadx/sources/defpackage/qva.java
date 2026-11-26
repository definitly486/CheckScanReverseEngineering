package defpackage;

import com.google.android.gms.internal.fido.zzau;
import com.google.android.gms.internal.fido.zzaz;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class qva extends zzau {
    public final transient Object d;

    public qva(Object obj) {
        this.d = obj;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final void a(Object[] objArr) {
        objArr[0] = this.d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.d.equals(obj);
    }

    @Override // com.google.android.gms.internal.fido.zzau, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // com.google.android.gms.internal.fido.zzau, com.google.android.gms.internal.fido.zzaq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new iva(this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return me0.c("[", this.d.toString(), "]");
    }

    @Override // com.google.android.gms.internal.fido.zzau, com.google.android.gms.internal.fido.zzaq
    /* JADX INFO: renamed from: zzd */
    public final zzaz iterator() {
        return new iva(this.d);
    }
}
