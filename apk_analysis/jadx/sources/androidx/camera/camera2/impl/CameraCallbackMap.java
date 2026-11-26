package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.adapter.CaptureResultAdapter;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.TagBundle;
import defpackage.c01;
import defpackage.cl4;
import defpackage.e01;
import defpackage.f01;
import defpackage.fh8;
import defpackage.h01;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mx2;
import defpackage.n05;
import defpackage.qz0;
import defpackage.vz0;
import defpackage.x07;
import defpackage.yz0;
import defpackage.zz0;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraCallbackMap implements Request.Listener {
    public static final Companion Companion = new Companion(null);
    private final Map<CameraCaptureCallback, Executor> callbackMap = new LinkedHashMap();
    private final cl4 rejectOperationCameraCaptureSession$delegate = new fh8(new e01(0));
    private volatile Map<CameraCaptureCallback, ? extends Executor> callbacks = mx2.b;

    private final CameraCaptureSession getCameraCaptureSession(RequestMetadata requestMetadata) {
        CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(x07.a(CameraCaptureSession.class));
        if (cameraCaptureSession != null) {
            return cameraCaptureSession;
        }
        if (Build.VERSION.SDK_INT < 31 || ((CameraExtensionSession) requestMetadata.unwrapAs(x07.a(qz0.c()))) == null) {
            return null;
        }
        return getRejectOperationCameraCaptureSession();
    }

    private final int getCaptureConfigId(RequestMetadata requestMetadata) {
        TagBundle tagBundle = (TagBundle) requestMetadata.get(TagsKt.getCAMERAX_TAG_BUNDLE());
        Object tag = tagBundle != null ? tagBundle.getTag(CaptureConfig.CAPTURE_CONFIG_ID_TAG_KEY) : null;
        Integer num = tag instanceof Integer ? (Integer) tag : null;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    private final CameraCaptureSession getRejectOperationCameraCaptureSession() {
        return (CameraCaptureSession) this.rejectOperationCameraCaptureSession$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBufferLost_iiEMlm4$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        Api24Compat.onCaptureBufferLost(((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback(), cameraCaptureSession, captureRequest, surface, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCaptureProgress$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCaptureProgress$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, int i) {
        cameraCaptureCallback.onCaptureProcessProgressed(cameraCallbackMap.getCaptureConfigId(requestMetadata), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onComplete_CcXjc1I$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onComplete_CcXjc1I$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, CaptureResultAdapter captureResultAdapter) {
        cameraCaptureCallback.onCaptureCompleted(cameraCallbackMap.getCaptureConfigId(requestMetadata), captureResultAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFailed_CcXjc1I$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFailed_CcXjc1I$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, CameraCaptureFailure cameraCaptureFailure) {
        cameraCaptureCallback.onCaptureFailed(cameraCallbackMap.getCaptureConfigId(requestMetadata), cameraCaptureFailure);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPartialCaptureResult_CcXjc1I$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReadoutStarted_mP9r_9w$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        Api34Compat.onReadoutStarted(((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback(), cameraCaptureSession, captureRequest, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestSequenceAborted$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureSequenceAborted(cameraCaptureSession, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestSequenceAborted$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata) {
        cameraCaptureCallback.onCaptureCancelled(cameraCallbackMap.getCaptureConfigId(requestMetadata));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestSequenceCompleted_RuT0dZU$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, long j) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureSequenceCompleted(cameraCaptureSession, -1, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStarted_uGKBvU4$lambda$0(CameraCaptureCallback cameraCaptureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        ((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback).getCaptureCallback().onCaptureStarted(cameraCaptureSession, captureRequest, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStarted_uGKBvU4$lambda$1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata) {
        cameraCaptureCallback.onCaptureStarted(cameraCallbackMap.getCaptureConfigId(requestMetadata));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RejectOperationCameraCaptureSession rejectOperationCameraCaptureSession_delegate$lambda$0() {
        return new RejectOperationCameraCaptureSession();
    }

    public final void addCaptureCallback(CameraCaptureCallback cameraCaptureCallback, Executor executor) {
        cameraCaptureCallback.getClass();
        executor.getClass();
        if (this.callbacks.containsKey(cameraCaptureCallback)) {
            throw new IllegalStateException((cameraCaptureCallback + " was already registered!").toString());
        }
        synchronized (this.callbackMap) {
            this.callbackMap.put(cameraCaptureCallback, executor);
            this.callbacks = n05.l(this.callbackMap);
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        request.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            Object obj = request.getExtras().get(TagsKt.getCAMERAX_TAG_BUNDLE());
            TagBundle tagBundle = obj instanceof TagBundle ? (TagBundle) obj : null;
            Object tag = tagBundle != null ? tagBundle.getTag(CaptureConfig.CAPTURE_CONFIG_ID_TAG_KEY) : null;
            Integer num = tag instanceof Integer ? (Integer) tag : null;
            value.execute(new f01(key, num != null ? num.intValue() : -1, 0));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4, reason: not valid java name */
    public void mo40onBufferLostiiEMlm4(RequestMetadata requestMetadata, final long j, int i, int i2) {
        requestMetadata.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(x07.a(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                final Surface surface = requestMetadata.getStreams().get(StreamId.m723boximpl(i));
                if (cameraCaptureSession != null && captureRequest != null && surface != null) {
                    final CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = (CameraUseCaseAdapter.CaptureCallbackContainer) key;
                    value.execute(new Runnable() { // from class: sz0
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onBufferLost_iiEMlm4$lambda$0(captureCallbackContainer, cameraCaptureSession, captureRequest, surface, j);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onCaptureProgress(final RequestMetadata requestMetadata, final int i) {
        requestMetadata.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(x07.a(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                final CaptureResult captureResult = (CaptureResult) requestMetadata.unwrapAs(x07.a(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult != null) {
                    final CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = (CameraUseCaseAdapter.CaptureCallbackContainer) key;
                    value.execute(new Runnable() { // from class: a01
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onCaptureProgress$lambda$0(captureCallbackContainer, cameraCaptureSession, captureRequest, captureResult);
                        }
                    });
                }
            } else {
                value.execute(new Runnable() { // from class: b01
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onCaptureProgress$lambda$1(key, this, requestMetadata, i);
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo9onCompleteCcXjc1I(final RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                final TotalCaptureResult totalCaptureResult = (TotalCaptureResult) frameInfo.unwrapAs(x07.a(TotalCaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && totalCaptureResult != null) {
                    final CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = (CameraUseCaseAdapter.CaptureCallbackContainer) key;
                    value.execute(new Runnable() { // from class: wz0
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onComplete_CcXjc1I$lambda$0(captureCallbackContainer, cameraCaptureSession, captureRequest, totalCaptureResult);
                        }
                    });
                }
            } else {
                final CaptureResultAdapter captureResultAdapter = new CaptureResultAdapter(requestMetadata, j, frameInfo, null);
                value.execute(new Runnable() { // from class: xz0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onComplete_CcXjc1I$lambda$1(key, this, requestMetadata, captureResultAdapter);
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo10onFailedCcXjc1I(final RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        requestMetadata.getClass();
        requestFailure.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            final CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                CaptureFailure captureFailure = (CaptureFailure) requestFailure.unwrapAs(x07.a(CaptureFailure.class));
                if (cameraCaptureSession != null && captureRequest != null && captureFailure != null) {
                    value.execute(new c01((CameraUseCaseAdapter.CaptureCallbackContainer) key, cameraCaptureSession, captureRequest, captureFailure, 0));
                }
            } else {
                final CameraCaptureFailure cameraCaptureFailure = new CameraCaptureFailure(CameraCaptureFailure.Reason.ERROR);
                value.execute(new Runnable() { // from class: d01
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraCallbackMap.onFailed_CcXjc1I$lambda$1(key, this, requestMetadata, cameraCaptureFailure);
                    }
                });
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I, reason: not valid java name */
    public void mo41onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
        requestMetadata.getClass();
        frameMetadata.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(x07.a(CameraCaptureSession.class));
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                final CaptureResult captureResult = (CaptureResult) frameMetadata.unwrapAs(x07.a(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult != null) {
                    final CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = (CameraUseCaseAdapter.CaptureCallbackContainer) key;
                    value.execute(new Runnable() { // from class: g01
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onPartialCaptureResult_CcXjc1I$lambda$0(captureCallbackContainer, cameraCaptureSession, captureRequest, captureResult);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w, reason: not valid java name */
    public void mo42onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(x07.a(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    value.execute(new h01((CameraUseCaseAdapter.CaptureCallbackContainer) key, cameraCaptureSession, captureRequest, j2, j));
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            int i = 0;
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(x07.a(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    value.execute(new yz0(i, (CameraUseCaseAdapter.CaptureCallbackContainer) key, cameraCaptureSession));
                }
            } else {
                value.execute(new zz0(key, this, requestMetadata, i));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU, reason: not valid java name */
    public void mo43onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, final long j) {
        requestMetadata.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    final CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = (CameraUseCaseAdapter.CaptureCallbackContainer) key;
                    value.execute(new Runnable() { // from class: tz0
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onRequestSequenceCompleted_RuT0dZU$lambda$0(captureCallbackContainer, cameraCaptureSession, j);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4, reason: not valid java name */
    public void mo44onStarteduGKBvU4(RequestMetadata requestMetadata, final long j, final long j2) {
        requestMetadata.getClass();
        for (Map.Entry<CameraCaptureCallback, ? extends Executor> entry : this.callbacks.entrySet()) {
            CameraCaptureCallback key = entry.getKey();
            Executor value = entry.getValue();
            if (key instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                final CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                final CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(x07.a(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    final CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = (CameraUseCaseAdapter.CaptureCallbackContainer) key;
                    value.execute(new Runnable() { // from class: uz0
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraCallbackMap.onStarted_uGKBvU4$lambda$0(captureCallbackContainer, cameraCaptureSession, captureRequest, j2, j);
                        }
                    });
                }
            } else {
                value.execute(new vz0(key, this, requestMetadata, 0));
            }
        }
    }

    public final void removeCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
        cameraCaptureCallback.getClass();
        synchronized (this.callbackMap) {
            this.callbackMap.remove(cameraCaptureCallback);
            this.callbacks = n05.l(this.callbackMap);
            j59 j59Var = j59.a;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final CameraCallbackMap createFor(Collection<? extends CameraCaptureCallback> collection, Executor executor) {
            collection.getClass();
            executor.getClass();
            CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                cameraCallbackMap.addCaptureCallback((CameraCaptureCallback) it.next(), executor);
            }
            return cameraCallbackMap;
        }

        private Companion() {
        }
    }
}
