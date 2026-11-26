package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public final class IconKt {
    public static final Icon toAdaptiveIcon(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    public static final Icon toIcon(byte[] bArr) {
        return Icon.createWithData(bArr, 0, bArr.length);
    }

    public static final Icon toIcon(Uri uri) {
        return Icon.createWithContentUri(uri);
    }

    public static final Icon toIcon(Bitmap bitmap) {
        return Icon.createWithBitmap(bitmap);
    }
}
