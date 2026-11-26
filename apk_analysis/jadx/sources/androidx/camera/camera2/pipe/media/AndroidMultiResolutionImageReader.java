package androidx.camera.camera2.pipe.media;

import android.hardware.camera2.MultiResolutionImageReader;
import android.hardware.camera2.params.MultiResolutionStreamInfo;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraOnActiveOutputSurfacesListener;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.PlatformApiCompat;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.ah;
import defpackage.b36;
import defpackage.c9;
import defpackage.cj;
import defpackage.ej;
import defpackage.fg;
import defpackage.ga1;
import defpackage.gj;
import defpackage.hn;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kt;
import defpackage.kv2;
import defpackage.l1;
import defpackage.m05;
import defpackage.ne4;
import defpackage.ot;
import defpackage.qn1;
import defpackage.uz4;
import defpackage.vh;
import defpackage.x07;
import defpackage.xp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidMultiResolutionImageReader implements ImageReaderWrapper, ImageReader.OnImageAvailableListener, CameraOnActiveOutputSurfacesListener {
    public static final Companion Companion = new Companion(null);
    private final int capacity;
    private final boolean concurrentOutputsEnabled;
    private final MultiResolutionImageReader multiResolutionImageReader;
    private final ot onExpectedOutputsListener$delegate;
    private final ot onImageListener$delegate;
    private final List<OutputConfiguration> outputConfigurations;
    private final Map<Surface, Set<OutputId>> singleOutputIdSets;
    private final int streamFormat;
    private final int streamId;
    private final Map<MultiResolutionStreamInfo, OutputId> streamInfoToOutputIdMap;
    private final Map<Surface, OutputId> surfaceToOutputIdMap;

    private AndroidMultiResolutionImageReader(MultiResolutionImageReader multiResolutionImageReader, int i, int i2, int i3, List<OutputConfiguration> list, Map<MultiResolutionStreamInfo, OutputId> map, Map<Surface, OutputId> map2, boolean z) {
        multiResolutionImageReader.getClass();
        list.getClass();
        map.getClass();
        map2.getClass();
        this.multiResolutionImageReader = multiResolutionImageReader;
        this.streamFormat = i;
        this.capacity = i2;
        this.streamId = i3;
        this.outputConfigurations = list;
        this.streamInfoToOutputIdMap = map;
        this.surfaceToOutputIdMap = map2;
        this.concurrentOutputsEnabled = z;
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(map2.size()));
        Iterator<T> it = map2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), l1.f(entry.getValue()));
        }
        this.singleOutputIdSets = linkedHashMap;
        this.onImageListener$delegate = kt.d(null);
        this.onExpectedOutputsListener$delegate = kt.d(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$0(MultiResolutionStreamInfo multiResolutionStreamInfo) {
        multiResolutionStreamInfo.getClass();
        return multiResolutionStreamInfo.getPhysicalCameraId() + ":w" + multiResolutionStreamInfo.getWidth() + 'h' + multiResolutionStreamInfo.getHeight();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.multiResolutionImageReader.close();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public void flush() {
        this.multiResolutionImageReader.flush();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public int getCapacity() {
        return this.capacity;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public ImageReaderWrapper.OnExpectedOutputsListener getOnExpectedOutputsListener() {
        return (ImageReaderWrapper.OnExpectedOutputsListener) this.onExpectedOutputsListener$delegate.b;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public ImageReaderWrapper.OnImageListener getOnImageListener() {
        return (ImageReaderWrapper.OnImageListener) this.onImageListener$delegate.b;
    }

    public final List<OutputConfiguration> getOutputConfigurations$camera_camera2_pipe() {
        return this.outputConfigurations;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public Surface getSurface() {
        Surface surface = this.multiResolutionImageReader.getSurface();
        surface.getClass();
        return surface;
    }

    @Override // androidx.camera.camera2.pipe.CameraOnActiveOutputSurfacesListener
    public void onActiveOutputSurfaces(List<? extends Surface> list, long j, long j2) {
        Set<OutputId> setY0;
        list.getClass();
        if (list.size() == 1) {
            Surface surface = list.get(0);
            Set<OutputId> set = this.singleOutputIdSets.get(surface);
            if (set == null) {
                fg.d("Unrecognized active surface in ", StreamId.m728toStringimpl(this.streamId), ": ", surface);
                return;
            }
            setY0 = set;
        } else {
            List<? extends Surface> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (Surface surface2 : list2) {
                OutputId outputId = this.surfaceToOutputIdMap.get(surface2);
                if (outputId == null) {
                    fg.d("Unrecognized active surface in ", StreamId.m728toStringimpl(this.streamId), ": ", surface2);
                    return;
                }
                arrayList.add(OutputId.m503boximpl(outputId.m509unboximpl()));
            }
            setY0 = qn1.y0(arrayList);
        }
        ImageReaderWrapper.OnExpectedOutputsListener onExpectedOutputsListener = getOnExpectedOutputsListener();
        if (onExpectedOutputsListener != null) {
            onExpectedOutputsListener.onExpectedOutputs(j, setY0);
        }
    }

    @Override // android.media.ImageReader.OnImageAvailableListener
    public void onImageAvailable(ImageReader imageReader) {
        ImageReaderWrapper.OnExpectedOutputsListener onExpectedOutputsListener;
        Image imageAcquireNextImage = imageReader != null ? imageReader.acquireNextImage() : null;
        if (imageAcquireNextImage != null) {
            ImageReaderWrapper.OnImageListener onImageListener = getOnImageListener();
            if (onImageListener == null) {
                imageAcquireNextImage.close();
                return;
            }
            MultiResolutionStreamInfo streamInfoForImageReader = this.multiResolutionImageReader.getStreamInfoForImageReader(imageReader);
            streamInfoForImageReader.getClass();
            OutputId outputId = this.streamInfoToOutputIdMap.get(streamInfoForImageReader);
            if (outputId != null) {
                int iM509unboximpl = outputId.m509unboximpl();
                if (!this.concurrentOutputsEnabled && (onExpectedOutputsListener = getOnExpectedOutputsListener()) != null) {
                    onExpectedOutputsListener.onExpectedOutputs(imageAcquireNextImage.getTimestamp(), l1.f(OutputId.m503boximpl(iM509unboximpl)));
                }
                onImageListener.mo984onImageAQuxepk(this.streamId, iM509unboximpl, new AndroidImage(imageAcquireNextImage));
                return;
            }
            throw new IllegalStateException((this + ": Failed to find OutputId for " + imageReader + " based on streamInfo " + streamInfoForImageReader + '!').toString());
        }
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public void setOnExpectedOutputsListener(ImageReaderWrapper.OnExpectedOutputsListener onExpectedOutputsListener) {
        this.onExpectedOutputsListener$delegate.c(onExpectedOutputsListener);
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public void setOnImageListener(ImageReaderWrapper.OnImageListener onImageListener) {
        this.onImageListener$delegate.c(onImageListener);
    }

    public String toString() {
        String strA0 = qn1.a0(this.streamInfoToOutputIdMap.keySet(), null, "[", "]", 0, new cj(), 25);
        StringBuilder sb = new StringBuilder("MultiResolutionImageReader@");
        int iHashCode = hashCode();
        ga1.b(16);
        String string = Integer.toString(iHashCode, 16);
        string.getClass();
        sb.append(string);
        sb.append('-');
        sb.append(StreamFormat.m682getNameimpl(this.streamFormat));
        sb.append('-');
        sb.append(strA0);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, AndroidMultiResolutionImageReader.class)) {
            return this;
        }
        if (ne4Var.equals(x07.a(MultiResolutionImageReader.class))) {
            return (T) this.multiResolutionImageReader;
        }
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ImageReaderWrapper create(CameraStream cameraStream, int i, Executor executor, Long l, boolean z, PlatformApiCompat platformApiCompat) {
            cameraStream.getClass();
            executor.getClass();
            List<OutputStream> outputs = cameraStream.getOutputs();
            if (!outputs.isEmpty()) {
                return m981createwJp1_LU(((OutputStream) qn1.T(outputs)).mo526getFormat8FPWQzE(), cameraStream.m383getIdptHMqGs(), outputs, i, executor, l, z, platformApiCompat);
            }
            xp.i(cameraStream, " outputs cannot be empty!");
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: create-wJp1_LU, reason: not valid java name */
        public final ImageReaderWrapper m981createwJp1_LU(int i, int i2, List<? extends OutputStream> list, int i3, Executor executor, Long l, boolean z, PlatformApiCompat platformApiCompat) {
            PlatformApiCompat platformApiCompat2;
            MultiResolutionImageReader multiResolutionImageReader;
            list.getClass();
            executor.getClass();
            if (i3 <= 0) {
                c9.f(kv2.b(i3, "Capacity (", ") must be > 0"));
                return null;
            }
            if (i3 > 54) {
                fg.c("Capacity for creating new ImageSources is restricted to 54. Android has undocumented internal limits that are different depending on which device the MultiResolutionImageReader is created on.");
                return null;
            }
            if (z && (platformApiCompat == null || !platformApiCompat.isMultiResolutionConcurrentReadersEnabled())) {
                fg.c("Concurrent MultiResolutionImageReaders are not supported on this device");
                return null;
            }
            if (l != null && Build.VERSION.SDK_INT < 36 && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Usage flags are only supported for API >= 36. Creating multiresolution image reader without usage flag.");
            }
            List<? extends OutputStream> list2 = list;
            int iB = m05.b(kn1.q(list2, 10));
            if (iB < 16) {
                iB = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
            for (OutputStream outputStream : list2) {
                hn.b();
                linkedHashMap.put(new MultiResolutionStreamInfo(outputStream.getSize().getWidth(), outputStream.getSize().getHeight(), outputStream.mo524getCameraDz_R5H8()), OutputId.m503boximpl(outputStream.mo527getId4LaLFng()));
            }
            Set setKeySet = linkedHashMap.keySet();
            if (platformApiCompat == null || !platformApiCompat.isMultiResolutionConcurrentReadersEnabled()) {
                platformApiCompat2 = platformApiCompat;
                if (l == null || Build.VERSION.SDK_INT < 36) {
                    gj.a();
                    multiResolutionImageReader = new MultiResolutionImageReader(setKeySet, i, i3);
                } else {
                    gj.a();
                    multiResolutionImageReader = ej.a(setKeySet, i, i3, l.longValue());
                }
            } else {
                multiResolutionImageReader = platformApiCompat.buildMultiResolutionImageReader(setKeySet, i, i3, l, Boolean.valueOf(z));
                platformApiCompat2 = platformApiCompat;
            }
            Collection<OutputConfiguration> collectionCreateInstancesForMultiResolutionOutput = OutputConfiguration.createInstancesForMultiResolutionOutput(multiResolutionImageReader);
            collectionCreateInstancesForMultiResolutionOutput.getClass();
            List listT0 = qn1.t0(collectionCreateInstancesForMultiResolutionOutput);
            if (listT0.size() != list.size()) {
                ah.f("Check failed.");
                return null;
            }
            uz4 uz4Var = new uz4();
            for (b36 b36Var : qn1.z0(listT0, list2)) {
                OutputConfiguration outputConfiguration = (OutputConfiguration) b36Var.b;
                OutputStream outputStream2 = (OutputStream) b36Var.c;
                Surface surface = outputConfiguration.getSurface();
                if (surface == null) {
                    ah.f("Required value was null.");
                    return null;
                }
                uz4Var.put(surface, OutputId.m503boximpl(outputStream2.mo527getId4LaLFng()));
            }
            AndroidMultiResolutionImageReader androidMultiResolutionImageReader = new AndroidMultiResolutionImageReader(multiResolutionImageReader, StreamFormat.m678constructorimpl(i), i3, i2, listT0, linkedHashMap, uz4Var.b(), z, null);
            if (platformApiCompat2 != null && platformApiCompat2.isMultiResolutionConcurrentReadersEnabled() && z) {
                platformApiCompat2.setOnActiveOutputSurfacesListener(multiResolutionImageReader, executor, androidMultiResolutionImageReader);
            }
            multiResolutionImageReader.setOnImageAvailableListener(androidMultiResolutionImageReader, executor);
            return androidMultiResolutionImageReader;
        }

        private Companion() {
        }
    }

    public /* synthetic */ AndroidMultiResolutionImageReader(MultiResolutionImageReader multiResolutionImageReader, int i, int i2, int i3, List list, Map map, Map map2, boolean z, jh2 jh2Var) {
        this(multiResolutionImageReader, i, i2, i3, list, map, map2, z);
    }
}
