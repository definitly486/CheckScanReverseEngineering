package androidx.camera.camera2.pipe.graph;

import android.content.res.TypedArray;
import android.hardware.camera2.CameraAccessException;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Trace;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.CaptureSequences;
import androidx.camera.camera2.pipe.InputRequest;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.ObjectUnavailableException;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.e02;
import defpackage.ht;
import defpackage.ih;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.mi2;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class GraphRequestProcessor {
    public static final Companion Companion = new Companion(null);
    private final GraphRequestProcessor$activeBurstListener$1 activeBurstListener;
    private final List<CaptureSequence<?>> activeCaptureSequences;
    private final CaptureSequenceProcessor<Object, CaptureSequence<Object>> captureSequenceProcessor;
    private final ht closed;
    private final int debugId;

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.camera.camera2.pipe.graph.GraphRequestProcessor$activeBurstListener$1] */
    private GraphRequestProcessor(CaptureSequenceProcessor<? extends Object, CaptureSequence<Object>> captureSequenceProcessor) {
        this.captureSequenceProcessor = captureSequenceProcessor;
        this.debugId = GraphRequestProcessorKt.getGraphRequestProcessorIds().b();
        this.closed = kt.a(false);
        this.activeCaptureSequences = new ArrayList();
        this.activeBurstListener = new CaptureSequence.CaptureSequenceListener() { // from class: androidx.camera.camera2.pipe.graph.GraphRequestProcessor$activeBurstListener$1
            @Override // androidx.camera.camera2.pipe.CaptureSequence.CaptureSequenceListener
            public void onCaptureSequenceComplete(CaptureSequence<?> captureSequence) {
                captureSequence.getClass();
                if (captureSequence.getRepeating()) {
                    return;
                }
                List list = this.this$0.activeCaptureSequences;
                GraphRequestProcessor graphRequestProcessor = this.this$0;
                synchronized (list) {
                    graphRequestProcessor.activeCaptureSequences.remove(captureSequence);
                }
            }
        };
    }

    private final <T> void invokeOnAborted(CaptureSequence<? extends T> captureSequence) {
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = captureSequence.getCaptureMetadataList().size();
        for (int i = 0; i < size; i++) {
            RequestMetadata requestMetadata = captureSequence.getCaptureMetadataList().get(i);
            int size2 = captureSequence.getListeners().size();
            for (int i2 = 0; i2 < size2; i2++) {
                captureSequence.getListeners().get(i2).onAborted(requestMetadata.getRequest());
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = captureSequence.getCaptureMetadataList().size();
        for (int i3 = 0; i3 < size3; i3++) {
            RequestMetadata requestMetadata2 = captureSequence.getCaptureMetadataList().get(i3);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                ((Request.Listener) ih.b(requestMetadata2, i4)).onAborted(requestMetadata2.getRequest());
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    private final <T> void invokeOnRequestSequenceCreated(CaptureSequence<? extends T> captureSequence) {
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = captureSequence.getCaptureMetadataList().size();
        for (int i = 0; i < size; i++) {
            RequestMetadata requestMetadata = captureSequence.getCaptureMetadataList().get(i);
            int size2 = captureSequence.getListeners().size();
            for (int i2 = 0; i2 < size2; i2++) {
                captureSequence.getListeners().get(i2).onRequestSequenceCreated(requestMetadata);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = captureSequence.getCaptureMetadataList().size();
        for (int i3 = 0; i3 < size3; i3++) {
            RequestMetadata requestMetadata2 = captureSequence.getCaptureMetadataList().get(i3);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                ((Request.Listener) ih.b(requestMetadata2, i4)).onRequestSequenceCreated(requestMetadata2);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    private final <T> void invokeOnRequestSequenceSubmitted(CaptureSequence<? extends T> captureSequence) {
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = captureSequence.getCaptureMetadataList().size();
        for (int i = 0; i < size; i++) {
            RequestMetadata requestMetadata = captureSequence.getCaptureMetadataList().get(i);
            int size2 = captureSequence.getListeners().size();
            for (int i2 = 0; i2 < size2; i2++) {
                captureSequence.getListeners().get(i2).onRequestSequenceSubmitted(requestMetadata);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = captureSequence.getCaptureMetadataList().size();
        for (int i3 = 0; i3 < size3; i3++) {
            RequestMetadata requestMetadata2 = captureSequence.getCaptureMetadataList().get(i3);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                ((Request.Listener) ih.b(requestMetadata2, i4)).onRequestSequenceSubmitted(requestMetadata2);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    public final void abortCaptures$camera_camera2_pipe() {
        List<CaptureSequence> listT0;
        synchronized (this.activeCaptureSequences) {
            listT0 = qn1.t0(this.activeCaptureSequences);
            this.activeCaptureSequences.clear();
        }
        for (CaptureSequence captureSequence : listT0) {
            CaptureSequences captureSequences = CaptureSequences.INSTANCE;
            Debug debug = Debug.INSTANCE;
            Trace.beginSection("InvokeInternalListeners");
            int size = captureSequence.getCaptureMetadataList().size();
            for (int i = 0; i < size; i++) {
                RequestMetadata requestMetadata = captureSequence.getCaptureMetadataList().get(i);
                int size2 = captureSequence.getListeners().size();
                for (int i2 = 0; i2 < size2; i2++) {
                    captureSequence.getListeners().get(i2).onAborted(requestMetadata.getRequest());
                }
            }
            Debug debug2 = Debug.INSTANCE;
            Trace.endSection();
            Trace.beginSection("InvokeRequestListeners");
            int size3 = captureSequence.getCaptureMetadataList().size();
            for (int i3 = 0; i3 < size3; i3++) {
                RequestMetadata requestMetadata2 = captureSequence.getCaptureMetadataList().get(i3);
                int size4 = requestMetadata2.getRequest().getListeners().size();
                for (int i4 = 0; i4 < size4; i4++) {
                    ((Request.Listener) ih.b(requestMetadata2, i4)).onAborted(requestMetadata2.getRequest());
                }
            }
            Debug debug3 = Debug.INSTANCE;
            Trace.endSection();
        }
        this.captureSequenceProcessor.abortCaptures();
    }

    public final Object shutdown$camera_camera2_pipe(e02<? super j59> e02Var) {
        Object objShutdown;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Closing " + this);
        }
        return (this.closed.a() && (objShutdown = this.captureSequenceProcessor.shutdown(e02Var)) == a32.COROUTINE_SUSPENDED) ? objShutdown : j59.a;
    }

    public final void stopRepeating$camera_camera2_pipe() {
        this.captureSequenceProcessor.stopRepeating();
    }

    public final boolean submit$camera_camera2_pipe(boolean z, List<Request> list, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, Map<?, ? extends Object> map3, List<? extends Request.Listener> list2) {
        Throwable th;
        boolean z2;
        AutoCloseable image;
        boolean zIsTerminated;
        list.getClass();
        map.getClass();
        map2.getClass();
        map3.getClass();
        list2.getClass();
        if (!this.closed.b()) {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("CXCP#buildCaptureSequence");
                CaptureSequence<?> captureSequenceBuild = this.captureSequenceProcessor.build(z, list, map, map2, map3, this.activeBurstListener, list2);
                Trace.endSection();
                boolean z3 = true;
                if (captureSequenceBuild == null) {
                    List<Request> list3 = list;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator<T> it = list3.iterator();
                        while (it.hasNext()) {
                            if (((Request) it.next()).getInputRequest() != null) {
                                for (Request request : list) {
                                    InputRequest inputRequest = request.getInputRequest();
                                    if (inputRequest != null && (image = inputRequest.getImage()) != null) {
                                        if (image instanceof AutoCloseable) {
                                            image.close();
                                        } else if (image instanceof ExecutorService) {
                                            ExecutorService executorService = (ExecutorService) image;
                                            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                                                executorService.shutdown();
                                                boolean z4 = false;
                                                while (!zIsTerminated) {
                                                    try {
                                                        zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                                                    } catch (InterruptedException unused) {
                                                        if (!z4) {
                                                            executorService.shutdownNow();
                                                            z4 = true;
                                                        }
                                                    }
                                                }
                                                if (z4) {
                                                    Thread.currentThread().interrupt();
                                                }
                                            }
                                        } else if (image instanceof TypedArray) {
                                            ((TypedArray) image).recycle();
                                        } else if (image instanceof MediaMetadataRetriever) {
                                            ((MediaMetadataRetriever) image).release();
                                        } else {
                                            if (!(image instanceof MediaDrm)) {
                                                mi2.b();
                                                return false;
                                            }
                                            ((MediaDrm) image).release();
                                        }
                                        j59 j59Var = j59.a;
                                    }
                                    Iterator<Request.Listener> it2 = request.getListeners().iterator();
                                    while (it2.hasNext()) {
                                        it2.next().onAborted(request);
                                    }
                                }
                                return true;
                            }
                        }
                    }
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to submit " + list + ": " + this + " failed to build CaptureSequence.");
                        return false;
                    }
                } else if (!this.closed.b()) {
                    if (!captureSequenceBuild.getRepeating()) {
                        synchronized (this.activeCaptureSequences) {
                            this.activeCaptureSequences.add(captureSequenceBuild);
                        }
                    }
                    try {
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, this + " submitting " + captureSequenceBuild);
                        }
                        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
                        Trace.beginSection("InvokeInternalListeners");
                        int size = captureSequenceBuild.getCaptureMetadataList().size();
                        for (int i = 0; i < size; i++) {
                            RequestMetadata requestMetadata = captureSequenceBuild.getCaptureMetadataList().get(i);
                            int size2 = captureSequenceBuild.getListeners().size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                captureSequenceBuild.getListeners().get(i2).onRequestSequenceCreated(requestMetadata);
                            }
                        }
                        Debug debug2 = Debug.INSTANCE;
                        Trace.endSection();
                        Trace.beginSection("InvokeRequestListeners");
                        int size3 = captureSequenceBuild.getCaptureMetadataList().size();
                        for (int i3 = 0; i3 < size3; i3++) {
                            RequestMetadata requestMetadata2 = captureSequenceBuild.getCaptureMetadataList().get(i3);
                            int size4 = requestMetadata2.getRequest().getListeners().size();
                            for (int i4 = 0; i4 < size4; i4++) {
                                requestMetadata2.getRequest().getListeners().get(i4).onRequestSequenceCreated(requestMetadata2);
                            }
                        }
                        Debug debug3 = Debug.INSTANCE;
                        Trace.endSection();
                        synchronized (captureSequenceBuild) {
                            if (!this.closed.b()) {
                                try {
                                    Trace.beginSection("CXCP#submit(CaptureSequence)");
                                    Integer numSubmit = this.captureSequenceProcessor.submit(captureSequenceBuild);
                                    int iIntValue = numSubmit != null ? numSubmit.intValue() : -1;
                                    captureSequenceBuild.setSequenceNumber(iIntValue);
                                    Trace.endSection();
                                    if (iIntValue != -1) {
                                        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
                                        Trace.beginSection("InvokeInternalListeners");
                                        int size5 = captureSequenceBuild.getCaptureMetadataList().size();
                                        for (int i5 = 0; i5 < size5; i5++) {
                                            RequestMetadata requestMetadata3 = captureSequenceBuild.getCaptureMetadataList().get(i5);
                                            int size6 = captureSequenceBuild.getListeners().size();
                                            for (int i6 = 0; i6 < size6; i6++) {
                                                captureSequenceBuild.getListeners().get(i6).onRequestSequenceSubmitted(requestMetadata3);
                                            }
                                        }
                                        Debug debug4 = Debug.INSTANCE;
                                        Trace.endSection();
                                        Trace.beginSection("InvokeRequestListeners");
                                        int size7 = captureSequenceBuild.getCaptureMetadataList().size();
                                        for (int i7 = 0; i7 < size7; i7++) {
                                            RequestMetadata requestMetadata4 = captureSequenceBuild.getCaptureMetadataList().get(i7);
                                            int size8 = requestMetadata4.getRequest().getListeners().size();
                                            for (int i8 = 0; i8 < size8; i8++) {
                                                requestMetadata4.getRequest().getListeners().get(i8).onRequestSequenceSubmitted(requestMetadata4);
                                            }
                                        }
                                        Debug debug5 = Debug.INSTANCE;
                                        Trace.endSection();
                                        try {
                                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                                android.util.Log.d(Log.TAG, this + " submitted " + captureSequenceBuild);
                                            }
                                            z2 = true;
                                        } catch (CameraAccessException | ObjectUnavailableException unused2) {
                                        } catch (Throwable th2) {
                                            th = th2;
                                            if (z3 || captureSequenceBuild.getRepeating()) {
                                                throw th;
                                            }
                                            synchronized (this.activeCaptureSequences) {
                                                this.activeCaptureSequences.remove(captureSequenceBuild);
                                            }
                                            CaptureSequences captureSequences3 = CaptureSequences.INSTANCE;
                                            Debug debug6 = Debug.INSTANCE;
                                            Trace.beginSection("InvokeInternalListeners");
                                            int size9 = captureSequenceBuild.getCaptureMetadataList().size();
                                            for (int i9 = 0; i9 < size9; i9++) {
                                                RequestMetadata requestMetadata5 = captureSequenceBuild.getCaptureMetadataList().get(i9);
                                                int size10 = captureSequenceBuild.getListeners().size();
                                                for (int i10 = 0; i10 < size10; i10++) {
                                                    captureSequenceBuild.getListeners().get(i10).onAborted(requestMetadata5.getRequest());
                                                }
                                            }
                                            Debug debug7 = Debug.INSTANCE;
                                            Trace.endSection();
                                            Trace.beginSection("InvokeRequestListeners");
                                            int size11 = captureSequenceBuild.getCaptureMetadataList().size();
                                            for (int i11 = 0; i11 < size11; i11++) {
                                                RequestMetadata requestMetadata6 = captureSequenceBuild.getCaptureMetadataList().get(i11);
                                                int size12 = requestMetadata6.getRequest().getListeners().size();
                                                for (int i12 = 0; i12 < size12; i12++) {
                                                    ((Request.Listener) ih.b(requestMetadata6, i12)).onAborted(requestMetadata6.getRequest());
                                                }
                                            }
                                            Debug debug8 = Debug.INSTANCE;
                                            Trace.endSection();
                                            throw th;
                                        }
                                    } else {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w(Log.TAG, "Failed to submit " + captureSequenceBuild + ": " + this + " received -1 from submit.");
                                        }
                                        z2 = false;
                                        z3 = false;
                                    }
                                    if (z2 || captureSequenceBuild.getRepeating()) {
                                        return z3;
                                    }
                                    synchronized (this.activeCaptureSequences) {
                                        this.activeCaptureSequences.remove(captureSequenceBuild);
                                    }
                                    CaptureSequences captureSequences4 = CaptureSequences.INSTANCE;
                                    Trace.beginSection("InvokeInternalListeners");
                                    int size13 = captureSequenceBuild.getCaptureMetadataList().size();
                                    for (int i13 = 0; i13 < size13; i13++) {
                                        RequestMetadata requestMetadata7 = captureSequenceBuild.getCaptureMetadataList().get(i13);
                                        int size14 = captureSequenceBuild.getListeners().size();
                                        for (int i14 = 0; i14 < size14; i14++) {
                                            captureSequenceBuild.getListeners().get(i14).onAborted(requestMetadata7.getRequest());
                                        }
                                    }
                                    Debug debug9 = Debug.INSTANCE;
                                    Trace.endSection();
                                    Trace.beginSection("InvokeRequestListeners");
                                    int size15 = captureSequenceBuild.getCaptureMetadataList().size();
                                    for (int i15 = 0; i15 < size15; i15++) {
                                        RequestMetadata requestMetadata8 = captureSequenceBuild.getCaptureMetadataList().get(i15);
                                        int size16 = requestMetadata8.getRequest().getListeners().size();
                                        for (int i16 = 0; i16 < size16; i16++) {
                                            ((Request.Listener) ih.b(requestMetadata8, i16)).onAborted(requestMetadata8.getRequest());
                                        }
                                    }
                                    Debug debug10 = Debug.INSTANCE;
                                    Trace.endSection();
                                    return z3;
                                } catch (Throwable th3) {
                                    Trace.endSection();
                                    throw th3;
                                }
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to submit " + captureSequenceBuild + ": " + this + " is closed.");
                            }
                            if (!captureSequenceBuild.getRepeating()) {
                                synchronized (this.activeCaptureSequences) {
                                    this.activeCaptureSequences.remove(captureSequenceBuild);
                                }
                                CaptureSequences captureSequences5 = CaptureSequences.INSTANCE;
                                Trace.beginSection("InvokeInternalListeners");
                                int size17 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i17 = 0; i17 < size17; i17++) {
                                    RequestMetadata requestMetadata9 = captureSequenceBuild.getCaptureMetadataList().get(i17);
                                    int size18 = captureSequenceBuild.getListeners().size();
                                    for (int i18 = 0; i18 < size18; i18++) {
                                        captureSequenceBuild.getListeners().get(i18).onAborted(requestMetadata9.getRequest());
                                    }
                                }
                                Debug debug11 = Debug.INSTANCE;
                                Trace.endSection();
                                Trace.beginSection("InvokeRequestListeners");
                                int size19 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i19 = 0; i19 < size19; i19++) {
                                    RequestMetadata requestMetadata10 = captureSequenceBuild.getCaptureMetadataList().get(i19);
                                    int size20 = requestMetadata10.getRequest().getListeners().size();
                                    for (int i20 = 0; i20 < size20; i20++) {
                                        ((Request.Listener) ih.b(requestMetadata10, i20)).onAborted(requestMetadata10.getRequest());
                                    }
                                }
                                Debug debug12 = Debug.INSTANCE;
                                Trace.endSection();
                                return false;
                            }
                        }
                    } catch (CameraAccessException unused3) {
                        if (!captureSequenceBuild.getRepeating()) {
                            synchronized (this.activeCaptureSequences) {
                                this.activeCaptureSequences.remove(captureSequenceBuild);
                                CaptureSequences captureSequences6 = CaptureSequences.INSTANCE;
                                Debug debug13 = Debug.INSTANCE;
                                Trace.beginSection("InvokeInternalListeners");
                                int size21 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i21 = 0; i21 < size21; i21++) {
                                    RequestMetadata requestMetadata11 = captureSequenceBuild.getCaptureMetadataList().get(i21);
                                    int size22 = captureSequenceBuild.getListeners().size();
                                    for (int i22 = 0; i22 < size22; i22++) {
                                        captureSequenceBuild.getListeners().get(i22).onAborted(requestMetadata11.getRequest());
                                    }
                                }
                                Debug debug14 = Debug.INSTANCE;
                                Trace.endSection();
                                Trace.beginSection("InvokeRequestListeners");
                                int size23 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i23 = 0; i23 < size23; i23++) {
                                    RequestMetadata requestMetadata12 = captureSequenceBuild.getCaptureMetadataList().get(i23);
                                    int size24 = requestMetadata12.getRequest().getListeners().size();
                                    for (int i24 = 0; i24 < size24; i24++) {
                                        ((Request.Listener) ih.b(requestMetadata12, i24)).onAborted(requestMetadata12.getRequest());
                                    }
                                }
                                Debug debug15 = Debug.INSTANCE;
                                Trace.endSection();
                            }
                        }
                    } catch (ObjectUnavailableException unused4) {
                        if (!captureSequenceBuild.getRepeating()) {
                            synchronized (this.activeCaptureSequences) {
                                this.activeCaptureSequences.remove(captureSequenceBuild);
                                CaptureSequences captureSequences7 = CaptureSequences.INSTANCE;
                                Debug debug16 = Debug.INSTANCE;
                                Trace.beginSection("InvokeInternalListeners");
                                int size25 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i25 = 0; i25 < size25; i25++) {
                                    RequestMetadata requestMetadata13 = captureSequenceBuild.getCaptureMetadataList().get(i25);
                                    int size26 = captureSequenceBuild.getListeners().size();
                                    for (int i26 = 0; i26 < size26; i26++) {
                                        captureSequenceBuild.getListeners().get(i26).onAborted(requestMetadata13.getRequest());
                                    }
                                }
                                Debug debug17 = Debug.INSTANCE;
                                Trace.endSection();
                                Trace.beginSection("InvokeRequestListeners");
                                int size27 = captureSequenceBuild.getCaptureMetadataList().size();
                                for (int i27 = 0; i27 < size27; i27++) {
                                    RequestMetadata requestMetadata14 = captureSequenceBuild.getCaptureMetadataList().get(i27);
                                    int size28 = requestMetadata14.getRequest().getListeners().size();
                                    for (int i28 = 0; i28 < size28; i28++) {
                                        ((Request.Listener) ih.b(requestMetadata14, i28)).onAborted(requestMetadata14.getRequest());
                                    }
                                }
                                Debug debug18 = Debug.INSTANCE;
                                Trace.endSection();
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        z3 = false;
                    }
                } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to submit " + list + ": " + this + " is closed.");
                    return false;
                }
            } catch (Throwable th5) {
                Trace.endSection();
                throw th5;
            }
        } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to submit " + list + ": " + this + " is closed.");
            return false;
        }
        return false;
    }

    public String toString() {
        return "GraphRequestProcessor-" + this.debugId;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final GraphRequestProcessor from(CaptureSequenceProcessor<?, ?> captureSequenceProcessor) {
            captureSequenceProcessor.getClass();
            return new GraphRequestProcessor(captureSequenceProcessor, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ GraphRequestProcessor(CaptureSequenceProcessor captureSequenceProcessor, jh2 jh2Var) {
        this(captureSequenceProcessor);
    }
}
