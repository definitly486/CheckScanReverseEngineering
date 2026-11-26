package yads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import defpackage.fh8;
import defpackage.k57;
import defpackage.ra8;
import defpackage.ta8;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class g05 {
    public static final defpackage.cl4 a = new fh8(new defpackage.bc(3));

    public static Bitmap a(String str) {
        Object aVar;
        byte[] bArrCopyOf;
        try {
            byte[] bArrDecode = Base64.decode(ta8.T(str, "data:image/png;base64,"), 0);
            if (!ra8.C(str, "data:image/png;base64,", false)) {
                if (bArrDecode.length == 0) {
                    bArrCopyOf = new byte[0];
                } else {
                    byte[] bArr = (byte[]) a.getValue();
                    bArr.getClass();
                    int length = bArr.length;
                    int length2 = bArrDecode.length;
                    bArrCopyOf = Arrays.copyOf(bArr, length + length2);
                    System.arraycopy(bArrDecode, 0, bArrCopyOf, length, length2);
                }
                bArrDecode = bArrCopyOf;
            }
            aVar = bArrDecode.length == 0 ? null : BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (Bitmap) (aVar instanceof k57.a ? null : aVar);
    }

    public static final byte[] a() {
        return Base64.decode("/9j/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fo=", 0);
    }
}
