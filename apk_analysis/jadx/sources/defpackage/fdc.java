package defpackage;

import com.google.android.gms.internal.measurement.zzsn;
import com.google.android.gms.internal.measurement.zzsz;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class fdc extends zzsn {
    public static final /* synthetic */ int c = 0;
    public final ArrayList b;

    public fdc(InputStream inputStream, ArrayList arrayList) {
        super(inputStream);
        this.b = arrayList;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            try {
                ((zzsz) it.next()).close();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i != -1) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((zzsz) it.next()).zza();
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzsn, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i = ((FilterInputStream) this).in.read(bArr);
        if (i != -1) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((zzsz) it.next()).zza();
            }
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 != -1) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((zzsz) it.next()).zza();
            }
        }
        return i3;
    }
}
