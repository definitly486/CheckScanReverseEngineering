package defpackage;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class i98 implements i47<InputStream, up3> {
    public final ArrayList a;
    public final xw0 b;
    public final pr c;

    public i98(ArrayList arrayList, xw0 xw0Var, pr prVar) {
        this.a = arrayList;
        this.b = xw0Var;
        this.c = prVar;
    }

    @Override // defpackage.i47
    public final e47<up3> a(InputStream inputStream, int i, int i2, xz5 xz5Var) {
        byte[] byteArray;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i3 = inputStream2.read(bArr);
                if (i3 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i3);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.b.a(ByteBuffer.wrap(byteArray), i, i2, xz5Var);
    }

    @Override // defpackage.i47
    public final boolean b(InputStream inputStream, xz5 xz5Var) {
        return !((Boolean) xz5Var.c(dq3.b)).booleanValue() && a.b(this.a, inputStream, this.c) == ImageHeaderParser.ImageType.GIF;
    }
}
