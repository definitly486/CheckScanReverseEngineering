package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraTimestamp;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequences;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.SensorTimestamp;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.cg;
import defpackage.e02;
import defpackage.ih;
import defpackage.j59;
import defpackage.jh2;
import defpackage.xp1;
import defpackage.yp1;
import defpackage.zg;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CaptureSequence extends CameraCaptureSession.CaptureCallback implements Camera2CaptureCallback, CaptureSequence<CaptureRequest> {
    private volatile Integer _sequenceNumber;
    private final String cameraId;
    private final List<RequestMetadata> captureMetadataList;
    private final List<CaptureRequest> captureRequestList;
    private final long debugId;
    private final xp1<j59> hasStarted;
    private final List<Request.Listener> listeners;
    private final boolean repeating;
    private final CaptureSequence.CaptureSequenceListener sequenceListener;
    private final StreamGraph streamGraph;
    private final StrictMode strictMode;
    private final Map<Surface, OutputId> surfaceToOutputMap;
    private final Map<Surface, StreamId> surfaceToStreamMap;

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CaptureSequence(String str, boolean z, List<CaptureRequest> list, List<? extends RequestMetadata> list2, List<? extends Request.Listener> list3, CaptureSequence.CaptureSequenceListener captureSequenceListener, Map<Surface, StreamId> map, Map<Surface, OutputId> map2, StreamGraph streamGraph, StrictMode strictMode) {
        str.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        captureSequenceListener.getClass();
        map.getClass();
        map2.getClass();
        streamGraph.getClass();
        strictMode.getClass();
        this.cameraId = str;
        this.repeating = z;
        this.captureRequestList = list;
        this.captureMetadataList = list2;
        this.listeners = list3;
        this.sequenceListener = captureSequenceListener;
        this.surfaceToStreamMap = map;
        this.surfaceToOutputMap = map2;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.debugId = Camera2CaptureSequenceProcessorKt.getCaptureSequenceDebugIds().a();
        this.hasStarted = new yp1();
        if (getCaptureRequestList().size() == getCaptureMetadataList().size()) {
            return;
        }
        ah.f("CaptureRequestList and CaptureMetadataList must have a 1:1 mapping.");
        throw null;
    }

    /* JADX INFO: renamed from: getStreamId-Lfjdq8s, reason: not valid java name */
    private final StreamId m761getStreamIdLfjdq8s(Surface surface) {
        CameraStream stream;
        StreamId streamId = this.surfaceToStreamMap.get(surface);
        if (streamId != null) {
            return streamId;
        }
        OutputId outputId = this.surfaceToOutputMap.get(surface);
        OutputStream outputStreamM717getiYJqvbA = outputId != null ? this.streamGraph.m717getiYJqvbA(outputId.m509unboximpl()) : null;
        if (outputStreamM717getiYJqvbA == null || (stream = outputStreamM717getiYJqvbA.getStream()) == null) {
            return null;
        }
        return StreamId.m723boximpl(stream.m383getIdptHMqGs());
    }

    /* JADX INFO: renamed from: invokeCaptureFailure-CcXjc1I, reason: not valid java name */
    private final void m762invokeCaptureFailureCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        getSequenceListener().onCaptureSequenceComplete(this);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo10onFailedCcXjc1I(requestMetadata, j, requestFailure);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) ih.b(requestMetadata, i2)).mo10onFailedCcXjc1I(requestMetadata, j, requestFailure);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    private final RequestMetadata readRequestMetadata(CaptureRequest captureRequest) {
        int size = getCaptureRequestList().size();
        for (int i = 0; i < size; i++) {
            if (getCaptureRequestList().get(i) == captureRequest) {
                return getCaptureMetadataList().get(i);
            }
        }
        StringBuilder sb = new StringBuilder("Failed to find CaptureRequest ");
        sb.append(captureRequest);
        cg.g(sb, " in ", getCaptureRequestList());
        return null;
    }

    public final Object awaitStarted$camera_camera2_pipe(e02<? super j59> e02Var) {
        Object objZ = this.hasStarted.Z(e02Var);
        return objZ == a32.COROUTINE_SUSPENDED ? objZ : j59.a;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8 */
    public String mo400getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List<RequestMetadata> getCaptureMetadataList() {
        return this.captureMetadataList;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List<CaptureRequest> getCaptureRequestList() {
        return this.captureRequestList;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List<Request.Listener> getListeners() {
        return this.listeners;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public boolean getRepeating() {
        return this.repeating;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public CaptureSequence.CaptureSequenceListener getSequenceListener() {
        return this.sequenceListener;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public int getSequenceNumber() {
        int iIntValue;
        if (this._sequenceNumber != null) {
            Integer num = this._sequenceNumber;
            if (num != null) {
                return num.intValue();
            }
            cg.f(this, "SequenceNumber has not been set for ", 33);
            return 0;
        }
        synchronized (this) {
            Integer num2 = this._sequenceNumber;
            if (num2 == null) {
                throw new IllegalStateException(("SequenceNumber has not been set for " + this + '!').toString());
            }
            iIntValue = num2.intValue();
        }
        return iIntValue;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureBufferLost(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        surface.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureBufferLost");
        long jM464constructorimpl = FrameNumber.m464constructorimpl(j);
        StreamId streamIdM761getStreamIdLfjdq8s = m761getStreamIdLfjdq8s(surface);
        OutputId outputId = this.surfaceToOutputMap.get(surface);
        if (streamIdM761getStreamIdLfjdq8s == null) {
            StringBuilder sb = new StringBuilder("Unable to find the streamId for ");
            sb.append(surface);
            zg.g(sb, " on ", FrameNumber.m468toStringimpl(jM464constructorimpl));
            return;
        }
        if (outputId == null) {
            StringBuilder sb2 = new StringBuilder("Unable to find the outputId for ");
            sb2.append(surface);
            zg.g(sb2, " on ", FrameNumber.m468toStringimpl(jM464constructorimpl));
            return;
        }
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).m628onBufferLostDlC0U5Y(requestMetadata, jM464constructorimpl, streamIdM761getStreamIdLfjdq8s.m729unboximpl());
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) ih.b(requestMetadata, i2)).m628onBufferLostDlC0U5Y(requestMetadata, jM464constructorimpl, streamIdM761getStreamIdLfjdq8s.m729unboximpl());
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size3 = getListeners().size();
        for (int i3 = 0; i3 < size3; i3++) {
            getListeners().get(i3).mo40onBufferLostiiEMlm4(requestMetadata, jM464constructorimpl, streamIdM761getStreamIdLfjdq8s.m729unboximpl(), outputId.m509unboximpl());
        }
        Debug debug4 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size4 = requestMetadata.getRequest().getListeners().size();
        for (int i4 = 0; i4 < size4; i4++) {
            ((Request.Listener) ih.b(requestMetadata, i4)).mo40onBufferLostiiEMlm4(requestMetadata, jM464constructorimpl, streamIdM761getStreamIdLfjdq8s.m729unboximpl(), outputId.m509unboximpl());
        }
        Debug debug5 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        totalCaptureResult.getClass();
        mo759onCaptureCompletedrmrZIYk(captureRequest, totalCaptureResult, FrameNumber.m464constructorimpl(totalCaptureResult.getFrameNumber()));
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    /* JADX INFO: renamed from: onCaptureCompleted-rmrZIYk */
    public void mo759onCaptureCompletedrmrZIYk(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult, long j) {
        captureRequest.getClass();
        totalCaptureResult.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureCompleted");
        Trace.beginSection("onCaptureSequenceComplete");
        getSequenceListener().onCaptureSequenceComplete(this);
        Trace.endSection();
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        AndroidFrameInfo androidFrameInfo = new AndroidFrameInfo(totalCaptureResult, mo400getCameraIdDz_R5H8(), requestMetadata, null);
        Trace.beginSection("onTotalCaptureResult");
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo11onTotalCaptureResultCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) ih.b(requestMetadata, i2)).mo11onTotalCaptureResultCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
        Trace.beginSection("onComplete");
        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size3 = getListeners().size();
        for (int i3 = 0; i3 < size3; i3++) {
            getListeners().get(i3).mo9onCompleteCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug4 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size4 = requestMetadata.getRequest().getListeners().size();
        for (int i4 = 0; i4 < size4; i4++) {
            ((Request.Listener) ih.b(requestMetadata, i4)).mo9onCompleteCcXjc1I(requestMetadata, j, androidFrameInfo);
        }
        Debug debug5 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        captureFailure.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureFailed");
        this.hasStarted.f(j59.a);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        m762invokeCaptureFailureCcXjc1I(requestMetadata, FrameNumber.m464constructorimpl(captureFailure.getFrameNumber()), new AndroidCaptureFailure(requestMetadata, captureFailure));
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    /* JADX INFO: renamed from: onCaptureFailed-RuT0dZU */
    public void mo760onCaptureFailedRuT0dZU(CaptureRequest captureRequest, long j) {
        captureRequest.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureFailed");
        this.hasStarted.f(j59.a);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        m762invokeCaptureFailureCcXjc1I(requestMetadata, j, new ExtensionRequestFailure(requestMetadata, false, j, 0, null));
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureProcessProgressed(CaptureRequest captureRequest, int i) {
        captureRequest.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureProcessProgressed");
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i2 = 0; i2 < size; i2++) {
            getListeners().get(i2).onCaptureProgress(requestMetadata, i);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((Request.Listener) ih.b(requestMetadata, i3)).onCaptureProgress(requestMetadata, i);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureProgressed(CaptureRequest captureRequest, CaptureResult captureResult) {
        captureRequest.getClass();
        captureResult.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureProgressed");
        long jM464constructorimpl = FrameNumber.m464constructorimpl(captureResult.getFrameNumber());
        AndroidFrameMetadata androidFrameMetadata = new AndroidFrameMetadata(captureResult, mo400getCameraIdDz_R5H8(), null);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo41onPartialCaptureResultCcXjc1I(requestMetadata, jM464constructorimpl, androidFrameMetadata);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) ih.b(requestMetadata, i2)).mo41onPartialCaptureResultCcXjc1I(requestMetadata, jM464constructorimpl, androidFrameMetadata);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureSequenceAborted(int i) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureSequenceAborted");
        this.hasStarted.f(j59.a);
        getSequenceListener().onCaptureSequenceComplete(this);
        StrictMode strictMode = this.strictMode;
        if (!(getSequenceNumber() == i)) {
            String str = "onCaptureSequenceAborted was invoked on " + getSequenceNumber() + ", but expected " + i + '!';
            if (strictMode.getEnabled()) {
                ah.f(str);
                return;
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, str);
            }
        }
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getCaptureMetadataList().size();
        for (int i2 = 0; i2 < size; i2++) {
            RequestMetadata requestMetadata = getCaptureMetadataList().get(i2);
            int size2 = getListeners().size();
            for (int i3 = 0; i3 < size2; i3++) {
                getListeners().get(i3).onRequestSequenceAborted(requestMetadata);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = getCaptureMetadataList().size();
        for (int i4 = 0; i4 < size3; i4++) {
            RequestMetadata requestMetadata2 = getCaptureMetadataList().get(i4);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i5 = 0; i5 < size4; i5++) {
                ((Request.Listener) ih.b(requestMetadata2, i5)).onRequestSequenceAborted(requestMetadata2);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureSequenceCompleted(int i, long j) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureSequenceCompleted");
        this.hasStarted.f(j59.a);
        getSequenceListener().onCaptureSequenceComplete(this);
        StrictMode strictMode = this.strictMode;
        if (!(getSequenceNumber() == i)) {
            String str = "onCaptureSequenceCompleted was invoked on " + getSequenceNumber() + ", but expected " + i + '!';
            if (strictMode.getEnabled()) {
                ah.f(str);
                return;
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, str);
            }
        }
        long jM464constructorimpl = FrameNumber.m464constructorimpl(j);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getCaptureMetadataList().size();
        for (int i2 = 0; i2 < size; i2++) {
            RequestMetadata requestMetadata = getCaptureMetadataList().get(i2);
            int size2 = getListeners().size();
            for (int i3 = 0; i3 < size2; i3++) {
                getListeners().get(i3).mo43onRequestSequenceCompletedRuT0dZU(requestMetadata, jM464constructorimpl);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = getCaptureMetadataList().size();
        for (int i4 = 0; i4 < size3; i4++) {
            RequestMetadata requestMetadata2 = getCaptureMetadataList().get(i4);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i5 = 0; i5 < size4; i5++) {
                ((Request.Listener) ih.b(requestMetadata2, i5)).mo43onRequestSequenceCompletedRuT0dZU(requestMetadata2, jM464constructorimpl);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureStarted(CaptureRequest captureRequest, long j, long j2) {
        captureRequest.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureStarted");
        long jM394constructorimpl = CameraTimestamp.m394constructorimpl(j2);
        long jM464constructorimpl = FrameNumber.m464constructorimpl(j);
        this.hasStarted.f(j59.a);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo44onStarteduGKBvU4(requestMetadata, jM464constructorimpl, jM394constructorimpl);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) ih.b(requestMetadata, i2)).mo44onStarteduGKBvU4(requestMetadata, jM464constructorimpl, jM394constructorimpl);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onReadoutStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onReadoutStarted");
        long jM671constructorimpl = SensorTimestamp.m671constructorimpl(j);
        long jM464constructorimpl = FrameNumber.m464constructorimpl(j2);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo42onReadoutStartedmP9r9w(requestMetadata, jM464constructorimpl, jM671constructorimpl);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Request.Listener) ih.b(requestMetadata, i2)).mo42onReadoutStartedmP9r9w(requestMetadata, jM464constructorimpl, jM671constructorimpl);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public void setSequenceNumber(int i) {
        this._sequenceNumber = Integer.valueOf(i);
    }

    public String toString() {
        return "Camera2CaptureSequence-" + this.debugId;
    }

    public /* synthetic */ Camera2CaptureSequence(String str, boolean z, List list, List list2, List list3, CaptureSequence.CaptureSequenceListener captureSequenceListener, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, jh2 jh2Var) {
        this(str, z, list, list2, list3, captureSequenceListener, map, map2, streamGraph, strictMode);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        onCaptureStarted(captureRequest, j2, j);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        cameraCaptureSession.getClass();
        captureRequest.getClass();
        captureResult.getClass();
        onCaptureProgressed(captureRequest, captureResult);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
        cameraCaptureSession.getClass();
        onCaptureSequenceAborted(i);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i, long j) {
        cameraCaptureSession.getClass();
        onCaptureSequenceCompleted(i, j);
    }
}
