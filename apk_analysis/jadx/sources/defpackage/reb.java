package defpackage;

import com.google.android.gms.internal.play_billing.zzfk;
import com.google.android.gms.internal.play_billing.zzfp;

/* JADX INFO: loaded from: classes4.dex */
public final class reb implements zzfk {
    public int b = 0;
    public final int c;
    public final /* synthetic */ zzfp d;

    public reb(zzfp zzfpVar) {
        this.d = zzfpVar;
        this.c = zzfpVar.zzd();
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

    @Override // com.google.android.gms.internal.play_billing.zzfk
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
