package androidx.compose.ui.graphics.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.media.Image;
import android.media.ImageReader;
import android.os.Looper;
import android.view.Surface;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.core.os.HandlerCompat;
import androidx.media3.muxer.MuxerUtil;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.c31;
import defpackage.e02;
import defpackage.f02;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes2.dex */
public final class LayerSnapshotV22 implements LayerSnapshotImpl {
    public static final int $stable = 0;
    public static final LayerSnapshotV22 INSTANCE = new LayerSnapshotV22();

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.graphics.layer.LayerSnapshotV22", f = "LayerSnapshot.android.kt", l = {WebmConstants.MkvEbmlElement.AUDIO}, m = "toBitmap", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LayerSnapshotV22.this.toBitmap(null, this);
        }
    }

    private LayerSnapshotV22() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.graphics.layer.LayerSnapshotImpl
    public Object toBitmap(GraphicsLayer graphicsLayer, e02<? super Bitmap> e02Var) throws Exception {
        AnonymousClass1 anonymousClass1;
        AutoCloseable autoCloseable;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objS = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objS);
            long jM6897getSizeYbymL2g = graphicsLayer.m6897getSizeYbymL2g();
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                looperMyLooper = Looper.getMainLooper();
            }
            ImageReader imageReaderNewInstance = ImageReader.newInstance((int) (jM6897getSizeYbymL2g >> 32), (int) (jM6897getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE), 1, 1);
            try {
                anonymousClass1.L$0 = graphicsLayer;
                anonymousClass1.L$1 = looperMyLooper;
                anonymousClass1.L$2 = imageReaderNewInstance;
                anonymousClass1.L$3 = imageReaderNewInstance;
                anonymousClass1.L$4 = anonymousClass1;
                anonymousClass1.label = 1;
                final c31 c31Var = new c31(1, zya.b(anonymousClass1));
                c31Var.u();
                imageReaderNewInstance.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$2$image$1$1
                    @Override // android.media.ImageReader.OnImageAvailableListener
                    public final void onImageAvailable(ImageReader imageReader) {
                        c31Var.resumeWith(imageReader.acquireLatestImage());
                    }
                }, HandlerCompat.createAsync(looperMyLooper));
                Surface surface = imageReaderNewInstance.getSurface();
                Canvas canvasLockCanvas = SurfaceUtils.INSTANCE.lockCanvas(surface);
                try {
                    canvasLockCanvas.drawColor(ColorKt.m6286toArgb8_81llA(Color.Companion.m6258getBlack0d7_KjU()), PorterDuff.Mode.CLEAR);
                    graphicsLayer.draw$ui_graphics(AndroidCanvas_androidKt.Canvas(canvasLockCanvas), null);
                    surface.unlockCanvasAndPost(canvasLockCanvas);
                    objS = c31Var.s();
                    if (objS == a32Var) {
                        return a32Var;
                    }
                    autoCloseable = imageReaderNewInstance;
                } catch (Throwable th) {
                    surface.unlockCanvasAndPost(canvasLockCanvas);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseable = imageReaderNewInstance;
                throw th;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            autoCloseable = (AutoCloseable) anonymousClass1.L$2;
            try {
                r57.b(objS);
            } catch (Throwable th3) {
                th = th3;
                try {
                    throw th;
                } catch (Throwable th4) {
                    aq5.c(autoCloseable, th);
                    throw th4;
                }
            }
        }
        Bitmap bitmap = LayerSnapshot_androidKt.toBitmap((Image) objS);
        aq5.c(autoCloseable, null);
        return bitmap;
    }
}
