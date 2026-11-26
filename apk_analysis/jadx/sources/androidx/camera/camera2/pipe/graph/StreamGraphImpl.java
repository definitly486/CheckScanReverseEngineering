package androidx.camera.camera2.pipe.graph;

import android.content.res.TypedArray;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraStreamConfigurationMap;
import androidx.camera.camera2.pipe.ImageSourceConfig;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.Api24Compat;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.media.ImageSource;
import androidx.camera.camera2.pipe.media.ImageSources;
import defpackage.aa4;
import defpackage.ah;
import defpackage.g2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kt;
import defpackage.kx2;
import defpackage.lt;
import defpackage.mi2;
import defpackage.nn1;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.u96;
import defpackage.uz4;
import defpackage.vh;
import defpackage.ws6;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class StreamGraphImpl implements StreamGraph, AutoCloseable {
    private static final Comparator<CameraStream> previewFormatComparator;
    private static final List<StreamFormat> previewFormats;
    private static final List<OutputStream.OutputType> previewOutputTypes;
    private static final Comparator<CameraStream> previewOutputTypesComparator;
    private final Map<CameraStream.Config, CameraStream> _streamMap;
    private final ws6<CameraController> cameraControllerProvider;
    private final CameraMetadata cameraMetadata;
    private final CameraGraph.Config graphConfig;
    private final Map<StreamId, ImageSource> imageSourceMap;
    private final ImageSources imageSources;
    private final List<InputStream> inputs;
    private final Map<OutputStream, OutputConfig> outputConfigMap;
    private final List<OutputConfig> outputConfigs;
    private final List<OutputStream> outputs;
    private final Set<StreamId> streamIds$1;
    private final List<CameraStream> streams;
    public static final Companion Companion = new Companion(null);
    private static final lt streamIds = kt.b(0);
    private static final lt outputIds = kt.b(0);
    private static final lt inputIds = kt.b(0);
    private static final lt configIds = kt.b(0);
    private static final lt groupIds = kt.b(0);

    public interface SurfaceListener {
        void onSurfaceMapUpdated(Map<StreamId, ? extends Surface> map);
    }

    static {
        OutputStream.OutputType.Companion companion = OutputStream.OutputType.Companion;
        previewOutputTypes = u96.i(companion.getSURFACE_VIEW(), companion.getSURFACE_TEXTURE());
        previewOutputTypesComparator = new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Iterator<T> it = ((CameraStream) t).getOutputs().iterator();
                if (!it.hasNext()) {
                    qz0.e();
                    return 0;
                }
                OutputStream outputStream = (OutputStream) it.next();
                List list = StreamGraphImpl.previewOutputTypes;
                OutputStream.OutputType outputType = outputStream.getOutputType();
                list.getClass();
                Integer numValueOf = Integer.valueOf(list.indexOf(outputType));
                while (it.hasNext()) {
                    OutputStream outputStream2 = (OutputStream) it.next();
                    List list2 = StreamGraphImpl.previewOutputTypes;
                    OutputStream.OutputType outputType2 = outputStream2.getOutputType();
                    list2.getClass();
                    Integer numValueOf2 = Integer.valueOf(list2.indexOf(outputType2));
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                Iterator<T> it2 = ((CameraStream) t2).getOutputs().iterator();
                if (!it2.hasNext()) {
                    qz0.e();
                    return 0;
                }
                OutputStream outputStream3 = (OutputStream) it2.next();
                List list3 = StreamGraphImpl.previewOutputTypes;
                OutputStream.OutputType outputType3 = outputStream3.getOutputType();
                list3.getClass();
                Integer numValueOf3 = Integer.valueOf(list3.indexOf(outputType3));
                while (it2.hasNext()) {
                    OutputStream outputStream4 = (OutputStream) it2.next();
                    List list4 = StreamGraphImpl.previewOutputTypes;
                    OutputStream.OutputType outputType4 = outputStream4.getOutputType();
                    list4.getClass();
                    Integer numValueOf4 = Integer.valueOf(list4.indexOf(outputType4));
                    if (numValueOf3.compareTo(numValueOf4) < 0) {
                        numValueOf3 = numValueOf4;
                    }
                }
                return pp1.a(numValueOf, numValueOf3);
            }
        };
        StreamFormat.Companion companion2 = StreamFormat.Companion;
        previewFormats = u96.i(StreamFormat.m677boximpl(companion2.m703getUNKNOWN8FPWQzE()), StreamFormat.m677boximpl(companion2.m696getPRIVATE8FPWQzE()));
        previewFormatComparator = new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Iterator<T> it = ((CameraStream) t).getOutputs().iterator();
                if (!it.hasNext()) {
                    qz0.e();
                    return 0;
                }
                Integer numValueOf = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m677boximpl(((OutputStream) it.next()).mo526getFormat8FPWQzE())));
                while (it.hasNext()) {
                    Integer numValueOf2 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m677boximpl(((OutputStream) it.next()).mo526getFormat8FPWQzE())));
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                Iterator<T> it2 = ((CameraStream) t2).getOutputs().iterator();
                if (!it2.hasNext()) {
                    qz0.e();
                    return 0;
                }
                Integer numValueOf3 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m677boximpl(((OutputStream) it2.next()).mo526getFormat8FPWQzE())));
                while (it2.hasNext()) {
                    Integer numValueOf4 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m677boximpl(((OutputStream) it2.next()).mo526getFormat8FPWQzE())));
                    if (numValueOf3.compareTo(numValueOf4) < 0) {
                        numValueOf3 = numValueOf4;
                    }
                }
                return pp1.a(numValueOf, numValueOf3);
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00f3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r28v0, types: [androidx.camera.camera2.pipe.graph.StreamGraphImpl] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kx2] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List<androidx.camera.camera2.pipe.InputStream>] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.ArrayList] */
    public StreamGraphImpl(CameraMetadata cameraMetadata, CameraGraph.Config config, ImageSources imageSources, ws6<CameraController> ws6Var) {
        CameraGraph.Config config2;
        ?? arrayList;
        OutputStream.OutputType outputType$camera_camera2_pipe;
        cameraMetadata.getClass();
        config.getClass();
        imageSources.getClass();
        ws6Var.getClass();
        this.cameraMetadata = cameraMetadata;
        this.graphConfig = config;
        this.imageSources = imageSources;
        this.cameraControllerProvider = ws6Var;
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList3 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        boolean zComputeIfDeferredStreamsAreSupported = computeIfDeferredStreamsAreSupported(cameraMetadata, config);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        Iterator<List<CameraStream.Config>> it = config.getExclusiveStreamGroups().iterator();
        while (true) {
            jh2 jh2Var = null;
            if (!it.hasNext()) {
                for (CameraStream.Config config3 : this.graphConfig.getStreams()) {
                    for (OutputStream.Config config4 : config3.getOutputs()) {
                        if (!linkedHashMap.containsKey(config4)) {
                            int iM914nextConfigIdhoCEiqs$camera_camera2_pipe = Companion.m914nextConfigIdhoCEiqs$camera_camera2_pipe();
                            Size size = config4.getSize();
                            int iM534getFormat8FPWQzE = config4.m534getFormat8FPWQzE();
                            String strM532getCamera1LO98Z0 = config4.m532getCamera1LO98Z0();
                            String strM310getCameraDz_R5H8 = strM532getCamera1LO98Z0 == null ? this.graphConfig.m310getCameraDz_R5H8() : strM532getCamera1LO98Z0;
                            Integer num = (Integer) linkedHashMap3.get(config3);
                            if (zComputeIfDeferredStreamsAreSupported) {
                                OutputStream.Config.LazyOutputConfig lazyOutputConfig = config4 instanceof OutputStream.Config.LazyOutputConfig ? (OutputStream.Config.LazyOutputConfig) config4 : null;
                                if (lazyOutputConfig != null) {
                                    outputType$camera_camera2_pipe = lazyOutputConfig.getOutputType$camera_camera2_pipe();
                                } else {
                                    outputType$camera_camera2_pipe = null;
                                }
                            } else {
                                outputType$camera_camera2_pipe = null;
                            }
                            OutputConfig outputConfig = new OutputConfig(iM914nextConfigIdhoCEiqs$camera_camera2_pipe, size, iM534getFormat8FPWQzE, strM310getCameraDz_R5H8, num, getOutputConfigurationOrNull(config4), outputType$camera_camera2_pipe, config4.m535getMirrorModedO1_9xk(), config4.m538getTimestampBasepcPfPbY(), config4.m533getDynamicRangeProfileOoVcG5w(), config4.m536getStreamUseCase8x2ez34(), config4.m537getStreamUseHintHIPxoCc(), config4.getSensorPixelModes(), null);
                            linkedHashMap.put(config4, outputConfig);
                            arrayList2.add(outputConfig);
                        }
                    }
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                int size2 = this.graphConfig.getStreams().size();
                int i = 0;
                while (true) {
                    config2 = this.graphConfig;
                    if (i >= size2) {
                        break;
                    }
                    CameraStream.Config config5 = config2.getStreams().get(i);
                    List<OutputStream.Config> outputs = config5.getOutputs();
                    ArrayList arrayList4 = new ArrayList(kn1.q(outputs, 10));
                    Iterator it2 = outputs.iterator();
                    while (it2.hasNext()) {
                        Object obj = linkedHashMap.get((OutputStream.Config) it2.next());
                        obj.getClass();
                        OutputConfig outputConfig2 = (OutputConfig) obj;
                        OutputStreamImpl outputStreamImpl = new OutputStreamImpl(Companion.m916nextOutputId4LaLFng$camera_camera2_pipe(), outputConfig2.getSize(), outputConfig2.m920getFormat8FPWQzE(), outputConfig2.m918getCameraDz_R5H8(), outputConfig2.m922getMirrorModedO1_9xk(), outputConfig2.m925getTimestampBasepcPfPbY(), outputConfig2.m919getDynamicRangeProfileOoVcG5w(), outputConfig2.m923getStreamUseCase8x2ez34(), outputConfig2.getDeferredOutputType(), outputConfig2.m924getStreamUseHintHIPxoCc(), null);
                        linkedHashMap4.put(outputStreamImpl, outputConfig2);
                        arrayList4.add(outputStreamImpl);
                    }
                    CameraStream cameraStream = new CameraStream(Companion.m917nextStreamIdptHMqGs$camera_camera2_pipe(), arrayList4, null);
                    linkedHashMap2.put(config5, cameraStream);
                    arrayList3.add(cameraStream);
                    Iterator it3 = arrayList4.iterator();
                    while (it3.hasNext()) {
                        ((OutputStreamImpl) it3.next()).setStream(cameraStream);
                    }
                    Iterator<OutputStream.Config> it4 = config5.getOutputs().iterator();
                    while (it4.hasNext()) {
                        Object obj2 = linkedHashMap.get(it4.next());
                        obj2.getClass();
                        ((OutputConfig) obj2).getStreamBuilder$camera_camera2_pipe().add(cameraStream);
                    }
                    i++;
                }
                List<InputStream.Config> input = config2.getInput();
                if (input != null) {
                    List<InputStream.Config> list = input;
                    arrayList = new ArrayList(kn1.q(list, 10));
                    for (InputStream.Config config6 : list) {
                        arrayList.add(new InputStreamImpl(Companion.m915nextInputIdm1bwn9M$camera_camera2_pipe(), config6.getMaxImages(), config6.m481getStreamFormat8FPWQzE(), jh2Var));
                    }
                } else {
                    arrayList = kx2.b;
                }
                this.inputs = arrayList;
                this.streams = sortOutputsByVideoStream(sortOutputsByPreviewStream(arrayList3));
                List<CameraStream> streams = getStreams();
                ArrayList arrayList5 = new ArrayList(kn1.q(streams, 10));
                Iterator it5 = streams.iterator();
                while (it5.hasNext()) {
                    arrayList5.add(StreamId.m723boximpl(((CameraStream) it5.next()).m383getIdptHMqGs()));
                }
                this.streamIds$1 = qn1.y0(arrayList5);
                this._streamMap = linkedHashMap2;
                this.outputConfigs = qn1.n0(arrayList2, new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$sortedBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        Iterator<T> it6 = ((StreamGraphImpl.OutputConfig) t).getStreams().iterator();
                        if (!it6.hasNext()) {
                            qz0.e();
                            return 0;
                        }
                        Integer numValueOf = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it6.next()));
                        while (it6.hasNext()) {
                            Integer numValueOf2 = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it6.next()));
                            if (numValueOf.compareTo(numValueOf2) > 0) {
                                numValueOf = numValueOf2;
                            }
                        }
                        Iterator<T> it7 = ((StreamGraphImpl.OutputConfig) t2).getStreams().iterator();
                        if (!it7.hasNext()) {
                            qz0.e();
                            return 0;
                        }
                        Integer numValueOf3 = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it7.next()));
                        while (it7.hasNext()) {
                            Integer numValueOf4 = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it7.next()));
                            if (numValueOf3.compareTo(numValueOf4) > 0) {
                                numValueOf3 = numValueOf4;
                            }
                        }
                        return pp1.a(numValueOf, numValueOf3);
                    }
                });
                this.outputConfigMap = linkedHashMap4;
                List<CameraStream> streams2 = getStreams();
                ArrayList arrayList6 = new ArrayList();
                Iterator it6 = streams2.iterator();
                while (it6.hasNext()) {
                    nn1.s(((CameraStream) it6.next()).getOutputs(), arrayList6);
                }
                this.outputs = arrayList6;
                uz4 uz4Var = new uz4();
                for (CameraStream.Config config7 : this.graphConfig.getStreams()) {
                    ImageSourceConfig imageSourceConfig = config7.getImageSourceConfig();
                    if (imageSourceConfig != null) {
                        CameraStream cameraStream2 = this._streamMap.get(config7);
                        if (cameraStream2 == null) {
                            ah.f("Required value was null.");
                            throw null;
                        }
                        CameraStream cameraStream3 = cameraStream2;
                        uz4Var.put(StreamId.m723boximpl(cameraStream3.m383getIdptHMqGs()), this.imageSources.createImageSource(cameraStream3, imageSourceConfig));
                    }
                }
                this.imageSourceMap = uz4Var.b();
                return;
            }
            List<CameraStream.Config> next = it.next();
            if (next.isEmpty()) {
                ah.f("Check failed.");
                throw null;
            }
            int iComputeNextSurfaceGroupId = computeNextSurfaceGroupId(this.graphConfig);
            for (CameraStream.Config config8 : next) {
                if (linkedHashMap3.containsKey(config8)) {
                    ah.f("Check failed.");
                    throw null;
                }
                linkedHashMap3.put(config8, Integer.valueOf(iComputeNextSurfaceGroupId));
            }
        }
    }

    private final boolean computeIfDeferredStreamsAreSupported(CameraMetadata cameraMetadata, CameraGraph.Config config) {
        if (!CameraGraph.OperatingMode.m335equalsimpl0(config.m314getSessionMode2uNL3no(), CameraGraph.OperatingMode.Companion.m342getNORMAL2uNL3no())) {
            return false;
        }
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        if (companion.isHardwareLevelLegacy(cameraMetadata) || companion.isHardwareLevelLimited(cameraMetadata)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 28 || !companion.isHardwareLevelExternal(cameraMetadata);
    }

    private final int computeNextSurfaceGroupId(CameraGraph.Config config) {
        List<Integer> existingGroupNumbers = readExistingGroupNumbers(config.getStreams());
        int iNextGroupId$camera_camera2_pipe = Companion.nextGroupId$camera_camera2_pipe();
        while (existingGroupNumbers.contains(Integer.valueOf(iNextGroupId$camera_camera2_pipe))) {
            iNextGroupId$camera_camera2_pipe = Companion.nextGroupId$camera_camera2_pipe();
        }
        return iNextGroupId$camera_camera2_pipe;
    }

    private final OutputConfiguration getOutputConfigurationOrNull(OutputStream.Config config) {
        if (Build.VERSION.SDK_INT >= 33) {
            OutputStream.Config.ExternalOutputConfig externalOutputConfig = config instanceof OutputStream.Config.ExternalOutputConfig ? (OutputStream.Config.ExternalOutputConfig) config : null;
            if (externalOutputConfig != null) {
                return externalOutputConfig.getOutput();
            }
        }
        return null;
    }

    private final List<Integer> readExistingGroupNumbers(List<CameraStream.Config> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            nn1.s(((CameraStream.Config) it.next()).getOutputs(), arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof OutputStream.Config.ExternalOutputConfig) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            int surfaceGroupId = Api24Compat.getSurfaceGroupId(((OutputStream.Config.ExternalOutputConfig) it2.next()).getOutput());
            if (!arrayList3.contains(Integer.valueOf(surfaceGroupId))) {
                arrayList3.add(Integer.valueOf(surfaceGroupId));
            }
        }
        return arrayList3;
    }

    private final List<CameraStream> sortOutputsByPreviewStream(List<CameraStream> list) {
        List<CameraStream> list2 = list;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list2) {
            List<OutputStream> outputs = ((CameraStream) obj).getOutputs();
            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                Iterator<T> it = outputs.iterator();
                while (true) {
                    if (it.hasNext()) {
                        OutputStream.StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez34 = ((OutputStream) it.next()).mo529getStreamUseCase8x2ez34();
                        if (streamUseCaseMo529getStreamUseCase8x2ez34 == null ? false : OutputStream.StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez34.m589unboximpl(), OutputStream.StreamUseCase.Companion.m592getPREVIEWvrKr8v8())) {
                            arrayList.add(obj);
                            break;
                        }
                    }
                }
            }
            arrayList2.add(obj);
        }
        if (!arrayList.isEmpty()) {
            return qn1.h0(arrayList2, arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list2) {
            List<OutputStream> outputs2 = ((CameraStream) obj2).getOutputs();
            if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                Iterator<T> it2 = outputs2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (qn1.M(previewOutputTypes, ((OutputStream) it2.next()).getOutputType())) {
                            arrayList3.add(obj2);
                            break;
                        }
                    }
                }
            }
            arrayList4.add(obj2);
        }
        if (!arrayList3.isEmpty()) {
            return qn1.h0(arrayList4, qn1.n0(arrayList3, previewOutputTypesComparator));
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        for (Object obj3 : list2) {
            List<OutputStream> outputs3 = ((CameraStream) obj3).getOutputs();
            if (!(outputs3 instanceof Collection) || !outputs3.isEmpty()) {
                Iterator<T> it3 = outputs3.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        if (previewFormats.contains(StreamFormat.m677boximpl(((OutputStream) it3.next()).mo526getFormat8FPWQzE()))) {
                            arrayList5.add(obj3);
                            break;
                        }
                    }
                }
            }
            arrayList6.add(obj3);
        }
        return !arrayList5.isEmpty() ? qn1.h0(arrayList6, qn1.n0(arrayList5, previewFormatComparator)) : list;
    }

    private final List<CameraStream> sortOutputsByVideoStream(List<CameraStream> list) {
        List<CameraStream> list2 = list;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list2) {
            List<OutputStream> outputs = ((CameraStream) obj).getOutputs();
            if (!(outputs instanceof Collection) || !outputs.isEmpty()) {
                Iterator<T> it = outputs.iterator();
                while (true) {
                    if (it.hasNext()) {
                        OutputStream.StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez34 = ((OutputStream) it.next()).mo529getStreamUseCase8x2ez34();
                        if (streamUseCaseMo529getStreamUseCase8x2ez34 == null ? false : OutputStream.StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez34.m589unboximpl(), OutputStream.StreamUseCase.Companion.m596getVIDEO_RECORDvrKr8v8())) {
                            arrayList.add(obj);
                            break;
                        }
                    }
                }
            }
            arrayList2.add(obj);
        }
        if (!arrayList.isEmpty()) {
            return qn1.h0(arrayList, arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list2) {
            List<OutputStream> outputs2 = ((CameraStream) obj2).getOutputs();
            if (!(outputs2 instanceof Collection) || !outputs2.isEmpty()) {
                Iterator<T> it2 = outputs2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        OutputStream.StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc = ((OutputStream) it2.next()).mo530getStreamUseHintHIPxoCc();
                        if (streamUseHintMo530getStreamUseHintHIPxoCc == null ? false : OutputStream.StreamUseHint.m600equalsimpl0(streamUseHintMo530getStreamUseHintHIPxoCc.m603unboximpl(), OutputStream.StreamUseHint.Companion.m605getVIDEO_RECORD4VYZOf8())) {
                            arrayList3.add(obj2);
                            break;
                        }
                    }
                }
            }
            arrayList4.add(obj2);
        }
        return !arrayList3.isEmpty() ? qn1.h0(arrayList3, arrayList4) : list;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        boolean zIsTerminated;
        for (AutoCloseable autoCloseable : this.imageSourceMap.values()) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof MediaDrm)) {
                    mi2.b();
                    return;
                }
                ((MediaDrm) autoCloseable).release();
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public CameraStream get(CameraStream.Config config) {
        config.getClass();
        return this._streamMap.get(config);
    }

    public final CameraMetadata getCameraMetadata() {
        return this.cameraMetadata;
    }

    /* JADX INFO: renamed from: getCameraStreamConfig-aKI5c8E, reason: not valid java name */
    public final CameraStream.Config m913getCameraStreamConfigaKI5c8E(int i) {
        Object next;
        Iterator<T> it = this._streamMap.entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!StreamId.m726equalsimpl0(((CameraStream) ((Map.Entry) next).getValue()).m383getIdptHMqGs(), i));
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (CameraStream.Config) entry.getKey();
        }
        return null;
    }

    public final CameraGraph.Config getGraphConfig() {
        return this.graphConfig;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    /* JADX INFO: renamed from: getImageSource-aKI5c8E */
    public ImageSource mo718getImageSourceaKI5c8E(int i) {
        return this.imageSourceMap.get(StreamId.m723boximpl(i));
    }

    public final Map<StreamId, ImageSource> getImageSourceMap$camera_camera2_pipe() {
        return this.imageSourceMap;
    }

    public final ImageSources getImageSources() {
        return this.imageSources;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public List<InputStream> getInputs() {
        return this.inputs;
    }

    public final Map<OutputStream, OutputConfig> getOutputConfigMap$camera_camera2_pipe() {
        return this.outputConfigMap;
    }

    public final List<OutputConfig> getOutputConfigs$camera_camera2_pipe() {
        return this.outputConfigs;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    /* JADX INFO: renamed from: getOutputLatency-IL232MI */
    public StreamGraph.OutputLatency mo719getOutputLatencyIL232MI(int i, OutputId outputId) {
        StreamGraph.OutputLatency outputLatencyMo229getOutputLatencyn5Pu2dI = this.cameraControllerProvider.get().mo229getOutputLatencyn5Pu2dI(StreamId.m723boximpl(i));
        if (outputLatencyMo229getOutputLatencyn5Pu2dI != null) {
            return outputLatencyMo229getOutputLatencyn5Pu2dI;
        }
        CameraStream cameraStreamM716getaKI5c8E = m716getaKI5c8E(i);
        OutputStream outputStreamM717getiYJqvbA = outputId != null ? m717getiYJqvbA(outputId.m509unboximpl()) : null;
        if (cameraStreamM716getaKI5c8E == null) {
            vh.e(StreamId.m728toStringimpl(i), "No stream found for given streamId ");
            return null;
        }
        if (cameraStreamM716getaKI5c8E.getOutputs().size() == 1) {
            outputStreamM717getiYJqvbA = (OutputStream) qn1.k0(cameraStreamM716getaKI5c8E.getOutputs());
            j59 j59Var = j59.a;
        } else if (outputStreamM717getiYJqvbA == null) {
            vh.e(outputId, "Output must be specified for MultiResolution use case. No output found for given outputId ");
            return null;
        }
        CameraStreamConfigurationMap streamConfigurationMap = CameraMetadata.Companion.getStreamConfigurationMap(this.cameraMetadata);
        Long lValueOf = streamConfigurationMap != null ? Long.valueOf(streamConfigurationMap.mo390getOutputStallDurationlomOqCM(outputStreamM717getiYJqvbA.mo526getFormat8FPWQzE(), outputStreamM717getiYJqvbA.getSize())) : null;
        if (lValueOf != null) {
            return new StreamGraph.OutputLatency(lValueOf.longValue(), 0L);
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public List<OutputStream> getOutputs() {
        return this.outputs;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public Set<StreamId> getStreamIds() {
        return this.streamIds$1;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public List<CameraStream> getStreams() {
        return this.streams;
    }

    public String toString() {
        return g2.c(new StringBuilder("StreamGraph("), this._streamMap, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: nextConfigId-hoCEiqs$camera_camera2_pipe, reason: not valid java name */
        public final int m914nextConfigIdhoCEiqs$camera_camera2_pipe() {
            return OutputConfigId.m895constructorimpl(StreamGraphImpl.configIds.b());
        }

        public final int nextGroupId$camera_camera2_pipe() {
            return StreamGraphImpl.groupIds.b();
        }

        /* JADX INFO: renamed from: nextInputId-m1bwn9M$camera_camera2_pipe, reason: not valid java name */
        public final int m915nextInputIdm1bwn9M$camera_camera2_pipe() {
            return InputStreamId.m484constructorimpl(StreamGraphImpl.inputIds.b());
        }

        /* JADX INFO: renamed from: nextOutputId-4LaLFng$camera_camera2_pipe, reason: not valid java name */
        public final int m916nextOutputId4LaLFng$camera_camera2_pipe() {
            return OutputId.m504constructorimpl(StreamGraphImpl.outputIds.b());
        }

        /* JADX INFO: renamed from: nextStreamId-ptHMqGs$camera_camera2_pipe, reason: not valid java name */
        public final int m917nextStreamIdptHMqGs$camera_camera2_pipe() {
            return StreamId.m724constructorimpl(StreamGraphImpl.streamIds.b());
        }

        private Companion() {
        }
    }

    public static final class InputStreamImpl implements InputStream {
        private final int format;
        private final int id;
        private final int maxImages;

        private InputStreamImpl(int i, int i2, int i3) {
            this.id = i;
            this.maxImages = i2;
            this.format = i3;
        }

        @Override // androidx.camera.camera2.pipe.InputStream
        /* JADX INFO: renamed from: getFormat-8FPWQzE */
        public int mo479getFormat8FPWQzE() {
            return this.format;
        }

        @Override // androidx.camera.camera2.pipe.InputStream
        /* JADX INFO: renamed from: getId-m1bwn9M */
        public int mo480getIdm1bwn9M() {
            return this.id;
        }

        @Override // androidx.camera.camera2.pipe.InputStream
        public int getMaxImages() {
            return this.maxImages;
        }

        public /* synthetic */ InputStreamImpl(int i, int i2, int i3, jh2 jh2Var) {
            this(i, i2, i3);
        }
    }

    public static final class OutputStreamImpl implements OutputStream {
        private final String camera;
        private final OutputStream.DynamicRangeProfile dynamicRangeProfile;
        private final int format;
        private final int id;
        private final OutputStream.MirrorMode mirrorMode;
        private final OutputStream.OutputType outputType;
        private final Size size;
        public CameraStream stream;
        private final OutputStream.StreamUseCase streamUseCase;
        private final OutputStream.StreamUseHint streamUseHint;
        private final OutputStream.TimestampBase timestampBase;

        public /* synthetic */ OutputStreamImpl(int i, Size size, int i2, String str, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.OutputType outputType, OutputStream.StreamUseHint streamUseHint, int i3, jh2 jh2Var) {
            this(i, size, i2, str, (i3 & 16) != 0 ? null : mirrorMode, (i3 & 32) != 0 ? null : timestampBase, (i3 & 64) != 0 ? null : dynamicRangeProfile, (i3 & 128) != 0 ? null : streamUseCase, (i3 & 256) != 0 ? null : outputType, (i3 & 512) != 0 ? null : streamUseHint, null);
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
        public String mo524getCameraDz_R5H8() {
            return this.camera;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w */
        public OutputStream.DynamicRangeProfile mo525getDynamicRangeProfileOoVcG5w() {
            return this.dynamicRangeProfile;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getFormat-8FPWQzE */
        public int mo526getFormat8FPWQzE() {
            return this.format;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getId-4LaLFng */
        public int mo527getId4LaLFng() {
            return this.id;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getMirrorMode-dO1_9xk */
        public OutputStream.MirrorMode mo528getMirrorModedO1_9xk() {
            return this.mirrorMode;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        public OutputStream.OutputType getOutputType() {
            return this.outputType;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        public Size getSize() {
            return this.size;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        public CameraStream getStream() {
            CameraStream cameraStream = this.stream;
            if (cameraStream != null) {
                return cameraStream;
            }
            aa4.j("stream");
            throw null;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getStreamUseCase-8x2ez34 */
        public OutputStream.StreamUseCase mo529getStreamUseCase8x2ez34() {
            return this.streamUseCase;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc */
        public OutputStream.StreamUseHint mo530getStreamUseHintHIPxoCc() {
            return this.streamUseHint;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getTimestampBase-pcPfPbY */
        public OutputStream.TimestampBase mo531getTimestampBasepcPfPbY() {
            return this.timestampBase;
        }

        public void setStream(CameraStream cameraStream) {
            cameraStream.getClass();
            this.stream = cameraStream;
        }

        public String toString() {
            return OutputId.m508toStringimpl(mo527getId4LaLFng());
        }

        private OutputStreamImpl(int i, Size size, int i2, String str, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.OutputType outputType, OutputStream.StreamUseHint streamUseHint) {
            size.getClass();
            str.getClass();
            this.id = i;
            this.size = size;
            this.format = i2;
            this.camera = str;
            this.mirrorMode = mirrorMode;
            this.timestampBase = timestampBase;
            this.dynamicRangeProfile = dynamicRangeProfile;
            this.streamUseCase = streamUseCase;
            this.outputType = outputType;
            this.streamUseHint = streamUseHint;
        }

        public /* synthetic */ OutputStreamImpl(int i, Size size, int i2, String str, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.OutputType outputType, OutputStream.StreamUseHint streamUseHint, jh2 jh2Var) {
            this(i, size, i2, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, outputType, streamUseHint);
        }
    }

    public static final class OutputConfig {
        private final String camera;
        private final OutputStream.OutputType deferredOutputType;
        private final OutputStream.DynamicRangeProfile dynamicRangeProfile;
        private final OutputConfiguration externalOutputConfig;
        private final int format;
        private final Integer groupNumber;
        private final int id;
        private final OutputStream.MirrorMode mirrorMode;
        private final List<OutputStream.SensorPixelMode> sensorPixelModes;
        private final Size size;
        private final List<CameraStream> streamBuilder;
        private final OutputStream.StreamUseCase streamUseCase;
        private final OutputStream.StreamUseHint streamUseHint;
        private final OutputStream.TimestampBase timestampBase;

        private OutputConfig(int i, Size size, int i2, String str, Integer num, OutputConfiguration outputConfiguration, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.StreamUseHint streamUseHint, List<OutputStream.SensorPixelMode> list) {
            size.getClass();
            str.getClass();
            list.getClass();
            this.id = i;
            this.size = size;
            this.format = i2;
            this.camera = str;
            this.groupNumber = num;
            this.externalOutputConfig = outputConfiguration;
            this.deferredOutputType = outputType;
            this.mirrorMode = mirrorMode;
            this.timestampBase = timestampBase;
            this.dynamicRangeProfile = dynamicRangeProfile;
            this.streamUseCase = streamUseCase;
            this.streamUseHint = streamUseHint;
            this.sensorPixelModes = list;
            this.streamBuilder = new ArrayList();
        }

        /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
        public final String m918getCameraDz_R5H8() {
            return this.camera;
        }

        public final boolean getDeferrable() {
            return this.deferredOutputType != null;
        }

        public final OutputStream.OutputType getDeferredOutputType() {
            return this.deferredOutputType;
        }

        /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: not valid java name */
        public final OutputStream.DynamicRangeProfile m919getDynamicRangeProfileOoVcG5w() {
            return this.dynamicRangeProfile;
        }

        public final OutputConfiguration getExternalOutputConfig() {
            return this.externalOutputConfig;
        }

        /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name */
        public final int m920getFormat8FPWQzE() {
            return this.format;
        }

        public final Integer getGroupNumber() {
            return this.groupNumber;
        }

        /* JADX INFO: renamed from: getId-hoCEiqs, reason: not valid java name */
        public final int m921getIdhoCEiqs() {
            return this.id;
        }

        /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: not valid java name */
        public final OutputStream.MirrorMode m922getMirrorModedO1_9xk() {
            return this.mirrorMode;
        }

        public final List<OutputStream.SensorPixelMode> getSensorPixelModes() {
            return this.sensorPixelModes;
        }

        public final Size getSize() {
            return this.size;
        }

        public final List<CameraStream> getStreamBuilder$camera_camera2_pipe() {
            return this.streamBuilder;
        }

        /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: not valid java name */
        public final OutputStream.StreamUseCase m923getStreamUseCase8x2ez34() {
            return this.streamUseCase;
        }

        /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: not valid java name */
        public final OutputStream.StreamUseHint m924getStreamUseHintHIPxoCc() {
            return this.streamUseHint;
        }

        public final List<CameraStream> getStreams() {
            return this.streamBuilder;
        }

        public final boolean getSurfaceSharing() {
            return this.streamBuilder.size() > 1;
        }

        /* JADX INFO: renamed from: getTimestampBase-pcPfPbY, reason: not valid java name */
        public final OutputStream.TimestampBase m925getTimestampBasepcPfPbY() {
            return this.timestampBase;
        }

        public String toString() {
            return OutputConfigId.m899toStringimpl(this.id);
        }

        public /* synthetic */ OutputConfig(int i, Size size, int i2, String str, Integer num, OutputConfiguration outputConfiguration, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.StreamUseHint streamUseHint, List list, jh2 jh2Var) {
            this(i, size, i2, str, num, outputConfiguration, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
        }
    }
}
