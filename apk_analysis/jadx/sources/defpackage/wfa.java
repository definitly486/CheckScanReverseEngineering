package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;

/* JADX INFO: loaded from: classes4.dex */
public abstract class wfa {
    public static Bitmap a(int i, String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = i;
        options.inTargetDensity = l3a.a.b;
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
    }
}
