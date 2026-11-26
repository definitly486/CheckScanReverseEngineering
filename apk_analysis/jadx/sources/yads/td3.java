package yads;

import android.graphics.Bitmap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class td3 {
    public static boolean a(rd3 rd3Var, Map map) {
        Bitmap bitmap = (Bitmap) map.get(rd3Var.c);
        return (bitmap != null && bitmap.getWidth() > 1 && bitmap.getHeight() > 1) || !rd3Var.f;
    }
}
