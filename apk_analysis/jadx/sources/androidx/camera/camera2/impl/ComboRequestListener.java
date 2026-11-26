package androidx.camera.camera2.impl;

import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import defpackage.j59;
import defpackage.jo1;
import defpackage.mu;
import defpackage.mx2;
import defpackage.n05;
import defpackage.nu;
import defpackage.ro1;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class ComboRequestListener implements Request.Listener {
    private final Map<Request.Listener, Executor> requestListeners = new LinkedHashMap();
    private volatile Map<Request.Listener, ? extends Executor> listeners = mx2.b;

    public final void addListener(Request.Listener listener, Executor executor) {
        listener.getClass();
        executor.getClass();
        if (this.listeners.containsKey(listener)) {
            throw new IllegalStateException((listener + " was already registered!").toString());
        }
        synchronized (this.requestListeners) {
            this.requestListeners.put(listener, executor);
            this.listeners = n05.l(this.requestListeners);
            j59 j59Var = j59.a;
        }
    }

    public final Map<Request.Listener, Executor> getListeners() {
        return this.listeners;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        request.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            entry.getValue().execute(new nu(1, entry.getKey(), request));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo40onBufferLostiiEMlm4(final RequestMetadata requestMetadata, final long j, final int i, final int i2) {
        requestMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: no1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo40onBufferLostiiEMlm4(requestMetadata, j, i, i2);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo9onCompleteCcXjc1I(final RequestMetadata requestMetadata, final long j, final FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: ko1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo9onCompleteCcXjc1I(requestMetadata, j, frameInfo);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo10onFailedCcXjc1I(final RequestMetadata requestMetadata, final long j, final RequestFailure requestFailure) {
        requestMetadata.getClass();
        requestFailure.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: mo1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo10onFailedCcXjc1I(requestMetadata, j, requestFailure);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
    public void mo41onPartialCaptureResultCcXjc1I(final RequestMetadata requestMetadata, final long j, final FrameMetadata frameMetadata) {
        requestMetadata.getClass();
        frameMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: oo1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo41onPartialCaptureResultCcXjc1I(requestMetadata, j, frameMetadata);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            entry.getValue().execute(new jo1(0, entry.getKey(), requestMetadata));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
    public void mo43onRequestSequenceCompletedRuT0dZU(final RequestMetadata requestMetadata, final long j) {
        requestMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: po1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo43onRequestSequenceCompletedRuT0dZU(requestMetadata, j);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            entry.getValue().execute(new mu(1, entry.getKey(), requestMetadata));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            entry.getValue().execute(new ro1(0, entry.getKey(), requestMetadata));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo44onStarteduGKBvU4(final RequestMetadata requestMetadata, final long j, final long j2) {
        requestMetadata.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: qo1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo44onStarteduGKBvU4(requestMetadata, j, j2);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo11onTotalCaptureResultCcXjc1I(final RequestMetadata requestMetadata, final long j, final FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        for (Map.Entry<Request.Listener, ? extends Executor> entry : this.listeners.entrySet()) {
            final Request.Listener key = entry.getKey();
            entry.getValue().execute(new Runnable() { // from class: lo1
                @Override // java.lang.Runnable
                public final void run() {
                    key.mo11onTotalCaptureResultCcXjc1I(requestMetadata, j, frameInfo);
                }
            });
        }
    }

    public final void removeListener(Request.Listener listener) {
        listener.getClass();
        synchronized (this.requestListeners) {
            this.requestListeners.remove(listener);
            this.listeners = n05.l(this.requestListeners);
            j59 j59Var = j59.a;
        }
    }
}
