package com.dlazaro66.qrcodereaderview;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.hardware.Camera;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.tapjoy.TJAdUnitConstants;
import defpackage.d11;
import defpackage.fg;
import defpackage.hy5;
import defpackage.iy;
import defpackage.jz3;
import defpackage.l01;
import defpackage.n57;
import defpackage.n7;
import defpackage.nd2;
import defpackage.oi0;
import defpackage.uu6;
import defpackage.w57;
import defpackage.x86;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class QRCodeReaderView extends SurfaceView implements SurfaceHolder.Callback, Camera.PreviewCallback {
    private static final String TAG = "com.dlazaro66.qrcodereaderview.QRCodeReaderView";
    private DecodeFrameTask decodeFrameTask;
    private Map<nd2, Object> decodeHints;
    private d11 mCameraManager;
    private OnQRCodeReadListener mOnQRCodeReadListener;
    private int mPreviewHeight;
    private int mPreviewWidth;
    private uu6 mQRCodeReader;
    private boolean mQrDecodingEnabled;

    public static class DecodeFrameTask extends AsyncTask<byte[], Void, n57> {
        private final WeakReference<Map<nd2, Object>> hintsRef;
        private final QRToViewPointTransformer qrToViewPointTransformer = new QRToViewPointTransformer();
        private final WeakReference<QRCodeReaderView> viewRef;

        public DecodeFrameTask(QRCodeReaderView qRCodeReaderView, Map<nd2, Object> map) {
            this.viewRef = new WeakReference<>(qRCodeReaderView);
            this.hintsRef = new WeakReference<>(map);
        }

        private PointF[] transformToViewCoordinates(QRCodeReaderView qRCodeReaderView, w57[] w57VarArr) {
            int cameraDisplayOrientation = qRCodeReaderView.getCameraDisplayOrientation();
            return this.qrToViewPointTransformer.transform(w57VarArr, qRCodeReaderView.mCameraManager.h == 1, (cameraDisplayOrientation == 90 || cameraDisplayOrientation == 270) ? Orientation.PORTRAIT : Orientation.LANDSCAPE, new Point(qRCodeReaderView.getWidth(), qRCodeReaderView.getHeight()), qRCodeReaderView.mCameraManager.a.c);
        }

        @Override // android.os.AsyncTask
        public n57 doInBackground(byte[]... bArr) {
            QRCodeReaderView qRCodeReaderView = this.viewRef.get();
            if (qRCodeReaderView == null) {
                return null;
            }
            d11 d11Var = qRCodeReaderView.mCameraManager;
            byte[] bArr2 = bArr[0];
            int i = qRCodeReaderView.mPreviewWidth;
            int i2 = qRCodeReaderView.mPreviewHeight;
            d11Var.getClass();
            try {
                return qRCodeReaderView.mQRCodeReader.a(new oi0(new jz3(new x86(bArr2, i, i2, i, i2))), (Map) this.hintsRef.get());
            } catch (ChecksumException e) {
                Log.d(QRCodeReaderView.TAG, "ChecksumException", e);
                return null;
            } catch (FormatException e2) {
                Log.d(QRCodeReaderView.TAG, "FormatException", e2);
                return null;
            } catch (NotFoundException unused) {
                Log.d(QRCodeReaderView.TAG, "No QR Code found");
                return null;
            } finally {
                qRCodeReaderView.mQRCodeReader.getClass();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(n57 n57Var) {
            super.onPostExecute(n57Var);
            QRCodeReaderView qRCodeReaderView = this.viewRef.get();
            if (qRCodeReaderView == null || n57Var == null || qRCodeReaderView.mOnQRCodeReadListener == null) {
                return;
            }
            qRCodeReaderView.mOnQRCodeReadListener.onQRCodeRead(n57Var.a, transformToViewCoordinates(qRCodeReaderView, n57Var.b));
        }
    }

    public interface OnQRCodeReadListener {
        void onQRCodeRead(String str, PointF[] pointFArr);
    }

    public QRCodeReaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mQrDecodingEnabled = true;
        if (isInEditMode()) {
            return;
        }
        if (!checkCameraHardware()) {
            n7.g("Error: Camera not found");
            throw null;
        }
        d11 d11Var = new d11(getContext());
        this.mCameraManager = d11Var;
        d11Var.f = this;
        if (d11Var.b()) {
            d11Var.b.b.setPreviewCallback(this);
        }
        getHolder().addCallback(this);
        setBackCamera();
    }

    private boolean checkCameraHardware() {
        if (getContext().getPackageManager().hasSystemFeature("android.hardware.camera") || getContext().getPackageManager().hasSystemFeature("android.hardware.camera.front")) {
            return true;
        }
        return getContext().getPackageManager().hasSystemFeature("android.hardware.camera.any");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCameraDisplayOrientation() {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.mCameraManager.h, cameraInfo);
        int rotation = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
        int i = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
        }
        int i2 = cameraInfo.facing;
        int i3 = cameraInfo.orientation;
        return i2 == 1 ? (360 - ((i3 + i) % 360)) % 360 : ((i3 - i) + 360) % 360;
    }

    public void forceAutoFocus() {
        iy iyVar;
        d11 d11Var = this.mCameraManager;
        if (d11Var == null || (iyVar = d11Var.c) == null) {
            return;
        }
        iyVar.b();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DecodeFrameTask decodeFrameTask = this.decodeFrameTask;
        if (decodeFrameTask != null) {
            decodeFrameTask.cancel(true);
            this.decodeFrameTask = null;
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.mQrDecodingEnabled) {
            DecodeFrameTask decodeFrameTask = this.decodeFrameTask;
            if (decodeFrameTask == null || !(decodeFrameTask.getStatus() == AsyncTask.Status.RUNNING || this.decodeFrameTask.getStatus() == AsyncTask.Status.PENDING)) {
                DecodeFrameTask decodeFrameTask2 = new DecodeFrameTask(this, this.decodeHints);
                this.decodeFrameTask = decodeFrameTask2;
                decodeFrameTask2.execute(bArr);
            }
        }
    }

    public void setAutofocusInterval(long j) {
        d11 d11Var = this.mCameraManager;
        if (d11Var != null) {
            d11Var.i = j;
            iy iyVar = d11Var.c;
            if (iyVar != null) {
                if (j > 0) {
                    iyVar.a = j;
                } else {
                    fg.c("AutoFocusInterval must be greater than 0.");
                }
            }
        }
    }

    public void setBackCamera() {
        setPreviewCameraId(0);
    }

    public void setDecodeHints(Map<nd2, Object> map) {
        this.decodeHints = map;
    }

    public void setFrontCamera() {
        setPreviewCameraId(1);
    }

    public void setOnQRCodeReadListener(OnQRCodeReadListener onQRCodeReadListener) {
        this.mOnQRCodeReadListener = onQRCodeReadListener;
    }

    public void setPreviewCameraId(int i) {
        d11 d11Var = this.mCameraManager;
        synchronized (d11Var) {
            d11Var.h = i;
        }
    }

    public void setQRDecodingEnabled(boolean z) {
        this.mQrDecodingEnabled = z;
    }

    public void setTorchEnabled(boolean z) {
        String flashMode;
        d11 d11Var = this.mCameraManager;
        if (d11Var != null) {
            synchronized (d11Var) {
                try {
                    hy5 hy5Var = d11Var.b;
                    if (hy5Var != null) {
                        Camera camera = hy5Var.b;
                        boolean z2 = true;
                        if (z != ((camera.getParameters() == null || (flashMode = camera.getParameters().getFlashMode()) == null || (!TJAdUnitConstants.String.SPLIT_VIEW_TRIGGER_ON.equals(flashMode) && !"torch".equals(flashMode))) ? false : true)) {
                            iy iyVar = d11Var.c;
                            if (iyVar == null) {
                                z2 = false;
                            }
                            if (z2) {
                                iyVar.c();
                                d11Var.c = null;
                            }
                            l01.e(z, hy5Var.b);
                            if (z2) {
                                iy iyVar2 = new iy(hy5Var.b);
                                d11Var.c = iyVar2;
                                iyVar2.b();
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void startCamera() {
        this.mCameraManager.d();
    }

    public void stopCamera() {
        this.mCameraManager.e();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        String str = TAG;
        Log.d(str, "surfaceChanged");
        if (surfaceHolder.getSurface() == null) {
            Log.e(str, "Error: preview surface does not exist");
            return;
        }
        d11 d11Var = this.mCameraManager;
        Point point = d11Var.a.c;
        if (point == null) {
            Log.e(str, "Error: preview size does not exist");
            return;
        }
        this.mPreviewWidth = point.x;
        this.mPreviewHeight = point.y;
        d11Var.e();
        d11 d11Var2 = this.mCameraManager;
        d11Var2.f = this;
        if (d11Var2.b()) {
            d11Var2.b.b.setPreviewCallback(this);
        }
        d11 d11Var3 = this.mCameraManager;
        int cameraDisplayOrientation = getCameraDisplayOrientation();
        d11Var3.g = cameraDisplayOrientation;
        if (d11Var3.b()) {
            d11Var3.b.b.setDisplayOrientation(cameraDisplayOrientation);
        }
        this.mCameraManager.d();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "surfaceCreated");
        try {
            this.mCameraManager.c(surfaceHolder, getWidth(), getHeight());
        } catch (IOException | RuntimeException e) {
            Log.w(TAG, "Can not openDriver: " + e.getMessage());
            this.mCameraManager.a();
        }
        try {
            this.mQRCodeReader = new uu6();
            this.mCameraManager.d();
        } catch (Exception e2) {
            Log.e(TAG, "Exception: " + e2.getMessage());
            this.mCameraManager.a();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "surfaceDestroyed");
        d11 d11Var = this.mCameraManager;
        d11Var.f = null;
        if (d11Var.b()) {
            d11Var.b.b.setPreviewCallback(null);
        }
        this.mCameraManager.e();
        this.mCameraManager.a();
    }

    public QRCodeReaderView(Context context) {
        this(context, null);
    }
}
