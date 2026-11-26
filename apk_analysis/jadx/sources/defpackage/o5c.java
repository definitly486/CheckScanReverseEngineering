package defpackage;

import com.google.android.gms.internal.measurement.zzmu;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes4.dex */
public final class o5c extends InputStream {
    public final /* synthetic */ zzmu b;

    public o5c(zzmu zzmuVar) {
        this.b = zzmuVar;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        Inflater inflater = this.b.b;
        try {
            int iInflate = inflater.inflate(bArr, i, i2);
            if (iInflate > 0) {
                return iInflate;
            }
            if (i2 == 0) {
                return 0;
            }
            if (inflater.getRemaining() == 0) {
                return -1;
            }
            int remaining = inflater.getRemaining();
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 70 + String.valueOf(remaining).length());
            sb.append("Read no bytes (requested up to ");
            sb.append(i2);
            sb.append(") but did not reach end of stream, had ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        } catch (DataFormatException e) {
            throw new IOException(e);
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0];
    }
}
