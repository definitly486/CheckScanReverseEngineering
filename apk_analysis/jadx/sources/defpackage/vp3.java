package defpackage;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import com.google.android.gms.internal.measurement.zzaef;
import com.google.android.gms.measurement.internal.zzae;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class vp3 implements v47 {
    public static zzae b;

    public static final String b(long j, String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return ra8.y(ra8.y(ra8.y(str, "{user_id}", String.valueOf(j)), "{email}", str2), "{phone}", str3);
    }

    public static SpannableString c(int i, String str, String str2) {
        int i2 = (i & 8) != 0 ? 16 : 32;
        str.getClass();
        str2.getClass();
        int length = "".length() == 0 ? 1 : "".length() + 1;
        int length2 = "".length() == 0 ? str.length() + 2 : str.length() + length;
        int length3 = "".length() == 0 ? str.length() + 2 : length2 + 1;
        int length4 = "".length() == 0 ? str2.length() + length2 : length2 + 1 + str2.length();
        SpannableString spannableString = new SpannableString(n2.d("", " ", str, " ", str2));
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FF4242")), length, length2, 18);
        spannableString.setSpan(new AbsoluteSizeSpan(i2, true), length, length2, 18);
        spannableString.setSpan(new StrikethroughSpan(), length3, length4, 18);
        spannableString.setSpan(new AbsoluteSizeSpan(14, true), length3, length4, 18);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#666D7A")), length3, length4, 18);
        spannableString.setSpan(new StyleSpan(0), length3, length4, 18);
        return spannableString;
    }

    public static final SpannableString d(int i, int i2, int i3, String str) {
        str.getClass();
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new StyleSpan(1), i, i2, i3);
        return spannableString;
    }

    public static final bt e(Socket socket) throws IOException {
        socket.getClass();
        n48 n48Var = new n48(socket);
        OutputStream outputStream = socket.getOutputStream();
        outputStream.getClass();
        return new bt(n48Var, new t06(outputStream, n48Var));
    }

    public static final ct f(Socket socket) throws IOException {
        socket.getClass();
        n48 n48Var = new n48(socket);
        InputStream inputStream = socket.getInputStream();
        inputStream.getClass();
        return new ct(n48Var, new t54(inputStream, n48Var));
    }

    public static final t54 g(InputStream inputStream) {
        inputStream.getClass();
        return new t54(inputStream, new wv8());
    }

    public static final zzaef h(Object obj, long j) {
        zzaef zzaefVar = (zzaef) eta.h(obj, j);
        if (zzaefVar.zza()) {
            return zzaefVar;
        }
        int size = zzaefVar.size();
        zzaef zzaefVarZzg = zzaefVar.zzg(size == 0 ? 10 : size + size);
        eta.i(j, obj, zzaefVarZzg);
        return zzaefVarZzg;
    }

    @Override // defpackage.v47
    public e47 a(e47 e47Var, xz5 xz5Var) {
        byte[] bArrArray;
        ByteBuffer byteBufferAsReadOnlyBuffer = ((up3) e47Var.get()).b.a.a.d.asReadOnlyBuffer();
        AtomicReference<byte[]> atomicReference = ax0.a;
        ax0.b bVar = (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) ? null : new ax0.b(byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit());
        if (bVar != null && bVar.a == 0 && bVar.b == bVar.c.length) {
            bArrArray = byteBufferAsReadOnlyBuffer.array();
        } else {
            ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
            byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
            byteBufferAsReadOnlyBuffer2.get(bArr);
            bArrArray = bArr;
        }
        return new ix0(bArrArray);
    }
}
