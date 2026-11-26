package yads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import defpackage.gt8;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ra8;
import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public final class hi0 implements Runnable {
    public final String b;
    public final boolean c;
    public final nl3 d;

    public hi0(String str, boolean z, nl3 nl3Var) {
        this.b = str;
        this.c = z;
        this.d = nl3Var;
    }

    public static final j59 a(hi0 hi0Var, Bitmap bitmap) {
        hi0Var.d.invoke(bitmap != null ? new gd3(bitmap) : null);
        return j59.a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmapDecodeByteArray;
        String strSubstring = this.b;
        if (ra8.C(strSubstring, "data:", false)) {
            strSubstring = strSubstring.substring(ta8.J(',', 0, 6, strSubstring) + 1);
        }
        try {
            byte[] bArrDecode = Base64.decode(strSubstring, 0);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            try {
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
            } catch (IllegalArgumentException unused) {
                int i = cr3.a;
                vj5[] vj5VarArr = vj5.b;
                int i2 = rv3.a;
                bitmapDecodeByteArray = null;
            }
            if (bitmapDecodeByteArray == null) {
                bitmapDecodeByteArray = null;
            }
            if (this.c) {
                this.d.invoke(bitmapDecodeByteArray != null ? new gd3(bitmapDecodeByteArray) : null);
            } else {
                d46.a(new gt8(1, this, bitmapDecodeByteArray));
            }
        } catch (IllegalArgumentException unused2) {
            int i3 = cr3.a;
            vj5[] vj5VarArr2 = vj5.b;
            int i4 = rv3.a;
        }
    }
}
