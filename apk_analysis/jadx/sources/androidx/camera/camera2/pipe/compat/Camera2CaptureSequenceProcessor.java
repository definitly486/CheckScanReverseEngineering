package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Trace;
import android.util.ArrayMap;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.media.AndroidImageWriter;
import androidx.camera.camera2.pipe.media.ImageWrapper;
import androidx.camera.camera2.pipe.media.ImageWriterWrapper;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.wg;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CaptureSequenceProcessor implements CaptureSequenceProcessor<CaptureRequest, Camera2CaptureSequence> {
    public static final Companion Companion = new Companion(null);
    private static final long WAIT_FOR_REPEATING_TIMEOUT_MS = 2000;
    private final boolean awaitRepeatingRequestOnDisconnect;
    private final int debugId;
    private boolean disconnected;
    private final ImageWriterWrapper imageWriter;
    private Camera2CaptureSequence lastSingleRepeatingRequestSequence;
    private final Object lock;
    private final Map<OutputId, Surface> outputToSurfaceMap;
    private final CameraCaptureSessionWrapper session;
    private final StreamGraph streamGraph;
    private final Map<StreamId, Surface> streamToSurfaceMap;
    private final StrictMode strictMode;
    private final int template;
    private final Threads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2", f = "Camera2CaptureSequenceProcessor.kt", l = {395}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ Camera2CaptureSequence $captureSequence;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Camera2CaptureSequence camera2CaptureSequence, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$captureSequence = camera2CaptureSequence;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.$captureSequence, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Camera2CaptureSequence camera2CaptureSequence = this.$captureSequence;
                this.label = 1;
                if (camera2CaptureSequence.awaitStarted$camera_camera2_pipe(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map<StreamId, ? extends Surface> map, Map<OutputId, ? extends Surface> map2, StreamGraph streamGraph, StrictMode strictMode, boolean z) {
        cameraCaptureSessionWrapper.getClass();
        threads.getClass();
        map.getClass();
        map2.getClass();
        streamGraph.getClass();
        strictMode.getClass();
        this.session = cameraCaptureSessionWrapper;
        this.threads = threads;
        this.template = i;
        this.streamToSurfaceMap = map;
        this.outputToSurfaceMap = map2;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.awaitRepeatingRequestOnDisconnect = z;
        this.debugId = Camera2CaptureSequenceProcessorKt.getCaptureSequenceProcessorDebugIds().b();
        this.lock = new Object();
        ImageWriterWrapper imageWriterWrapperM980createU86x6Zg = null;
        if (!streamGraph.getInputs().isEmpty()) {
            InputStream inputStream = (InputStream) qn1.T(streamGraph.getInputs());
            Surface inputSurface = cameraCaptureSessionWrapper.getInputSurface();
            if (inputSurface == null) {
                ah.f("inputSurface is required to create instance of imageWriter.");
                throw null;
            }
            try {
                imageWriterWrapperM980createU86x6Zg = AndroidImageWriter.Companion.m980createU86x6Zg(inputSurface, inputStream.mo480getIdm1bwn9M(), inputStream.getMaxImages(), StreamFormat.m677boximpl(inputStream.mo479getFormat8FPWQzE()), threads.getCamera2Handler());
            } catch (RuntimeException e) {
                if (Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e(Log.TAG, "Failed to create ImageWriter for session " + this.session + "! Reprocessing will not be supported!", e);
                }
            }
            if (imageWriterWrapperM980createU86x6Zg != null && Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Created ImageWriter " + imageWriterWrapperM980createU86x6Zg + " for session " + this.session);
            }
        }
        this.imageWriter = imageWriterWrapperM980createU86x6Zg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void awaitRepeatingRequestStarted(Camera2CaptureSequence camera2CaptureSequence) {
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Waiting for the last repeating request sequence: " + camera2CaptureSequence);
        }
        if (((j59) this.threads.runBlockingCheckedOrNull(2000L, new AnonymousClass2(camera2CaptureSequence, null))) == null && log.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, this + "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = " + camera2CaptureSequence);
        }
    }

    /* JADX INFO: renamed from: buildCaptureRequestBuilder-0UCm73U, reason: not valid java name */
    private final CaptureRequest.Builder m763buildCaptureRequestBuilder0UCm73U(Request request, int i) {
        CaptureRequest.Builder builderMo732createCaptureRequest2PPcXtw;
        if (request.getInputRequest() != null) {
            TotalCaptureResult totalCaptureResult = (TotalCaptureResult) request.getInputRequest().getFrameInfo().unwrapAs(x07.a(TotalCaptureResult.class));
            if (totalCaptureResult == null) {
                wg.c(request.getInputRequest().getFrameInfo(), "Failed to unwrap FrameInfo ", " as TotalCaptureResult");
                return null;
            }
            builderMo732createCaptureRequest2PPcXtw = this.session.getDevice().createReprocessCaptureRequest(totalCaptureResult);
        } else {
            builderMo732createCaptureRequest2PPcXtw = this.session.getDevice().mo732createCaptureRequest2PPcXtw(i);
        }
        if (builderMo732createCaptureRequest2PPcXtw != null) {
            return builderMo732createCaptureRequest2PPcXtw;
        }
        if (request.getInputRequest() != null) {
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i(Log.TAG, "Failed to create a ReprocessingCaptureRequest.Builder from " + request.getInputRequest().getFrameInfo() + '!');
            }
        } else if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, "Failed to create a CaptureRequest.Builder from " + ((Object) RequestTemplate.m652toStringimpl(i)) + '!');
        }
        return null;
    }

    private final boolean buildSurfaceMaps(List<Request> list, Map<Surface, StreamId> map, Map<Surface, OutputId> map2, Map<StreamId, Surface> map3) {
        if (list.isEmpty()) {
            ah.f("build(...) should never be called with an empty request list!");
            return false;
        }
        for (Request request : list) {
            Iterator<StreamId> it = request.getStreams().iterator();
            boolean z = false;
            while (it.hasNext()) {
                int iM729unboximpl = it.next().m729unboximpl();
                if (!map3.containsKey(StreamId.m723boximpl(iM729unboximpl))) {
                    Surface surface = this.streamToSurfaceMap.get(StreamId.m723boximpl(iM729unboximpl));
                    if (surface != null) {
                        map.put(surface, StreamId.m723boximpl(iM729unboximpl));
                        map3.put(StreamId.m723boximpl(iM729unboximpl), surface);
                        CameraStream cameraStreamM716getaKI5c8E = this.streamGraph.m716getaKI5c8E(iM729unboximpl);
                        if (cameraStreamM716getaKI5c8E == null) {
                            ah.f("Required value was null.");
                            return false;
                        }
                        for (OutputStream outputStream : cameraStreamM716getaKI5c8E.getOutputs()) {
                            Surface surface2 = this.outputToSurfaceMap.get(OutputId.m503boximpl(outputStream.mo527getId4LaLFng()));
                            if (surface2 == null) {
                                ah.f("Required value was null.");
                                return false;
                            }
                            map2.put(surface2, OutputId.m503boximpl(outputStream.mo527getId4LaLFng()));
                        }
                    } else {
                        continue;
                    }
                }
                z = true;
            }
            if (!z) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "  Failed to bind any surfaces for " + request + '!');
                }
                return false;
            }
            if (!z) {
                ah.f("Check failed.");
                return false;
            }
        }
        return true;
    }

    private final boolean validateRequestList(List<Request> list, CameraCaptureSessionWrapper cameraCaptureSessionWrapper) {
        boolean z;
        boolean z2;
        if (list.isEmpty()) {
            ah.f("build(...) should never be called with an empty request list!");
            return false;
        }
        if (cameraCaptureSessionWrapper instanceof CameraConstrainedHighSpeedCaptureSessionWrapper) {
            Boolean bool = null;
            Boolean bool2 = null;
            for (Request request : list) {
                List<StreamId> streams = request.getStreams();
                if ((streams instanceof Collection) && streams.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it = streams.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ((StreamId) it.next()).m729unboximpl();
                            List<OutputStream> outputs = this.streamGraph.getOutputs();
                            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                                Iterator<T> it2 = outputs.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        OutputStream outputStream = (OutputStream) it2.next();
                                        OutputStream.StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez34 = outputStream.mo529getStreamUseCase8x2ez34();
                                        if (!(streamUseCaseMo529getStreamUseCase8x2ez34 == null ? false : OutputStream.StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez34.m589unboximpl(), OutputStream.StreamUseCase.Companion.m592getPREVIEWvrKr8v8()))) {
                                            OutputStream.StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc = outputStream.mo530getStreamUseHintHIPxoCc();
                                            if ((streamUseHintMo530getStreamUseHintHIPxoCc == null ? false : OutputStream.StreamUseHint.m600equalsimpl0(streamUseHintMo530getStreamUseHintHIPxoCc.m603unboximpl(), OutputStream.StreamUseHint.Companion.m604getDEFAULT4VYZOf8())) || outputStream.mo530getStreamUseHintHIPxoCc() == null) {
                                            }
                                        }
                                        z = true;
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                }
                Boolean boolValueOf = Boolean.valueOf(z);
                if (bool != null && !bool.equals(boolValueOf) && Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e(Log.TAG, "The previous high speed request and the current high speed request must both have a preview stream use case or hint. Previous request contains preview stream use case or hint: " + bool.booleanValue() + ". Current request contains preview stream use case or hint: " + z + '.');
                }
                List<StreamId> streams2 = request.getStreams();
                if ((streams2 instanceof Collection) && streams2.isEmpty()) {
                    z2 = false;
                } else {
                    Iterator<T> it3 = streams2.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            ((StreamId) it3.next()).m729unboximpl();
                            List<OutputStream> outputs2 = this.streamGraph.getOutputs();
                            if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                                Iterator<T> it4 = outputs2.iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        OutputStream outputStream2 = (OutputStream) it4.next();
                                        OutputStream.StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez35 = outputStream2.mo529getStreamUseCase8x2ez34();
                                        if (!(streamUseCaseMo529getStreamUseCase8x2ez35 == null ? false : OutputStream.StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez35.m589unboximpl(), OutputStream.StreamUseCase.Companion.m596getVIDEO_RECORDvrKr8v8()))) {
                                            OutputStream.StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc2 = outputStream2.mo530getStreamUseHintHIPxoCc();
                                            if (streamUseHintMo530getStreamUseHintHIPxoCc2 == null ? false : OutputStream.StreamUseHint.m600equalsimpl0(streamUseHintMo530getStreamUseHintHIPxoCc2.m603unboximpl(), OutputStream.StreamUseHint.Companion.m605getVIDEO_RECORD4VYZOf8())) {
                                            }
                                        }
                                        z2 = true;
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        } else {
                            z2 = false;
                        }
                    }
                }
                Boolean boolValueOf2 = Boolean.valueOf(z2);
                if (bool2 != null && !bool2.equals(boolValueOf2) && Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e(Log.TAG, "The previous high speed request and the current high speed request do not have the same video stream use case. Previous request contains video stream use case: " + bool2.booleanValue() + ". Current request contains video stream use case: " + z2 + '.');
                }
                List<OutputStream> outputs3 = this.streamGraph.getOutputs();
                if (!(outputs3 instanceof Collection) || !outputs3.isEmpty()) {
                    Iterator<T> it5 = outputs3.iterator();
                    while (it5.hasNext()) {
                        if (!((OutputStream) it5.next()).isValidForHighSpeedOperatingMode()) {
                            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                                android.util.Log.e(Log.TAG, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are " + this.streamGraph.getOutputs());
                            }
                            return false;
                        }
                    }
                }
                bool2 = boolValueOf2;
                bool = boolValueOf;
            }
        }
        return true;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public void abortCaptures() {
        synchronized (this.lock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, this + "#abortCaptures");
                }
                this.session.abortCaptures();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public Camera2CaptureSequence build(boolean z, List<Request> list, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, Map<?, ? extends Object> map3, CaptureSequence.CaptureSequenceListener captureSequenceListener, List<? extends Request.Listener> list2) {
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        this = this;
        Map<?, ? extends Object> map4 = map;
        Map<?, ? extends Object> map5 = map3;
        list.getClass();
        map4.getClass();
        map2.getClass();
        map5.getClass();
        captureSequenceListener.getClass();
        list2.getClass();
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        ArrayMap arrayMap5 = new ArrayMap();
        if (!this.validateRequestList(list, this.session) || !this.buildSurfaceMaps(list, arrayMap3, arrayMap4, arrayMap5)) {
            return null;
        }
        for (Request request : list) {
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Building CaptureRequest for " + request);
            }
            RequestTemplate requestTemplateM618getTemplateejQnlcg = request.m618getTemplateejQnlcg();
            int iM653unboximpl = requestTemplateM618getTemplateejQnlcg != null ? requestTemplateM618getTemplateejQnlcg.m653unboximpl() : this.template;
            CaptureRequest.Builder builderM763buildCaptureRequestBuilder0UCm73U = this.m763buildCaptureRequestBuilder0UCm73U(request, iM653unboximpl);
            if (builderM763buildCaptureRequestBuilder0UCm73U == null) {
                return null;
            }
            CameraPipeKeys cameraPipeKeys = CameraPipeKeys.INSTANCE;
            Object obj = map5.get(cameraPipeKeys.getCamera2CaptureRequestTag());
            if (obj == null) {
                obj = map4.get(cameraPipeKeys.getCamera2CaptureRequestTag());
            }
            builderM763buildCaptureRequestBuilder0UCm73U.setTag(obj);
            int size = request.getStreams().size();
            boolean z2 = false;
            for (int i = 0; i < size; i++) {
                Surface surface = (Surface) arrayMap5.get(request.getStreams().get(i));
                if (surface != null) {
                    builderM763buildCaptureRequestBuilder0UCm73U.addTarget(surface);
                    z2 = true;
                }
            }
            if (!z2) {
                ah.f("Check failed.");
                return null;
            }
            if (request.getInputRequest() == null) {
                RequestsKt.writeParameters(builderM763buildCaptureRequestBuilder0UCm73U, map4);
                RequestsKt.writeParameters(builderM763buildCaptureRequestBuilder0UCm73U, map2);
                RequestsKt.writeParameters(builderM763buildCaptureRequestBuilder0UCm73U, request.getParameters());
                RequestsKt.writeParameters(builderM763buildCaptureRequestBuilder0UCm73U, map5);
            } else {
                if (this.imageWriter == null) {
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e(Log.TAG, "Failed to queue request to ImageWriter - No ImageWriter available!");
                    }
                    return null;
                }
                ImageWrapper image = request.getInputRequest().getImage();
                synchronized (this.lock) {
                    if (this.disconnected) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, this + " disconnected. " + image + " can't be queued to " + this.imageWriter);
                        }
                        return null;
                    }
                    j59 j59Var = j59.a;
                    Log log = Log.INSTANCE;
                    if (log.getDEBUG_LOGGABLE()) {
                        android.util.Log.d(Log.TAG, "Queuing image " + image + " for reprocessing to ImageWriter " + this.imageWriter);
                    }
                    if (!this.imageWriter.queueInputImage(image)) {
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Failed to queue image " + image + " for reprocessing to ImageWriter " + this.imageWriter);
                        }
                        return null;
                    }
                    RequestsKt.writeParameters(builderM763buildCaptureRequestBuilder0UCm73U, request.getParameters());
                }
            }
            long jNextRequestNumber = Camera2CaptureSequenceProcessorKt.nextRequestNumber();
            CaptureRequest captureRequestBuild = builderM763buildCaptureRequestBuilder0UCm73U.build();
            captureRequestBuild.getClass();
            ArrayMap arrayMap6 = arrayMap3;
            CameraCaptureSessionWrapper cameraCaptureSessionWrapper = this.session;
            if (cameraCaptureSessionWrapper instanceof CameraConstrainedHighSpeedCaptureSessionWrapper) {
                List<CaptureRequest> listCreateHighSpeedRequestList = ((CameraConstrainedHighSpeedCaptureSessionWrapper) cameraCaptureSessionWrapper).createHighSpeedRequestList(captureRequestBuild);
                if (listCreateHighSpeedRequestList == null) {
                    return null;
                }
                List<StreamId> streams = request.getStreams();
                if (!(streams instanceof Collection) || !streams.isEmpty()) {
                    Iterator it = streams.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ((StreamId) it.next()).m729unboximpl();
                            List<OutputStream> outputs = this.streamGraph.getOutputs();
                            Iterator it2 = it;
                            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                                Iterator it3 = outputs.iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        OutputStream outputStream = (OutputStream) it3.next();
                                        OutputStream.StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez34 = outputStream.mo529getStreamUseCase8x2ez34();
                                        Iterator it4 = it3;
                                        ArrayMap arrayMap7 = arrayMap4;
                                        if (!(streamUseCaseMo529getStreamUseCase8x2ez34 == null ? false : OutputStream.StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez34.m589unboximpl(), OutputStream.StreamUseCase.Companion.m596getVIDEO_RECORDvrKr8v8()))) {
                                            OutputStream.StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc = outputStream.mo530getStreamUseHintHIPxoCc();
                                            if (!(streamUseHintMo530getStreamUseHintHIPxoCc == null ? false : OutputStream.StreamUseHint.m600equalsimpl0(streamUseHintMo530getStreamUseHintHIPxoCc.m603unboximpl(), OutputStream.StreamUseHint.Companion.m605getVIDEO_RECORD4VYZOf8()))) {
                                                arrayMap4 = arrayMap7;
                                                it3 = it4;
                                            }
                                        }
                                        int size2 = listCreateHighSpeedRequestList.size();
                                        int i2 = 0;
                                        while (i2 < size2) {
                                            List<CaptureRequest> list3 = listCreateHighSpeedRequestList;
                                            ArrayList arrayList3 = arrayList;
                                            int i3 = i2;
                                            Camera2RequestMetadata camera2RequestMetadata = new Camera2RequestMetadata(this.session, listCreateHighSpeedRequestList.get(i2), map, map2, map3, arrayMap5, iM653unboximpl, z, request, jNextRequestNumber, null);
                                            arrayList2.add(list3.get(i3));
                                            arrayList3.add(camera2RequestMetadata);
                                            i2 = i3 + 1;
                                            listCreateHighSpeedRequestList = list3;
                                            arrayList = arrayList3;
                                            size2 = size2;
                                            arrayMap6 = arrayMap6;
                                            this = this;
                                        }
                                        map4 = map;
                                        map5 = map3;
                                        arrayMap3 = arrayMap6;
                                        arrayMap4 = arrayMap7;
                                    }
                                }
                            }
                            listCreateHighSpeedRequestList = listCreateHighSpeedRequestList;
                            arrayList = arrayList;
                            it = it2;
                            arrayMap6 = arrayMap6;
                            arrayMap4 = arrayMap4;
                            this = this;
                        }
                    }
                }
                List<CaptureRequest> list4 = listCreateHighSpeedRequestList;
                arrayMap = arrayMap4;
                arrayMap2 = arrayMap6;
                ArrayList arrayList4 = arrayList;
                map5 = map3;
                map4 = map;
                Camera2RequestMetadata camera2RequestMetadata2 = new Camera2RequestMetadata(this.session, list4.get(0), map4, map2, map5, arrayMap5, iM653unboximpl, z, request, jNextRequestNumber, null);
                arrayList2.add(list4.get(0));
                arrayList4.add(camera2RequestMetadata2);
                arrayList = arrayList4;
            } else {
                arrayMap = arrayMap4;
                arrayMap2 = arrayMap6;
                map4 = map;
                map5 = map3;
                Camera2RequestMetadata camera2RequestMetadata3 = new Camera2RequestMetadata(cameraCaptureSessionWrapper, captureRequestBuild, map4, map2, map5, arrayMap5, iM653unboximpl, z, request, jNextRequestNumber, null);
                arrayList2.add(captureRequestBuild);
                arrayList.add(camera2RequestMetadata3);
            }
            arrayMap3 = arrayMap2;
            arrayMap4 = arrayMap;
        }
        return new Camera2CaptureSequence(this.session.getDevice().mo734getCameraIdDz_R5H8(), z, arrayList2, arrayList, list2, captureSequenceListener, arrayMap3, arrayMap4, this.streamGraph, this.strictMode, null);
    }

    public final void disconnect$camera_camera2_pipe() {
        Camera2CaptureSequence camera2CaptureSequence;
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(this + "#disconnect");
            synchronized (this.lock) {
                try {
                    if (this.disconnected) {
                        camera2CaptureSequence = null;
                    } else {
                        this.disconnected = true;
                        ImageWriterWrapper imageWriterWrapper = this.imageWriter;
                        if (imageWriterWrapper != null) {
                            jh.d(imageWriterWrapper);
                        }
                        Surface inputSurface = this.session.getInputSurface();
                        if (inputSurface != null) {
                            inputSurface.release();
                        }
                        camera2CaptureSequence = this.lastSingleRepeatingRequestSequence;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.awaitRepeatingRequestOnDisconnect && camera2CaptureSequence != null) {
                awaitRepeatingRequestStarted(camera2CaptureSequence);
            }
            j59 j59Var = j59.a;
            Trace.endSection();
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public Object shutdown(e02<? super j59> e02Var) {
        disconnect$camera_camera2_pipe();
        return j59.a;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public void stopRepeating() {
        synchronized (this.lock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, this + "#stopRepeating");
                }
                this.session.stopRepeating();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public Integer submit(Camera2CaptureSequence camera2CaptureSequence) {
        Integer repeatingBurst;
        camera2CaptureSequence.getClass();
        synchronized (this.lock) {
            if (this.disconnected) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, this + " disconnected. " + camera2CaptureSequence + " won't be submitted");
                }
                return null;
            }
            if (camera2CaptureSequence.getCaptureRequestList().size() != 1 || (this.session instanceof CameraConstrainedHighSpeedCaptureSessionWrapper)) {
                boolean repeating = camera2CaptureSequence.getRepeating();
                CameraCaptureSessionWrapper cameraCaptureSessionWrapper = this.session;
                repeatingBurst = repeating ? cameraCaptureSessionWrapper.setRepeatingBurst(camera2CaptureSequence.getCaptureRequestList(), camera2CaptureSequence) : cameraCaptureSessionWrapper.captureBurst(camera2CaptureSequence.getCaptureRequestList(), camera2CaptureSequence);
            } else if (camera2CaptureSequence.getRepeating()) {
                if (this.awaitRepeatingRequestOnDisconnect) {
                    this.lastSingleRepeatingRequestSequence = camera2CaptureSequence;
                }
                repeatingBurst = this.session.setRepeatingRequest(camera2CaptureSequence.getCaptureRequestList().get(0), camera2CaptureSequence);
            } else {
                repeatingBurst = this.session.capture(camera2CaptureSequence.getCaptureRequestList().get(0), camera2CaptureSequence);
            }
            return repeatingBurst;
        }
    }

    public String toString() {
        return "Camera2CaptureSequenceProcessor-" + this.debugId;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, boolean z, jh2 jh2Var) {
        this(cameraCaptureSessionWrapper, threads, i, map, map2, streamGraph, strictMode, z);
    }

    public /* synthetic */ Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, boolean z, int i2, jh2 jh2Var) {
        this(cameraCaptureSessionWrapper, threads, i, map, map2, streamGraph, strictMode, (i2 & 128) != 0 ? false : z, null);
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequenceProcessor
    public /* bridge */ /* synthetic */ CaptureSequence build(boolean z, List list, Map map, Map map2, Map map3, CaptureSequence.CaptureSequenceListener captureSequenceListener, List list2) {
        return build(z, (List<Request>) list, (Map<?, ? extends Object>) map, (Map<?, ? extends Object>) map2, (Map<?, ? extends Object>) map3, captureSequenceListener, (List<? extends Request.Listener>) list2);
    }
}
