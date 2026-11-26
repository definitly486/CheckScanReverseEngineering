package androidx.camera.camera2.pipe.internal;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.ImageSourceConfig;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.media.ClosingFinalizer;
import androidx.camera.camera2.pipe.media.ExpectedOutputsListener;
import androidx.camera.camera2.pipe.media.ImageListener;
import androidx.camera.camera2.pipe.media.ImageSource;
import androidx.camera.camera2.pipe.media.ImageWrapper;
import androidx.camera.camera2.pipe.media.NoOpFinalizer;
import androidx.camera.camera2.pipe.media.OutputImage;
import defpackage.ah;
import defpackage.jh2;
import defpackage.js2;
import defpackage.kn1;
import defpackage.m05;
import defpackage.qn1;
import defpackage.uz4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class FrameDistributor implements AutoCloseable, Request.Listener {
    public static final Companion Companion = new Companion(null);
    private final FrameCaptureQueue frameCaptureQueue;
    private final OutputDistributor<FrameInfo> frameInfoDistributor;
    private FrameStartedListener frameStartedListener;
    private final Map<StreamId, Map<OutputId, OutputDistributor<OutputImage>>> imageDistributors;
    private final Set<CameraStream> imageStreams;
    private final StreamGraphImpl streamGraphImpl;

    public interface FrameStartedListener {
        void onFrameStarted(FrameReference frameReference);
    }

    public FrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, boolean z, long j) {
        streamGraphImpl.getClass();
        frameCaptureQueue.getClass();
        this.streamGraphImpl = streamGraphImpl;
        this.frameCaptureQueue = frameCaptureQueue;
        this.frameInfoDistributor = new OutputDistributor<>(0, NoOpFinalizer.INSTANCE, OutputMatcher.Companion.getEXACT(), 1, null);
        Map<StreamId, ImageSource> imageSourceMap$camera_camera2_pipe = streamGraphImpl.getImageSourceMap$camera_camera2_pipe();
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(imageSourceMap$camera_camera2_pipe.size()));
        Iterator<T> it = imageSourceMap$camera_camera2_pipe.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            int iM729unboximpl = ((StreamId) entry.getKey()).m729unboximpl();
            final ImageSource imageSource = (ImageSource) entry.getValue();
            final CameraStream cameraStreamM716getaKI5c8E = this.streamGraphImpl.m716getaKI5c8E(iM729unboximpl);
            if (cameraStreamM716getaKI5c8E == null) {
                ah.f("Required value was null.");
                throw null;
            }
            CameraStream.Config configM913getCameraStreamConfigaKI5c8E = this.streamGraphImpl.m913getCameraStreamConfigaKI5c8E(iM729unboximpl);
            configM913getCameraStreamConfigaKI5c8E.getClass();
            ImageSourceConfig imageSourceConfig = configM913getCameraStreamConfigaKI5c8E.getImageSourceConfig();
            imageSourceConfig.getClass();
            OutputMatcher outputMatcherM935selectTimestampMatcher5y4XNsE = Companion.m935selectTimestampMatcher5y4XNsE(iM729unboximpl, configM913getCameraStreamConfigaKI5c8E, imageSourceConfig, z, j);
            uz4 uz4Var = new uz4();
            for (OutputStream outputStream : cameraStreamM716getaKI5c8E.getOutputs()) {
                uz4Var.put(OutputId.m503boximpl(outputStream.mo527getId4LaLFng()), new OutputDistributor(0, ClosingFinalizer.INSTANCE, outputMatcherM935selectTimestampMatcher5y4XNsE, 1, null));
            }
            final uz4 uz4VarB = uz4Var.b();
            imageSource.setImageListener(new ImageListener() { // from class: androidx.camera.camera2.pipe.internal.FrameDistributor$imageDistributors$1$1
                @Override // androidx.camera.camera2.pipe.media.ImageListener
                /* JADX INFO: renamed from: onImage-2cgRUCs, reason: not valid java name */
                public final void mo936onImage2cgRUCs(int i, int i2, long j2, ImageWrapper imageWrapper) {
                    OutputDistributor<OutputImage> outputDistributor = uz4VarB.get(OutputId.m503boximpl(i2));
                    ImageSource imageSource2 = imageSource;
                    if (outputDistributor != null) {
                        OutputDistributor<OutputImage> outputDistributor2 = outputDistributor;
                        if (imageWrapper != null) {
                            OutputResult.Companion companion = OutputResult.Companion;
                            outputDistributor2.m953onOutputResultDvZWqE8(j2, OutputResult.m965constructorimpl(OutputImage.Companion.m988fromAQuxepk(i, i2, imageWrapper)));
                            return;
                        } else {
                            OutputResult.Companion companion2 = OutputResult.Companion;
                            outputDistributor2.m953onOutputResultDvZWqE8(j2, OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m519getERROR_OUTPUT_DROPPEDU7r42EA())));
                            return;
                        }
                    }
                    StringBuilder sb = new StringBuilder("Received unexpected images on ");
                    sb.append(imageSource2);
                    sb.append(" from (");
                    sb.append((Object) StreamId.m728toStringimpl(i));
                    String strM508toStringimpl = OutputId.m508toStringimpl(i2);
                    sb.append(", ");
                    sb.append((Object) strM508toStringimpl);
                    sb.append(')');
                    throw new IllegalStateException(sb.toString().toString());
                }
            });
            imageSource.setExpectedOutputsListener(new ExpectedOutputsListener() { // from class: sk3
                @Override // androidx.camera.camera2.pipe.media.ExpectedOutputsListener
                public final void onExpectedOutputs(long j2, Set set) {
                    FrameDistributor.imageDistributors$lambda$0$1(cameraStreamM716getaKI5c8E, uz4VarB, j2, set);
                }
            });
            linkedHashMap.put(key, uz4VarB);
        }
        this.imageDistributors = linkedHashMap;
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList(kn1.q(setKeySet, 10));
        Iterator it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            CameraStream cameraStreamM716getaKI5c8E2 = this.streamGraphImpl.m716getaKI5c8E(((StreamId) it2.next()).m729unboximpl());
            if (cameraStreamM716getaKI5c8E2 == null) {
                ah.f("Required value was null.");
                throw null;
            }
            arrayList.add(cameraStreamM716getaKI5c8E2);
        }
        this.imageStreams = qn1.y0(arrayList);
        this.frameStartedListener = new js2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void imageDistributors$lambda$0$1(CameraStream cameraStream, Map map, long j, Set set) {
        set.getClass();
        List<OutputStream> outputs = cameraStream.getOutputs();
        int size = outputs.size();
        for (int i = 0; i < size; i++) {
            int iMo527getId4LaLFng = outputs.get(i).mo527getId4LaLFng();
            if (!set.contains(OutputId.m503boximpl(iMo527getId4LaLFng))) {
                Object obj = map.get(OutputId.m503boximpl(iMo527getId4LaLFng));
                if (obj == null) {
                    ah.f("Required value was null.");
                    return;
                } else {
                    OutputResult.Companion companion = OutputResult.Companion;
                    ((OutputDistributor) obj).m953onOutputResultDvZWqE8(j, OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m523getUNAVAILABLEU7r42EA())));
                }
            }
        }
    }

    /* JADX INFO: renamed from: selectTimestampMatcher-5y4XNsE, reason: not valid java name */
    private static final OutputMatcher m933selectTimestampMatcher5y4XNsE(int i, CameraStream.Config config, ImageSourceConfig imageSourceConfig, boolean z, long j) {
        return Companion.m935selectTimestampMatcher5y4XNsE(i, config, imageSourceConfig, z, j);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.frameCaptureQueue.close();
        this.frameInfoDistributor.close();
        Iterator<Map<OutputId, OutputDistributor<OutputImage>>> it = this.imageDistributors.values().iterator();
        while (it.hasNext()) {
            Iterator<OutputDistributor<OutputImage>> it2 = it.next().values().iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
        }
    }

    public final FrameStartedListener getFrameStartedListener() {
        return this.frameStartedListener;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public void onAborted(Request request) {
        request.getClass();
        FrameCaptureQueue.FrameCaptureImpl frameCaptureImplRemove = this.frameCaptureQueue.remove(request);
        if (frameCaptureImplRemove != null) {
            frameCaptureImplRemove.m932completeWithFailuretXNfJfc(OutputStatus.Companion.m518getERROR_OUTPUT_ABORTEDU7r42EA());
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
    public void mo40onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
        requestMetadata.getClass();
        Map<OutputId, OutputDistributor<OutputImage>> map = this.imageDistributors.get(StreamId.m723boximpl(i));
        if (map == null) {
            return;
        }
        CameraStream.Config configM913getCameraStreamConfigaKI5c8E = this.streamGraphImpl.m913getCameraStreamConfigaKI5c8E(i);
        if (configM913getCameraStreamConfigaKI5c8E == null) {
            ah.f("Required value was null.");
            return;
        }
        ImageSourceConfig imageSourceConfig = configM913getCameraStreamConfigaKI5c8E.getImageSourceConfig();
        if (imageSourceConfig != null && imageSourceConfig.getEnableConcurrentOutputs()) {
            OutputDistributor<OutputImage> outputDistributor = map.get(OutputId.m503boximpl(i2));
            if (outputDistributor != null) {
                outputDistributor.m952onOutputFailureVw7M1qk(j);
                return;
            } else {
                ah.f("Required value was null.");
                return;
            }
        }
        if (!map.containsKey(OutputId.m503boximpl(i2))) {
            ah.f("Check failed.");
            return;
        }
        Iterator<OutputDistributor<OutputImage>> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().m952onOutputFailureVw7M1qk(j);
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo9onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        this.frameInfoDistributor.m953onOutputResultDvZWqE8(j, OutputResult.m965constructorimpl(frameInfo));
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onFailed-CcXjc1I */
    public void mo10onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        requestMetadata.getClass();
        requestFailure.getClass();
        OutputDistributor<FrameInfo> outputDistributor = this.frameInfoDistributor;
        OutputResult.Companion companion = OutputResult.Companion;
        outputDistributor.m953onOutputResultDvZWqE8(j, OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m520getERROR_OUTPUT_FAILEDU7r42EA())));
        if (requestFailure.getWasImageCaptured()) {
            return;
        }
        Iterator<StreamId> it = requestMetadata.getStreams().keySet().iterator();
        while (it.hasNext()) {
            Map<OutputId, OutputDistributor<OutputImage>> map = this.imageDistributors.get(StreamId.m723boximpl(it.next().m729unboximpl()));
            if (map != null) {
                Iterator<OutputDistributor<OutputImage>> it2 = map.values().iterator();
                while (it2.hasNext()) {
                    it2.next().m952onOutputFailureVw7M1qk(j);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo44onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        FrameCaptureQueue.FrameCaptureImpl frameCaptureImplRemove;
        requestMetadata.getClass();
        FrameState frameState = new FrameState(requestMetadata, j, j2, this.imageStreams, null);
        this.frameInfoDistributor.m954onOutputStartedqGubWw0(j, j2, j, frameState.getFrameInfoOutput());
        int size = frameState.getImageOutputs().size();
        for (int i = 0; i < size; i++) {
            FrameState.ImageOutput imageOutput = frameState.getImageOutputs().get(i);
            Map<OutputId, OutputDistributor<OutputImage>> map = this.imageDistributors.get(StreamId.m723boximpl(imageOutput.m946getStreamIdptHMqGs()));
            if (map == null) {
                ah.f("Required value was null.");
                return;
            }
            OutputDistributor<OutputImage> outputDistributor = map.get(OutputId.m503boximpl(imageOutput.m945getOutputId4LaLFng()));
            if (outputDistributor == null) {
                ah.f("Required value was null.");
                return;
            }
            OutputDistributor<OutputImage> outputDistributor2 = outputDistributor;
            outputDistributor2.m954onOutputStartedqGubWw0(j, j2, j2, imageOutput);
            if (!requestMetadata.getStreams().keySet().contains(StreamId.m723boximpl(imageOutput.m946getStreamIdptHMqGs()))) {
                outputDistributor2.m952onOutputFailureVw7M1qk(frameState.m938getFrameNumberUgla2oM());
            }
        }
        FrameImpl frameImpl = new FrameImpl(frameState, null, 2, 0 == true ? 1 : 0);
        this.frameStartedListener.onFrameStarted(frameImpl);
        if (requestMetadata.getRepeating() || (frameCaptureImplRemove = this.frameCaptureQueue.remove(requestMetadata.getRequest())) == null) {
            frameImpl.close();
        } else {
            frameCaptureImplRemove.completeWith(frameImpl);
        }
    }

    public final void setFrameStartedListener(FrameStartedListener frameStartedListener) {
        frameStartedListener.getClass();
        this.frameStartedListener = frameStartedListener;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isDefaultTimebase(CameraStream.Config config) {
            if (Build.VERSION.SDK_INT < 33) {
                return true;
            }
            List<OutputStream.Config> outputs = config.getOutputs();
            if ((outputs instanceof Collection) && outputs.isEmpty()) {
                return true;
            }
            for (OutputStream.Config config2 : outputs) {
                if (config2.m538getTimestampBasepcPfPbY() != null) {
                    OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY = config2.m538getTimestampBasepcPfPbY();
                    if (!(timestampBaseM538getTimestampBasepcPfPbY == null ? false : OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), OutputStream.TimestampBase.Companion.m614getTIMESTAMP_BASE_DEFAULT6HVI0MA()))) {
                        return false;
                    }
                }
            }
            return true;
        }

        private final boolean isHwComposerUsage(ImageSourceConfig imageSourceConfig) {
            return (Build.VERSION.SDK_INT < 33 || imageSourceConfig.getUsageFlags() == null || (imageSourceConfig.getUsageFlags().longValue() & 2048) == 0) ? false : true;
        }

        private final boolean isRealtimeTimebase(CameraStream.Config config) {
            if (Build.VERSION.SDK_INT >= 33) {
                List<OutputStream.Config> outputs = config.getOutputs();
                if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                    Iterator<T> it = outputs.iterator();
                    while (it.hasNext()) {
                        OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                        if (timestampBaseM538getTimestampBasepcPfPbY == null ? false : OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), OutputStream.TimestampBase.Companion.m616getTIMESTAMP_BASE_REALTIME6HVI0MA())) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        private final boolean isSensorTimebase(CameraStream.Config config) {
            if (Build.VERSION.SDK_INT >= 33) {
                List<OutputStream.Config> outputs = config.getOutputs();
                if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                    Iterator<T> it = outputs.iterator();
                    while (it.hasNext()) {
                        OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                        if (timestampBaseM538getTimestampBasepcPfPbY == null ? false : OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), OutputStream.TimestampBase.Companion.m617getTIMESTAMP_BASE_SENSOR6HVI0MA())) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        private final boolean isVideoEncodeUsage(ImageSourceConfig imageSourceConfig) {
            return (Build.VERSION.SDK_INT < 29 || imageSourceConfig.getUsageFlags() == null || (imageSourceConfig.getUsageFlags().longValue() & 65536) == 0) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:108:0x0107 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:112:? A[LOOP:2: B:58:0x00e3->B:112:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:22:0x0050  */
        /* JADX WARN: Code duplicated, block: B:24:0x0058  */
        /* JADX WARN: Code duplicated, block: B:29:0x006f A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:50:0x00c7  */
        /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
        /* JADX WARN: Code duplicated, block: B:54:0x00d5  */
        /* JADX WARN: Code duplicated, block: B:57:0x00df  */
        /* JADX WARN: Code duplicated, block: B:60:0x00e9  */
        /* JADX WARN: Code duplicated, block: B:62:0x00fb  */
        /* JADX WARN: Code duplicated, block: B:63:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:69:0x0116  */
        /* JADX WARN: Instruction removed from duplicated block: B:69:0x0116, please report this as an issue */
        /* JADX INFO: renamed from: selectTimestampMatcher-5y4XNsE, reason: not valid java name */
        public final OutputMatcher m935selectTimestampMatcher5y4XNsE(int i, CameraStream.Config config, ImageSourceConfig imageSourceConfig, boolean z, long j) {
            int i2;
            List<OutputStream.Config> outputs;
            Iterator<T> it;
            OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY;
            int iM617getTIMESTAMP_BASE_SENSOR6HVI0MA;
            boolean zM609equalsimpl0;
            if (!z) {
                if (Build.VERSION.SDK_INT >= 33) {
                    List<OutputStream.Config> outputs2 = config.getOutputs();
                    if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                        Iterator<T> it2 = outputs2.iterator();
                        while (it2.hasNext()) {
                            OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY2 = ((OutputStream.Config) it2.next()).m538getTimestampBasepcPfPbY();
                            if (timestampBaseM538getTimestampBasepcPfPbY2 == null ? false : OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY2.m612unboximpl(), OutputStream.TimestampBase.Companion.m616getTIMESTAMP_BASE_REALTIME6HVI0MA())) {
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d(Log.TAG, "Configuring " + ((Object) StreamId.m728toStringimpl(i)) + " with inexact monotonic-to-realtime timestamp matching rules.");
                                }
                                return OutputMatcher.Companion.forTimestampsWithOffset$default(OutputMatcher.Companion, -j, 0L, 2, null);
                            }
                        }
                    }
                }
                return OutputMatcher.Companion.getEXACT();
            }
            if (Build.VERSION.SDK_INT < 33) {
                i2 = Build.VERSION.SDK_INT;
                if (i2 >= 29) {
                }
            }
            List<OutputStream.Config> outputs3 = config.getOutputs();
            if ((outputs3 instanceof Collection) && outputs3.isEmpty()) {
                i2 = Build.VERSION.SDK_INT;
                return i2 >= 29 ? OutputMatcher.Companion.getEXACT() : OutputMatcher.Companion.getEXACT();
            }
            Iterator<T> it3 = outputs3.iterator();
            while (true) {
                if (it3.hasNext()) {
                    OutputStream.Config config2 = (OutputStream.Config) it3.next();
                    if (config2.m538getTimestampBasepcPfPbY() != null) {
                        OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY3 = config2.m538getTimestampBasepcPfPbY();
                        if (timestampBaseM538getTimestampBasepcPfPbY3 == null ? false : OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY3.m612unboximpl(), OutputStream.TimestampBase.Companion.m614getTIMESTAMP_BASE_DEFAULT6HVI0MA())) {
                        }
                    }
                } else {
                    i2 = Build.VERSION.SDK_INT;
                    if ((i2 >= 29 || imageSourceConfig.getUsageFlags() == null || (imageSourceConfig.getUsageFlags().longValue() & 65536) == 0) && (i2 < 33 || imageSourceConfig.getUsageFlags() == null || (imageSourceConfig.getUsageFlags().longValue() & 2048) == 0)) {
                    }
                }
            }
            if (Build.VERSION.SDK_INT < 33) {
                if (Build.VERSION.SDK_INT >= 33) {
                    outputs = config.getOutputs();
                    if (outputs instanceof Collection) {
                        it = outputs.iterator();
                        while (it.hasNext()) {
                            timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                            iM617getTIMESTAMP_BASE_SENSOR6HVI0MA = OutputStream.TimestampBase.Companion.m617getTIMESTAMP_BASE_SENSOR6HVI0MA();
                            if (timestampBaseM538getTimestampBasepcPfPbY == null) {
                                zM609equalsimpl0 = false;
                            } else {
                                zM609equalsimpl0 = OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), iM617getTIMESTAMP_BASE_SENSOR6HVI0MA);
                            }
                            if (zM609equalsimpl0) {
                            }
                        }
                    } else {
                        it = outputs.iterator();
                        while (it.hasNext()) {
                            timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                            iM617getTIMESTAMP_BASE_SENSOR6HVI0MA = OutputStream.TimestampBase.Companion.m617getTIMESTAMP_BASE_SENSOR6HVI0MA();
                            if (timestampBaseM538getTimestampBasepcPfPbY == null) {
                                zM609equalsimpl0 = false;
                            } else {
                                zM609equalsimpl0 = OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), iM617getTIMESTAMP_BASE_SENSOR6HVI0MA);
                            }
                            if (zM609equalsimpl0) {
                            }
                        }
                    }
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Configuring " + ((Object) StreamId.m728toStringimpl(i)) + " with inexact realtime-to-monotonic timestamp matching rules.");
                }
                return OutputMatcher.Companion.forTimestampsWithOffset$default(OutputMatcher.Companion, j, 0L, 2, null);
            }
            List<OutputStream.Config> outputs4 = config.getOutputs();
            if (!(outputs4 instanceof Collection) || !outputs4.isEmpty()) {
                Iterator<T> it4 = outputs4.iterator();
                while (it4.hasNext()) {
                    OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY4 = ((OutputStream.Config) it4.next()).m538getTimestampBasepcPfPbY();
                    if (timestampBaseM538getTimestampBasepcPfPbY4 == null ? false : OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY4.m612unboximpl(), OutputStream.TimestampBase.Companion.m616getTIMESTAMP_BASE_REALTIME6HVI0MA())) {
                    }
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    outputs = config.getOutputs();
                    if ((outputs instanceof Collection) || !outputs.isEmpty()) {
                        it = outputs.iterator();
                        while (it.hasNext()) {
                            timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                            iM617getTIMESTAMP_BASE_SENSOR6HVI0MA = OutputStream.TimestampBase.Companion.m617getTIMESTAMP_BASE_SENSOR6HVI0MA();
                            if (timestampBaseM538getTimestampBasepcPfPbY == null) {
                                zM609equalsimpl0 = false;
                            } else {
                                zM609equalsimpl0 = OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), iM617getTIMESTAMP_BASE_SENSOR6HVI0MA);
                            }
                            if (zM609equalsimpl0) {
                            }
                        }
                    }
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Configuring " + ((Object) StreamId.m728toStringimpl(i)) + " with inexact realtime-to-monotonic timestamp matching rules.");
                }
                return OutputMatcher.Companion.forTimestampsWithOffset$default(OutputMatcher.Companion, j, 0L, 2, null);
            }
            if (Build.VERSION.SDK_INT >= 33) {
                outputs = config.getOutputs();
                if (outputs instanceof Collection) {
                    it = outputs.iterator();
                    while (it.hasNext()) {
                        timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                        iM617getTIMESTAMP_BASE_SENSOR6HVI0MA = OutputStream.TimestampBase.Companion.m617getTIMESTAMP_BASE_SENSOR6HVI0MA();
                        if (timestampBaseM538getTimestampBasepcPfPbY == null) {
                            zM609equalsimpl0 = false;
                        } else {
                            zM609equalsimpl0 = OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), iM617getTIMESTAMP_BASE_SENSOR6HVI0MA);
                        }
                        if (zM609equalsimpl0) {
                        }
                    }
                } else {
                    it = outputs.iterator();
                    while (it.hasNext()) {
                        timestampBaseM538getTimestampBasepcPfPbY = ((OutputStream.Config) it.next()).m538getTimestampBasepcPfPbY();
                        iM617getTIMESTAMP_BASE_SENSOR6HVI0MA = OutputStream.TimestampBase.Companion.m617getTIMESTAMP_BASE_SENSOR6HVI0MA();
                        if (timestampBaseM538getTimestampBasepcPfPbY == null) {
                            zM609equalsimpl0 = false;
                        } else {
                            zM609equalsimpl0 = OutputStream.TimestampBase.m609equalsimpl0(timestampBaseM538getTimestampBasepcPfPbY.m612unboximpl(), iM617getTIMESTAMP_BASE_SENSOR6HVI0MA);
                        }
                        if (zM609equalsimpl0) {
                        }
                    }
                }
            }
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Configuring " + ((Object) StreamId.m728toStringimpl(i)) + " with inexact realtime-to-monotonic timestamp matching rules.");
            }
            return OutputMatcher.Companion.forTimestampsWithOffset$default(OutputMatcher.Companion, j, 0L, 2, null);
            return OutputMatcher.Companion.getEXACT();
        }

        private Companion() {
        }
    }
}
