package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ZslDisablerQuirk;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.SizesKt;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.utils.ZslRingBuffer;
import defpackage.ah;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.om9;
import defpackage.qz0;
import defpackage.r01;
import defpackage.y99;
import defpackage.yr;
import defpackage.ze;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class ZslControlImpl implements ZslControl {
    public static final Companion Companion = new Companion(null);
    private static final int FORMAT = 34;
    public static final int MAX_IMAGES = 9;
    public static final int RING_BUFFER_CAPACITY = 3;
    private final CameraMetadata cameraMetadata;
    private final CameraProperties cameraProperties;
    private boolean isZslDisabledByFlashMode;
    private boolean isZslDisabledByQuirks;
    private boolean isZslDisabledByUseCaseConfig;
    private CameraCaptureCallback metadataMatchingCaptureCallback;
    private DeferrableSurface reprocessingImageDeferrableSurface;
    private SafeCloseImageReaderProxy reprocessingImageReader;
    private final cl4 streamConfigurationMap$delegate;
    private final ZslRingBuffer zslRingBuffer;

    public ZslControlImpl(CameraProperties cameraProperties) {
        cameraProperties.getClass();
        this.cameraProperties = cameraProperties;
        this.cameraMetadata = cameraProperties.getMetadata();
        this.streamConfigurationMap$delegate = new fh8(new ze(this, 7));
        this.zslRingBuffer = new ZslRingBuffer(3, new r01());
        this.isZslDisabledByQuirks = DeviceQuirks.INSTANCE.get(ZslDisablerQuirk.class) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addZslConfig$lambda$5(ZslControlImpl zslControlImpl, ImageReaderProxy imageReaderProxy) {
        imageReaderProxy.getClass();
        try {
            ImageProxy imageProxyAcquireLatestImage = imageReaderProxy.acquireLatestImage();
            if (imageProxyAcquireLatestImage != null) {
                zslControlImpl.zslRingBuffer.enqueue(imageProxyAcquireLatestImage);
            }
        } catch (IllegalStateException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled(Log.TAG)) {
                android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to acquire latest image");
            }
        }
    }

    private final void clearRingBuffer() {
        ZslRingBuffer zslRingBuffer = this.zslRingBuffer;
        while (!zslRingBuffer.isEmpty()) {
            zslRingBuffer.dequeue().close();
        }
    }

    public static /* synthetic */ void getReprocessingImageReader$camera_camera2$annotations() {
    }

    private final StreamConfigurationMap getStreamConfigurationMap() {
        return (StreamConfigurationMap) this.streamConfigurationMap$delegate.getValue();
    }

    public static /* synthetic */ void getZslRingBuffer$camera_camera2$annotations() {
    }

    private final void reset() {
        DeferrableSurface deferrableSurface = this.reprocessingImageDeferrableSurface;
        if (deferrableSurface != null) {
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.reprocessingImageReader;
            if (safeCloseImageReaderProxy != null) {
                deferrableSurface.getTerminationFuture().addListener(new om9(safeCloseImageReaderProxy, 0), CameraXExecutors.mainThreadExecutor());
                safeCloseImageReaderProxy.clearOnImageAvailableListener();
                this.reprocessingImageReader = null;
            }
            deferrableSurface.close();
            this.reprocessingImageDeferrableSurface = null;
        }
        clearRingBuffer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StreamConfigurationMap streamConfigurationMap_delegate$lambda$0(ZslControlImpl zslControlImpl) {
        CameraMetadata cameraMetadata = zslControlImpl.cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        Object obj = cameraMetadata.get((CameraCharacteristics.Key<Object>) key);
        if (obj != null) {
            return (StreamConfigurationMap) obj;
        }
        ah.f("Required value was null.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zslRingBuffer$lambda$0(ImageProxy imageProxy) {
        imageProxy.getClass();
        imageProxy.close();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void addZslConfig(SessionConfig.Builder builder) {
        builder.getClass();
        reset();
        int i = 1;
        if (this.isZslDisabledByUseCaseConfig) {
            builder.setTemplateType(1);
            return;
        }
        if (this.isZslDisabledByQuirks) {
            builder.setTemplateType(1);
            return;
        }
        if (!CameraMetadata.Companion.getSupportsPrivateReprocessing(this.cameraMetadata)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled(Log.TAG)) {
                android.util.Log.i(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Private reprocessing isn't supported");
            }
            builder.setTemplateType(1);
            return;
        }
        Size[] inputSizes = getStreamConfigurationMap().getInputSizes(34);
        inputSizes.getClass();
        Iterator it = yr.h0(inputSizes).iterator();
        if (!it.hasNext()) {
            qz0.e();
            return;
        }
        Object next = it.next();
        if (it.hasNext()) {
            Size size = (Size) next;
            size.getClass();
            int iArea = SizesKt.area(size);
            do {
                Object next2 = it.next();
                Size size2 = (Size) next2;
                size2.getClass();
                int iArea2 = SizesKt.area(size2);
                if (iArea < iArea2) {
                    next = next2;
                    iArea = iArea2;
                }
            } while (it.hasNext());
        }
        Size size3 = (Size) next;
        if (size3 == null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Unable to find a supported size for ZSL");
                return;
            }
            return;
        }
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: Selected ZSL size: " + size3);
        }
        int[] validOutputFormatsForInput = getStreamConfigurationMap().getValidOutputFormatsForInput(34);
        validOutputFormatsForInput.getClass();
        if (!yr.C(validOutputFormatsForInput, 256)) {
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl: JPEG isn't valid output for ZSL format");
                return;
            }
            return;
        }
        MetadataImageReader metadataImageReader = new MetadataImageReader(size3.getWidth(), size3.getHeight(), 34, 9);
        CameraCaptureCallback cameraCaptureCallback = metadataImageReader.getCameraCaptureCallback();
        cameraCaptureCallback.getClass();
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(metadataImageReader);
        metadataImageReader.setOnImageAvailableListener(new ImageReaderProxy.OnImageAvailableListener() { // from class: nm9
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                ZslControlImpl.addZslConfig$lambda$5(this.a, imageReaderProxy);
            }
        }, CameraXExecutors.ioExecutor());
        Surface surface = safeCloseImageReaderProxy.getSurface();
        if (surface == null) {
            ah.f("Required value was null.");
            return;
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(surface, new Size(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight()), 34);
        immediateSurface.getTerminationFuture().addListener(new y99(safeCloseImageReaderProxy, i), CameraXExecutors.mainThreadExecutor());
        builder.addSurface(immediateSurface);
        builder.addCameraCaptureCallback(cameraCaptureCallback);
        builder.setInputConfiguration(new InputConfiguration(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight(), safeCloseImageReaderProxy.getImageFormat()));
        this.metadataMatchingCaptureCallback = cameraCaptureCallback;
        this.reprocessingImageReader = safeCloseImageReaderProxy;
        this.reprocessingImageDeferrableSurface = immediateSurface;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void clearZslConfig() {
        reset();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public ImageProxy dequeueImageFromBuffer() {
        try {
            return this.zslRingBuffer.dequeue();
        } catch (NoSuchElementException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isWarnEnabled(Log.TAG)) {
                return null;
            }
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "ZslControlImpl#dequeueImageFromBuffer: No such element");
            return null;
        }
    }

    public final SafeCloseImageReaderProxy getReprocessingImageReader$camera_camera2() {
        return this.reprocessingImageReader;
    }

    public final ZslRingBuffer getZslRingBuffer$camera_camera2() {
        return this.zslRingBuffer;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByFlashMode() {
        return this.isZslDisabledByFlashMode;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByUserCaseConfig() {
        return this.isZslDisabledByUseCaseConfig;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslSurface(DeferrableSurface deferrableSurface, SessionConfig sessionConfig) {
        deferrableSurface.getClass();
        sessionConfig.getClass();
        InputConfiguration inputConfiguration = sessionConfig.getInputConfiguration();
        return inputConfiguration != null && deferrableSurface.getPrescribedStreamFormat() == inputConfiguration.getFormat() && deferrableSurface.getPrescribedSize().getWidth() == inputConfiguration.getWidth() && deferrableSurface.getPrescribedSize().getHeight() == inputConfiguration.getHeight();
    }

    public final void setReprocessingImageReader$camera_camera2(SafeCloseImageReaderProxy safeCloseImageReaderProxy) {
        this.reprocessingImageReader = safeCloseImageReaderProxy;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByFlashMode(boolean z) {
        this.isZslDisabledByFlashMode = z;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByUserCaseConfig(boolean z) {
        if (this.isZslDisabledByUseCaseConfig != z && z) {
            clearRingBuffer();
        }
        this.isZslDisabledByUseCaseConfig = z;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getMAX_IMAGES$camera_camera2$annotations() {
        }

        public static /* synthetic */ void getRING_BUFFER_CAPACITY$camera_camera2$annotations() {
        }

        private Companion() {
        }
    }
}
