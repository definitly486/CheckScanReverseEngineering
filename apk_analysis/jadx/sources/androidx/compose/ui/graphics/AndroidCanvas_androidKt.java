package androidx.compose.ui.graphics;

import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidCanvas_androidKt {
    private static final android.graphics.Canvas EmptyCanvas = new android.graphics.Canvas();

    public static final Canvas ActualCanvas(ImageBitmap imageBitmap) {
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.setInternalCanvas(new android.graphics.Canvas(AndroidImageBitmap_androidKt.asAndroidBitmap(imageBitmap)));
        return androidCanvas;
    }

    public static final Canvas Canvas(android.graphics.Canvas canvas) {
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.setInternalCanvas(canvas);
        return androidCanvas;
    }

    @ul2
    public static /* synthetic */ void NativeCanvas$annotations() {
    }

    public static final android.graphics.Canvas getNativeCanvas(Canvas canvas) {
        canvas.getClass();
        return ((AndroidCanvas) canvas).getInternalCanvas();
    }
}
