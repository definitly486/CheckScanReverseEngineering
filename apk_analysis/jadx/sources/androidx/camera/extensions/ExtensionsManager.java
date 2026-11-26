package androidx.camera.extensions;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.util.Range;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.extensions.internal.Camera2ExtensionsInfo;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.e02;
import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.w43;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionsManager {
    public static final Companion Companion = new Companion(null);
    private static final Object EXTENSIONS_LOCK = new Object();
    private static final int MINIMUM_SUPPORTED_API_LEVEL = 33;
    private static final String TAG = "ExtensionsManager";
    private static ListenableFuture<Void> sDeinitializeFuture;
    private static ExtensionsManager sExtensionsManager;
    private static ListenableFuture<ExtensionsManager> sInitializeFuture;
    private final ExtensionsAvailability extensionsAvailability;
    private final ExtensionsInfo extensionsInfo;

    public enum ExtensionsAvailability {
        LIBRARY_AVAILABLE,
        LIBRARY_UNAVAILABLE_ERROR_LOADING,
        LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION,
        NONE;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<ExtensionsAvailability> getEntries() {
            return $ENTRIES;
        }
    }

    public ExtensionsManager(ExtensionsAvailability extensionsAvailability, CameraProvider cameraProvider, Context context) {
        extensionsAvailability.getClass();
        cameraProvider.getClass();
        context.getClass();
        this.extensionsAvailability = extensionsAvailability;
        this.extensionsInfo = new ExtensionsInfo(cameraProvider, context);
    }

    public static final Object getInstance(Context context, CameraProvider cameraProvider, e02<? super ExtensionsManager> e02Var) {
        return Companion.getInstance(context, cameraProvider, e02Var);
    }

    public static final ListenableFuture<ExtensionsManager> getInstanceAsync(Context context, CameraProvider cameraProvider) {
        return Companion.getInstanceAsync(context, cameraProvider);
    }

    public final CameraExtensionsControl getCameraExtensionsControl(CameraControl cameraControl) {
        cameraControl.getClass();
        return CameraExtensionsControls.from(cameraControl);
    }

    public final CameraExtensionsInfo getCameraExtensionsInfo(CameraInfo cameraInfo) {
        cameraInfo.getClass();
        CameraExtensionsInfo cameraExtensionsInfoFrom = CameraExtensionsInfos.from(cameraInfo);
        cameraExtensionsInfoFrom.getClass();
        return cameraExtensionsInfoFrom;
    }

    public final Range<Long> getEstimatedCaptureLatencyRange(CameraSelector cameraSelector, int i) {
        cameraSelector.getClass();
        if (i == 0 || this.extensionsAvailability != ExtensionsAvailability.LIBRARY_AVAILABLE) {
            return null;
        }
        return this.extensionsInfo.getEstimatedCaptureLatencyRange(cameraSelector, i, null);
    }

    public final CameraFilter getExtensionCameraFilterAndInjectCameraConfig$camera_extensions(int i) {
        if (i == 0) {
            return null;
        }
        if (this.extensionsAvailability == ExtensionsAvailability.LIBRARY_AVAILABLE) {
            this.extensionsInfo.injectExtensionCameraConfig(i);
            return this.extensionsInfo.getCameraFilter(i);
        }
        fg.c("This device doesn't support extensions function! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector.");
        return null;
    }

    public final CameraSelector getExtensionEnabledCameraSelector(CameraSelector cameraSelector, int i) {
        cameraSelector.getClass();
        if (i == 0) {
            return cameraSelector;
        }
        if (this.extensionsAvailability != ExtensionsAvailability.LIBRARY_AVAILABLE) {
            fg.c("This device doesn't support extensions function! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector.");
            return null;
        }
        CameraSelector extensionCameraSelectorAndInjectCameraConfig = this.extensionsInfo.getExtensionCameraSelectorAndInjectCameraConfig(cameraSelector, i);
        extensionCameraSelectorAndInjectCameraConfig.getClass();
        return extensionCameraSelectorAndInjectCameraConfig;
    }

    public final ExtensionsAvailability getExtensionsAvailability$camera_extensions() {
        return this.extensionsAvailability;
    }

    public final boolean isExtensionAvailable(CameraSelector cameraSelector, int i) {
        cameraSelector.getClass();
        if (i == 0) {
            return true;
        }
        if (this.extensionsAvailability != ExtensionsAvailability.LIBRARY_AVAILABLE) {
            return false;
        }
        return this.extensionsInfo.isExtensionAvailable(cameraSelector, i);
    }

    public final boolean isImageAnalysisSupported(CameraSelector cameraSelector, int i) {
        cameraSelector.getClass();
        if (i == 0) {
            return true;
        }
        if (this.extensionsAvailability != ExtensionsAvailability.LIBRARY_AVAILABLE) {
            return false;
        }
        return this.extensionsInfo.isImageAnalysisSupported(cameraSelector, i);
    }

    public final void setVendorExtenderFactory$camera_extensions(VendorExtenderFactory vendorExtenderFactory) {
        vendorExtenderFactory.getClass();
        this.extensionsInfo.setVendorExtenderFactory(vendorExtenderFactory);
    }

    public final ListenableFuture<Void> shutdown() {
        synchronized (EXTENSIONS_LOCK) {
            ListenableFuture<ExtensionsManager> listenableFuture = sInitializeFuture;
            if (listenableFuture == null) {
                ListenableFuture<Void> listenableFutureImmediateFuture = Futures.immediateFuture(null);
                listenableFutureImmediateFuture.getClass();
                return listenableFutureImmediateFuture;
            }
            ListenableFuture<Void> listenableFuture2 = sDeinitializeFuture;
            if (listenableFuture2 != null) {
                listenableFuture2.getClass();
                return listenableFuture2;
            }
            try {
                try {
                    listenableFuture.getClass();
                    listenableFuture.get();
                    sInitializeFuture = null;
                    sExtensionsManager.getClass();
                    sExtensionsManager = null;
                    ExtendedCameraConfigProviderStore.clear();
                    ListenableFuture<Void> listenableFutureImmediateFuture2 = Futures.immediateFuture(null);
                    sDeinitializeFuture = listenableFutureImmediateFuture2;
                    listenableFutureImmediateFuture2.getClass();
                    return listenableFutureImmediateFuture2;
                } catch (ExecutionException e) {
                    ListenableFuture<Void> listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(e);
                    sDeinitializeFuture = listenableFutureImmediateFailedFuture;
                    listenableFutureImmediateFailedFuture.getClass();
                    return listenableFutureImmediateFailedFuture;
                }
            } catch (InterruptedException e2) {
                ListenableFuture<Void> listenableFutureImmediateFailedFuture2 = Futures.immediateFailedFuture(e2);
                sDeinitializeFuture = listenableFutureImmediateFailedFuture2;
                listenableFutureImmediateFailedFuture2.getClass();
                return listenableFutureImmediateFailedFuture2;
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object getInstanceAsync$lambda$0$1(Context context, CameraProvider cameraProvider, CallbackToFutureAdapter.Completer completer) throws CameraAccessException {
            String str;
            completer.getClass();
            CameraManager cameraManager = (CameraManager) context.getSystemService(CameraManager.class);
            cameraManager.getClass();
            Camera2ExtensionsInfo camera2ExtensionsInfo = new Camera2ExtensionsInfo(cameraManager);
            String[] cameraIdList = cameraManager.getCameraIdList();
            cameraIdList.getClass();
            int length = cameraIdList.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    str = null;
                    break;
                }
                str = cameraIdList[i];
                str.getClass();
                List<Integer> supportedExtensions = camera2ExtensionsInfo.getExtensionCharacteristics(str).getSupportedExtensions();
                supportedExtensions.getClass();
                if (!supportedExtensions.isEmpty()) {
                    break;
                }
                i++;
            }
            completer.set(ExtensionsManager.Companion.getOrCreateExtensionsManager(!(str != null) ? ExtensionsAvailability.NONE : ExtensionsAvailability.LIBRARY_AVAILABLE, cameraProvider, context));
            return "Initialize extensions";
        }

        private final ExtensionsManager getOrCreateExtensionsManager(ExtensionsAvailability extensionsAvailability, CameraProvider cameraProvider, Context context) {
            ExtensionsManager extensionsManager;
            synchronized (ExtensionsManager.EXTENSIONS_LOCK) {
                extensionsManager = ExtensionsManager.sExtensionsManager;
                if (extensionsManager == null) {
                    extensionsManager = new ExtensionsManager(extensionsAvailability, cameraProvider, context);
                    ExtensionsManager.sExtensionsManager = extensionsManager;
                }
            }
            return extensionsManager;
        }

        public final Object getInstance(Context context, CameraProvider cameraProvider, e02<? super ExtensionsManager> e02Var) {
            return ListenableFutureKt.await(getInstanceAsync(context, cameraProvider), e02Var);
        }

        public final ListenableFuture<ExtensionsManager> getInstanceAsync(Context context, CameraProvider cameraProvider) {
            context.getClass();
            cameraProvider.getClass();
            synchronized (ExtensionsManager.EXTENSIONS_LOCK) {
                try {
                    ListenableFuture listenableFuture = ExtensionsManager.sDeinitializeFuture;
                    if (listenableFuture != null && !listenableFuture.isDone()) {
                        throw new IllegalStateException("Not yet done deinitializing extensions");
                    }
                    ExtensionsManager.sDeinitializeFuture = null;
                    Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
                    persistentApplicationContext.getClass();
                    if (Build.VERSION.SDK_INT < 33) {
                        ListenableFuture<ExtensionsManager> listenableFutureImmediateFuture = Futures.immediateFuture(ExtensionsManager.Companion.getOrCreateExtensionsManager(ExtensionsAvailability.NONE, cameraProvider, persistentApplicationContext));
                        listenableFutureImmediateFuture.getClass();
                        return listenableFutureImmediateFuture;
                    }
                    if (ExtensionsManager.sInitializeFuture == null) {
                        ExtensionsManager.sInitializeFuture = CallbackToFutureAdapter.getFuture(new w43(persistentApplicationContext, cameraProvider));
                    }
                    ListenableFuture<ExtensionsManager> listenableFuture2 = ExtensionsManager.sInitializeFuture;
                    listenableFuture2.getClass();
                    return listenableFuture2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private Companion() {
        }
    }
}
