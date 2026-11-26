package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;

/* JADX INFO: loaded from: classes4.dex */
public final class n2b extends r2b {
    public int b = 0;
    public final int c;
    public final /* synthetic */ zzdf d;

    public n2b(zzdf zzdfVar) {
        this.d = zzdfVar;
        this.c = zzdfVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdb
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
