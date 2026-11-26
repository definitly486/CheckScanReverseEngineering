package defpackage;

import com.google.android.gms.internal.measurement.zzso;
import com.google.android.gms.internal.measurement.zzta;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class gdc extends zzso {
    public static final /* synthetic */ int c = 0;
    public final ArrayList b;

    public gdc(OutputStream outputStream, ArrayList arrayList) {
        super(outputStream);
        this.b = arrayList;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            try {
                ((zzta) it.next()).close();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // com.google.android.gms.internal.measurement.zzso, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        for (zzta zztaVar : this.b) {
            int length = bArr.length;
            zztaVar.zza();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((zzta) it.next()).zza();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzso, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((zzta) it.next()).zza();
        }
    }
}
