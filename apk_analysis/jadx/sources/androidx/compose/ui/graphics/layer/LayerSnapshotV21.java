package androidx.compose.ui.graphics.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public final class LayerSnapshotV21 implements LayerSnapshotImpl {
    public static final int $stable = 0;
    public static final LayerSnapshotV21 INSTANCE = new LayerSnapshotV21();

    private LayerSnapshotV21() {
    }

    @Override // androidx.compose.ui.graphics.layer.LayerSnapshotImpl
    public Object toBitmap(GraphicsLayer graphicsLayer, e02<? super Bitmap> e02Var) {
        long jM6897getSizeYbymL2g = graphicsLayer.m6897getSizeYbymL2g();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (jM6897getSizeYbymL2g >> 32), (int) (jM6897getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE), Bitmap.Config.ARGB_8888);
        graphicsLayer.draw$ui_graphics(AndroidCanvas_androidKt.Canvas(new Canvas(bitmapCreateBitmap)), null);
        return bitmapCreateBitmap;
    }
}
