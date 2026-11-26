package yads;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class b05 {
    public final hw a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();

    public b05(Context context) {
        this.a = new hw(context);
    }

    public static a05 b(rd3 rd3Var) {
        String str = rd3Var.g;
        if (str != null) {
            return new a05(str, new ql5(rd3Var.a, rd3Var.b));
        }
        return null;
    }

    public final Bitmap a(rd3 rd3Var) {
        String str = rd3Var.c;
        Bitmap bitmap = (Bitmap) this.b.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        r46 r46Var = un4.d.a(this.a.a).c;
        String str2 = rd3Var.c;
        Bitmap bitmapA = r46Var.a(str2);
        if (bitmapA != null && bitmapA.getWidth() == 1 && bitmapA.getHeight() == 1) {
            bitmapA = Bitmap.createScaledBitmap(bitmapA, rd3Var.a, rd3Var.b, false);
            r46Var.a(str2, bitmapA);
        }
        if (bitmapA == null) {
            return null;
        }
        this.b.put(str, bitmapA);
        return bitmapA;
    }
}
