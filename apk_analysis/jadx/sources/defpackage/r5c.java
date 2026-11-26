package defpackage;

import androidx.collection.SieveCacheKt;
import com.google.android.gms.internal.measurement.zzacv;
import com.google.android.gms.internal.measurement.zzmu;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class r5c extends InputStream {
    public final /* synthetic */ zzacv b;

    public r5c(zzmu zzmuVar, zzacv zzacvVar) {
        this.b = zzacvVar;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (this.b.zzK(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        int i = j > SieveCacheKt.NodeLinkMask ? Integer.MAX_VALUE : (int) j;
        this.b.zzL(i);
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.b.zzK(bArr, i, i2);
    }
}
