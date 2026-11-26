package yads;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes6.dex */
public abstract class fu {
    public static Bitmap a(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        bitmapCreateBitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
        return bitmapCreateBitmap;
    }
}
