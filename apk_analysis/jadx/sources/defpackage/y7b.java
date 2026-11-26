package defpackage;

import com.google.android.gms.internal.auth.zzea;
import com.google.android.gms.internal.auth.zzef;

/* JADX INFO: loaded from: classes4.dex */
public final class y7b implements zzea {
    public int b = 0;
    public final int c;
    public final /* synthetic */ zzef d;

    public y7b(zzef zzefVar) {
        this.d = zzefVar;
        this.c = zzefVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(zza());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.auth.zzea
    public final byte zza() {
        int i = this.b;
        if (i < this.c) {
            this.b = i + 1;
            return this.d.a(i);
        }
        qz0.e();
        return (byte) 0;
    }
}
