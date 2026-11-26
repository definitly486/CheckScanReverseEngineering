package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.measurement.zzahw;
import com.google.android.gms.measurement.internal.zzfy;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ex0 implements rxa {
    public static final /* synthetic */ ex0 b = new ex0();

    public static final long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        inputStream.getClass();
        byte[] bArr = new byte[8192];
        int i = inputStream.read(bArr);
        long j = 0;
        while (i >= 0) {
            outputStream.write(bArr, 0, i);
            j += (long) i;
            i = inputStream.read(bArr);
        }
        return j;
    }

    public static Intent b(Context context, File file, String str) {
        Intent intent = new Intent();
        intent.setFlags(1);
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        Uri uriForFile = FileProvider.getUriForFile(context, "com.warefly.checkscan.fileprovider.share", file);
        uriForFile.getClass();
        intent.putExtra("android.intent.extra.STREAM", uriForFile);
        intent.setType(MimeTypes.IMAGE_JPEG);
        return intent;
    }

    public static final boolean c(char c) {
        return '0' <= c && c < ':';
    }

    public static final byte[] d(InputStream inputStream) throws IOException {
        inputStream.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        a(inputStream, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArray.getClass();
        return byteArray;
    }

    public static final String e(int i, String str) {
        int iJ;
        CharSequence charSequenceSubSequence;
        if (str.length() >= i + 12 && ta8.E("+-", str.charAt(0)) && (iJ = ta8.J('-', 1, 4, str)) >= 12) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (str.charAt(i3) != '0') {
                    break;
                }
                i2 = i3;
            }
            if (iJ - i2 < 12) {
                int i4 = iJ - 10;
                if (i4 < 1) {
                    yq.d(kv2.b(i4, "End index (", ") is less than start index (1)."));
                    return null;
                }
                if (i4 == 1) {
                    charSequenceSubSequence = str.subSequence(0, str.length());
                } else {
                    StringBuilder sb = new StringBuilder(str.length() - (iJ - 11));
                    sb.append((CharSequence) str, 0, 1);
                    sb.append((CharSequence) str, i4, str.length());
                    charSequenceSubSequence = sb;
                }
                return charSequenceSubSequence.toString();
            }
        }
        return str;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzahw.zza());
    }
}
