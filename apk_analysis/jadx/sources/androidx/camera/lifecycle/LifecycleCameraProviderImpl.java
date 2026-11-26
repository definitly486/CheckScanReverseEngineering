package androidx.camera.lifecycle;

import android.content.Context;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.core.ViewPort;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigProvider;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.lifecycle.LifecycleCameraProviderImpl;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LifecycleOwner;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.aa4;
import defpackage.b36;
import defpackage.di;
import defpackage.fg;
import defpackage.i31;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.tu1;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCameraProviderImpl implements LifecycleCameraProvider, CameraPresenceListener {
    private final Map<CameraIdentifier, AdapterCameraInfo> cameraInfoMap;
    private CameraX cameraX;
    private CameraXConfig.Provider cameraXConfigProvider;
    private ListenableFuture<Void> cameraXInitializeFuture;
    private ListenableFuture<Void> cameraXShutdownFuture;
    private Context context;
    private final HashSet<LifecycleCameraRepository.Key> lifecycleCameraKeys;
    private LifecycleCameraRepository lifecycleCameraRepository;
    private final Object lock = new Object();

    public LifecycleCameraProviderImpl() {
        ListenableFuture<Void> listenableFutureImmediateFuture = Futures.immediateFuture(null);
        listenableFutureImmediateFuture.getClass();
        this.cameraXShutdownFuture = listenableFutureImmediateFuture;
        this.cameraInfoMap = new HashMap();
        this.lifecycleCameraKeys = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final Camera bindToLifecycleInternal(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, CameraSelector cameraSelector2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, SessionConfig sessionConfig) {
        CameraInternal cameraInternal;
        AdapterCameraInfo adapterCameraInfo;
        Trace.beginSection("CX:bindToLifecycle-internal");
        try {
            Threads.checkMainThread();
            b36 selectorsWithSessionFilter = getSelectorsWithSessionFilter(sessionConfig, cameraSelector, cameraSelector2);
            CameraSelector cameraSelector3 = (CameraSelector) selectorsWithSessionFilter.b;
            CameraSelector cameraSelector4 = (CameraSelector) selectorsWithSessionFilter.c;
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            CameraInternal cameraInternalSelect = cameraSelector3.select(cameraX.getCameraRepository().getCameras());
            cameraInternalSelect.getClass();
            cameraInternalSelect.setPrimary(true);
            CameraInfo cameraInfo = getCameraInfo(cameraSelector3);
            cameraInfo.getClass();
            AdapterCameraInfo adapterCameraInfo2 = (AdapterCameraInfo) cameraInfo;
            if (cameraSelector4 != null) {
                CameraX cameraX2 = this.cameraX;
                cameraX2.getClass();
                CameraInternal cameraInternalSelect2 = cameraSelector4.select(cameraX2.getCameraRepository().getCameras());
                cameraInternalSelect2.setPrimary(false);
                CameraInfo cameraInfo2 = getCameraInfo(cameraSelector4);
                cameraInfo2.getClass();
                adapterCameraInfo = (AdapterCameraInfo) cameraInfo2;
                cameraInternal = cameraInternalSelect2;
            } else {
                cameraInternal = null;
                adapterCameraInfo = null;
            }
            CameraIdentifier cameraIdentifierFromAdapterInfos = CameraIdentifier.Factory.fromAdapterInfos(adapterCameraInfo2, adapterCameraInfo);
            LifecycleCameraRepository lifecycleCameraRepository = this.lifecycleCameraRepository;
            lifecycleCameraRepository.getClass();
            LifecycleCamera lifecycleCamera = lifecycleCameraRepository.getLifecycleCamera(lifecycleOwner, cameraIdentifierFromAdapterInfos);
            LifecycleCameraRepository lifecycleCameraRepository2 = this.lifecycleCameraRepository;
            lifecycleCameraRepository2.getClass();
            Collection<LifecycleCamera> lifecycleCameras = lifecycleCameraRepository2.getLifecycleCameras();
            for (UseCase useCase : sessionConfig.getUseCases()) {
                for (LifecycleCamera lifecycleCamera2 : lifecycleCameras) {
                    lifecycleCamera2.getClass();
                    LifecycleCamera lifecycleCamera3 = lifecycleCamera2;
                    if (lifecycleCamera3.isBound(useCase) && !aa4.e(lifecycleCamera3.getLifecycleOwner(), lifecycleOwner)) {
                        throw new IllegalStateException(String.format("Use case %s already bound to a different lifecycle.", Arrays.copyOf(new Object[]{useCase}, 1)));
                    }
                }
            }
            if (lifecycleCamera == null) {
                LifecycleCameraRepository lifecycleCameraRepository3 = this.lifecycleCameraRepository;
                lifecycleCameraRepository3.getClass();
                CameraX cameraX3 = this.cameraX;
                cameraX3.getClass();
                CameraUseCaseAdapter cameraUseCaseAdapterProvide = cameraX3.getCameraUseCaseAdapterProvider().provide(cameraInternalSelect, cameraInternal, adapterCameraInfo2, adapterCameraInfo, compositionSettings, compositionSettings2);
                CameraX cameraX4 = this.cameraX;
                cameraX4.getClass();
                lifecycleCamera = lifecycleCameraRepository3.createLifecycleCamera(lifecycleOwner, cameraUseCaseAdapterProvide, cameraX4.getRotationProvider());
            }
            if (sessionConfig.getUseCases().isEmpty()) {
                lifecycleCamera.getClass();
            } else {
                LifecycleCameraRepository lifecycleCameraRepository4 = this.lifecycleCameraRepository;
                lifecycleCameraRepository4.getClass();
                lifecycleCamera.getClass();
                CameraX cameraX5 = this.cameraX;
                cameraX5.getClass();
                lifecycleCameraRepository4.bindToLifecycleCamera(lifecycleCamera, sessionConfig, cameraX5.getCameraFactory().getCameraCoordinator());
                this.lifecycleCameraKeys.add(LifecycleCameraRepository.Key.create(lifecycleOwner, cameraIdentifierFromAdapterInfos));
            }
            Trace.endSection();
            return lifecycleCamera;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public static /* synthetic */ Camera bindToLifecycleInternal$default(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, CameraSelector cameraSelector2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, SessionConfig sessionConfig, int i, Object obj) {
        if ((i & 4) != 0) {
            cameraSelector2 = null;
        }
        CameraSelector cameraSelector3 = cameraSelector2;
        if ((i & 8) != 0) {
            compositionSettings = CompositionSettings.DEFAULT;
            compositionSettings.getClass();
        }
        CompositionSettings compositionSettings3 = compositionSettings;
        if ((i & 16) != 0) {
            compositionSettings2 = CompositionSettings.DEFAULT;
            compositionSettings2.getClass();
        }
        return lifecycleCameraProviderImpl.bindToLifecycleInternal(lifecycleOwner, cameraSelector, cameraSelector3, compositionSettings3, compositionSettings2, sessionConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<CameraInfo> getActiveConcurrentCameraInfos() {
        if (!isInitialized()) {
            return kx2.b;
        }
        CameraX cameraX = this.cameraX;
        cameraX.getClass();
        List<CameraInfo> activeConcurrentCameraInfos = cameraX.getCameraFactory().getCameraCoordinator().getActiveConcurrentCameraInfos();
        activeConcurrentCameraInfos.getClass();
        return activeConcurrentCameraInfos;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraConfig getCameraConfig(CameraSelector cameraSelector, CameraInfo cameraInfo) {
        Iterator<CameraFilter> it = cameraSelector.getCameraFilterSet().iterator();
        it.getClass();
        CameraConfig cameraConfig = null;
        while (it.hasNext()) {
            CameraFilter next = it.next();
            next.getClass();
            CameraFilter cameraFilter = next;
            if (!aa4.e(cameraFilter.getIdentifier(), CameraFilter.DEFAULT_ID)) {
                CameraConfigProvider configProvider = ExtendedCameraConfigProviderStore.getConfigProvider(cameraFilter.getIdentifier());
                Context context = this.context;
                context.getClass();
                CameraConfig config = configProvider.getConfig(cameraInfo, context);
                if (config == null) {
                    continue;
                } else {
                    if (cameraConfig != null) {
                        fg.c("Cannot apply multiple extended camera configs at the same time.");
                        return null;
                    }
                    cameraConfig = config;
                }
            }
        }
        return cameraConfig == null ? CameraConfigs.defaultConfig() : cameraConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCameraOperatingMode() {
        if (!isInitialized()) {
            return 0;
        }
        CameraX cameraX = this.cameraX;
        cameraX.getClass();
        return cameraX.getCameraFactory().getCameraCoordinator().getCameraOperatingMode();
    }

    public static /* synthetic */ void getCameraXConfigProvider$camera_lifecycle$annotations() {
    }

    public static /* synthetic */ void getContext$camera_lifecycle$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b36<CameraSelector, CameraSelector> getSelectorsWithSessionFilter(SessionConfig sessionConfig, CameraSelector cameraSelector, CameraSelector cameraSelector2) {
        CameraFilter cameraFilter = sessionConfig.getCameraFilter();
        if (cameraFilter == null) {
            return new b36<>(cameraSelector, cameraSelector2);
        }
        CameraSelector cameraSelectorBuild = CameraSelector.Builder.fromSelector(cameraSelector).addCameraFilter(cameraFilter).build();
        cameraSelectorBuild.getClass();
        return new b36<>(cameraSelectorBuild, cameraSelector2 != null ? CameraSelector.Builder.fromSelector(cameraSelector2).addCameraFilter(cameraFilter).build() : null);
    }

    public static /* synthetic */ ListenableFuture initAsync$camera_lifecycle$default(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, Context context, CameraXConfig cameraXConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            cameraXConfig = null;
        }
        return lifecycleCameraProviderImpl.initAsync$camera_lifecycle(context, cameraXConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture initAsync$lambda$0$1(CameraX cameraX, Void r1) {
        return cameraX.getInitializeFuture();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture initAsync$lambda$0$2(nl3 nl3Var, Object obj) {
        return (ListenableFuture) nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void initAsync$lambda$0$3(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, CameraX cameraX, Context context, Void r3) {
        lifecycleCameraProviderImpl.initInternal(cameraX, ContextUtil.getPersistentApplicationContext(context));
        return r3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void initAsync$lambda$0$4(nl3 nl3Var, Object obj) {
        return (Void) nl3Var.invoke(obj);
    }

    private final void initInternal(CameraX cameraX, Context context) {
        CameraPresenceProvider cameraAvailabilityProvider;
        synchronized (this.lock) {
            this.cameraX = cameraX;
            this.context = context;
            if (cameraX != null && (cameraAvailabilityProvider = cameraX.getCameraAvailabilityProvider()) != null) {
                ScheduledExecutorService scheduledExecutorServiceMainThreadExecutor = CameraXExecutors.mainThreadExecutor();
                scheduledExecutorServiceMainThreadExecutor.getClass();
                cameraAvailabilityProvider.addCameraPresenceListener(this, scheduledExecutorServiceMainThreadExecutor);
                j59 j59Var = j59.a;
            }
        }
    }

    private final boolean isInitialized() {
        return this.cameraX != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPreview(UseCase useCase) {
        return useCase instanceof Preview;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isVideoCapture(UseCase useCase) {
        return useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE) && useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setActiveConcurrentCameraInfos(List<? extends CameraInfo> list) {
        if (isInitialized()) {
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            cameraX.getCameraFactory().getCameraCoordinator().setActiveConcurrentCameraInfos(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCameraOperatingMode(int i) {
        if (isInitialized()) {
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            cameraX.getCameraFactory().getCameraCoordinator().setCameraOperatingMode(i);
        }
    }

    public static /* synthetic */ ListenableFuture shutdownAsync$camera_lifecycle$default(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return lifecycleCameraProviderImpl.shutdownAsync$camera_lifecycle(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void shutdownAsync$lambda$0(LifecycleCameraProviderImpl lifecycleCameraProviderImpl) {
        if (lifecycleCameraProviderImpl.isInitialized()) {
            lifecycleCameraProviderImpl.unbindAll();
            LifecycleCameraRepository lifecycleCameraRepository = lifecycleCameraProviderImpl.lifecycleCameraRepository;
            lifecycleCameraRepository.getClass();
            lifecycleCameraRepository.removeLifecycleCameras(lifecycleCameraProviderImpl.lifecycleCameraKeys);
        }
    }

    private final void shutdownInternal() {
        initInternal(null, null);
    }

    @Override // androidx.camera.core.CameraProvider
    public void addCameraPresenceListener(Executor executor, CameraPresenceListener cameraPresenceListener) {
        executor.getClass();
        cameraPresenceListener.getClass();
        CameraX cameraX = this.cameraX;
        cameraX.getClass();
        cameraX.getCameraAvailabilityProvider().addCameraPresenceListener(cameraPresenceListener, executor);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x01ce A[Catch: all -> 0x0283, TryCatch #0 {all -> 0x0283, blocks: (B:3:0x0008, B:5:0x000f, B:7:0x0015, B:10:0x0046, B:12:0x004c, B:14:0x005a, B:16:0x0070, B:18:0x0086, B:19:0x00b0, B:21:0x00b6, B:22:0x00cb, B:24:0x00d1, B:26:0x00e4, B:27:0x00e8, B:28:0x00f9, B:64:0x0254, B:29:0x0112, B:30:0x0119, B:31:0x011a, B:32:0x011f, B:33:0x0120, B:35:0x0133, B:37:0x0139, B:38:0x013e, B:39:0x0154, B:41:0x0166, B:44:0x0171, B:45:0x0178, B:46:0x0179, B:48:0x0192, B:50:0x01a0, B:52:0x01c5, B:58:0x01dd, B:63:0x0251, B:54:0x01ce, B:56:0x01d4, B:59:0x0215, B:60:0x0219, B:62:0x021f, B:67:0x025d, B:68:0x0264, B:69:0x0265, B:70:0x026a, B:71:0x026b, B:72:0x0272, B:73:0x0273, B:74:0x027a, B:75:0x027b, B:76:0x0282), top: B:80:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x01d4 A[Catch: all -> 0x0283, TryCatch #0 {all -> 0x0283, blocks: (B:3:0x0008, B:5:0x000f, B:7:0x0015, B:10:0x0046, B:12:0x004c, B:14:0x005a, B:16:0x0070, B:18:0x0086, B:19:0x00b0, B:21:0x00b6, B:22:0x00cb, B:24:0x00d1, B:26:0x00e4, B:27:0x00e8, B:28:0x00f9, B:64:0x0254, B:29:0x0112, B:30:0x0119, B:31:0x011a, B:32:0x011f, B:33:0x0120, B:35:0x0133, B:37:0x0139, B:38:0x013e, B:39:0x0154, B:41:0x0166, B:44:0x0171, B:45:0x0178, B:46:0x0179, B:48:0x0192, B:50:0x01a0, B:52:0x01c5, B:58:0x01dd, B:63:0x0251, B:54:0x01ce, B:56:0x01d4, B:59:0x0215, B:60:0x0219, B:62:0x021f, B:67:0x025d, B:68:0x0264, B:69:0x0265, B:70:0x026a, B:71:0x026b, B:72:0x0272, B:73:0x0273, B:74:0x027a, B:75:0x027b, B:76:0x0282), top: B:80:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x021f A[Catch: all -> 0x0283, LOOP:2: B:60:0x0219->B:62:0x021f, LOOP_END, TryCatch #0 {all -> 0x0283, blocks: (B:3:0x0008, B:5:0x000f, B:7:0x0015, B:10:0x0046, B:12:0x004c, B:14:0x005a, B:16:0x0070, B:18:0x0086, B:19:0x00b0, B:21:0x00b6, B:22:0x00cb, B:24:0x00d1, B:26:0x00e4, B:27:0x00e8, B:28:0x00f9, B:64:0x0254, B:29:0x0112, B:30:0x0119, B:31:0x011a, B:32:0x011f, B:33:0x0120, B:35:0x0133, B:37:0x0139, B:38:0x013e, B:39:0x0154, B:41:0x0166, B:44:0x0171, B:45:0x0178, B:46:0x0179, B:48:0x0192, B:50:0x01a0, B:52:0x01c5, B:58:0x01dd, B:63:0x0251, B:54:0x01ce, B:56:0x01d4, B:59:0x0215, B:60:0x0219, B:62:0x021f, B:67:0x025d, B:68:0x0264, B:69:0x0265, B:70:0x026a, B:71:0x026b, B:72:0x0272, B:73:0x0273, B:74:0x027a, B:75:0x027b, B:76:0x0282), top: B:80:0x0008, inners: #1 }] */
    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public ConcurrentCamera bindToLifecycle(List<ConcurrentCamera.SingleCameraConfig> list) {
        list.getClass();
        Trace.beginSection("CX:bindToLifecycle-Concurrent");
        try {
            if (list.size() < 2) {
                throw new IllegalArgumentException("Concurrent camera needs two camera configs.");
            }
            if (list.size() > 2) {
                throw new IllegalArgumentException("Concurrent camera is only supporting two cameras at maximum.");
            }
            ConcurrentCamera.SingleCameraConfig singleCameraConfig = list.get(0);
            singleCameraConfig.getClass();
            ConcurrentCamera.SingleCameraConfig singleCameraConfig2 = singleCameraConfig;
            ConcurrentCamera.SingleCameraConfig singleCameraConfig3 = list.get(1);
            singleCameraConfig3.getClass();
            ConcurrentCamera.SingleCameraConfig singleCameraConfig4 = singleCameraConfig3;
            ArrayList arrayList = new ArrayList();
            if (!aa4.e(singleCameraConfig2.getCameraSelector().getLensFacing(), singleCameraConfig4.getCameraSelector().getLensFacing())) {
                Context context$camera_lifecycle = getContext$camera_lifecycle();
                context$camera_lifecycle.getClass();
                if (!context$camera_lifecycle.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent")) {
                    throw new UnsupportedOperationException("Concurrent camera is not supported on the device.");
                }
                if (getCameraOperatingMode() == 1) {
                    throw new UnsupportedOperationException("Camera is already running, call unbindAll() before binding more cameras.");
                }
                ArrayList arrayList2 = new ArrayList();
                try {
                    CameraSelector cameraSelector = singleCameraConfig2.getCameraSelector();
                    cameraSelector.getClass();
                    CameraInfo cameraInfo = getCameraInfo(cameraSelector);
                    CameraSelector cameraSelector2 = singleCameraConfig4.getCameraSelector();
                    cameraSelector2.getClass();
                    CameraInfo cameraInfo2 = getCameraInfo(cameraSelector2);
                    arrayList2.add(cameraInfo);
                    arrayList2.add(cameraInfo2);
                    if (!getActiveConcurrentCameraInfos().isEmpty() && !arrayList2.equals(getActiveConcurrentCameraInfos())) {
                        throw new UnsupportedOperationException("Cameras are already running, call unbindAll() before binding more cameras.");
                    }
                    setCameraOperatingMode(2);
                    if (Objects.equals(singleCameraConfig2.getUseCaseGroup().getUseCases(), singleCameraConfig4.getUseCaseGroup().getUseCases()) && singleCameraConfig2.getUseCaseGroup().getUseCases().size() == 2) {
                        UseCase useCase = singleCameraConfig2.getUseCaseGroup().getUseCases().get(0);
                        UseCase useCase2 = singleCameraConfig2.getUseCaseGroup().getUseCases().get(1);
                        useCase.getClass();
                        if (isVideoCapture(useCase)) {
                            useCase2.getClass();
                            if (!isPreview(useCase2)) {
                                if (isPreview(useCase)) {
                                    useCase2.getClass();
                                    if (isVideoCapture(useCase2)) {
                                    }
                                }
                                for (ConcurrentCamera.SingleCameraConfig singleCameraConfig5 : list) {
                                    singleCameraConfig5.getClass();
                                    LifecycleOwner lifecycleOwner = singleCameraConfig5.getLifecycleOwner();
                                    lifecycleOwner.getClass();
                                    CameraSelector cameraSelector3 = singleCameraConfig5.getCameraSelector();
                                    cameraSelector3.getClass();
                                    UseCaseGroup useCaseGroup = singleCameraConfig5.getUseCaseGroup();
                                    useCaseGroup.getClass();
                                    arrayList.add(bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector3, null, null, null, new LegacySessionConfig(useCaseGroup), 28, null));
                                }
                            }
                            LifecycleOwner lifecycleOwner2 = singleCameraConfig2.getLifecycleOwner();
                            lifecycleOwner2.getClass();
                            CameraSelector cameraSelector4 = singleCameraConfig2.getCameraSelector();
                            cameraSelector4.getClass();
                            CameraSelector cameraSelector5 = singleCameraConfig4.getCameraSelector();
                            CompositionSettings compositionSettings = singleCameraConfig2.getCompositionSettings();
                            compositionSettings.getClass();
                            CompositionSettings compositionSettings2 = singleCameraConfig4.getCompositionSettings();
                            compositionSettings2.getClass();
                            UseCaseGroup useCaseGroup2 = singleCameraConfig2.getUseCaseGroup();
                            useCaseGroup2.getClass();
                            arrayList.add(bindToLifecycleInternal(lifecycleOwner2, cameraSelector4, cameraSelector5, compositionSettings, compositionSettings2, new LegacySessionConfig(useCaseGroup2)));
                        } else {
                            if (isPreview(useCase)) {
                                useCase2.getClass();
                                if (isVideoCapture(useCase2)) {
                                    LifecycleOwner lifecycleOwner3 = singleCameraConfig2.getLifecycleOwner();
                                    lifecycleOwner3.getClass();
                                    CameraSelector cameraSelector6 = singleCameraConfig2.getCameraSelector();
                                    cameraSelector6.getClass();
                                    CameraSelector cameraSelector7 = singleCameraConfig4.getCameraSelector();
                                    CompositionSettings compositionSettings3 = singleCameraConfig2.getCompositionSettings();
                                    compositionSettings3.getClass();
                                    CompositionSettings compositionSettings4 = singleCameraConfig4.getCompositionSettings();
                                    compositionSettings4.getClass();
                                    UseCaseGroup useCaseGroup3 = singleCameraConfig2.getUseCaseGroup();
                                    useCaseGroup3.getClass();
                                    arrayList.add(bindToLifecycleInternal(lifecycleOwner3, cameraSelector6, cameraSelector7, compositionSettings3, compositionSettings4, new LegacySessionConfig(useCaseGroup3)));
                                }
                            }
                            while (r11.hasNext()) {
                                singleCameraConfig5.getClass();
                                LifecycleOwner lifecycleOwner4 = singleCameraConfig5.getLifecycleOwner();
                                lifecycleOwner4.getClass();
                                CameraSelector cameraSelector8 = singleCameraConfig5.getCameraSelector();
                                cameraSelector8.getClass();
                                UseCaseGroup useCaseGroup4 = singleCameraConfig5.getUseCaseGroup();
                                useCaseGroup4.getClass();
                                arrayList.add(bindToLifecycleInternal$default(this, lifecycleOwner4, cameraSelector8, null, null, null, new LegacySessionConfig(useCaseGroup4), 28, null));
                            }
                        }
                    } else {
                        while (r11.hasNext()) {
                            singleCameraConfig5.getClass();
                            LifecycleOwner lifecycleOwner5 = singleCameraConfig5.getLifecycleOwner();
                            lifecycleOwner5.getClass();
                            CameraSelector cameraSelector9 = singleCameraConfig5.getCameraSelector();
                            cameraSelector9.getClass();
                            UseCaseGroup useCaseGroup5 = singleCameraConfig5.getUseCaseGroup();
                            useCaseGroup5.getClass();
                            arrayList.add(bindToLifecycleInternal$default(this, lifecycleOwner5, cameraSelector9, null, null, null, new LegacySessionConfig(useCaseGroup5), 28, null));
                        }
                    }
                    setActiveConcurrentCameraInfos(arrayList2);
                } catch (IllegalArgumentException unused) {
                    throw new IllegalArgumentException("Invalid camera selectors in camera configs.");
                }
            } else {
                if (getCameraOperatingMode() == 2) {
                    throw new UnsupportedOperationException("Camera is already running, call unbindAll() before binding more cameras.");
                }
                if (!aa4.e(singleCameraConfig2.getLifecycleOwner(), singleCameraConfig4.getLifecycleOwner()) || !aa4.e(singleCameraConfig2.getUseCaseGroup().getViewPort(), singleCameraConfig4.getUseCaseGroup().getViewPort()) || !aa4.e(singleCameraConfig2.getUseCaseGroup().getEffects(), singleCameraConfig4.getUseCaseGroup().getEffects())) {
                    throw new IllegalArgumentException("Two camera configs need to have the same lifecycle owner, view port and effects.");
                }
                LifecycleOwner lifecycleOwner6 = singleCameraConfig2.getLifecycleOwner();
                lifecycleOwner6.getClass();
                CameraSelector cameraSelector10 = singleCameraConfig2.getCameraSelector();
                cameraSelector10.getClass();
                ViewPort viewPort = singleCameraConfig2.getUseCaseGroup().getViewPort();
                List<CameraEffect> effects = singleCameraConfig2.getUseCaseGroup().getEffects();
                effects.getClass();
                ArrayList arrayList3 = new ArrayList();
                for (ConcurrentCamera.SingleCameraConfig singleCameraConfig6 : list) {
                    singleCameraConfig6.getClass();
                    for (UseCase useCase3 : singleCameraConfig6.getUseCaseGroup().getUseCases()) {
                        useCase3.getClass();
                        UseCase useCase4 = useCase3;
                        String physicalCameraId = singleCameraConfig6.getCameraSelector().getPhysicalCameraId();
                        if (physicalCameraId != null) {
                            useCase4.setPhysicalCameraId(physicalCameraId);
                        }
                    }
                    List<UseCase> useCases = singleCameraConfig6.getUseCaseGroup().getUseCases();
                    useCases.getClass();
                    arrayList3.addAll(useCases);
                }
                setCameraOperatingMode(1);
                arrayList.add(bindToLifecycleInternal$default(this, lifecycleOwner6, cameraSelector10, null, null, null, new LegacySessionConfig(arrayList3, viewPort, effects), 28, null));
            }
            ConcurrentCamera concurrentCamera = new ConcurrentCamera(arrayList);
            Trace.endSection();
            return concurrentCamera;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final void configure$camera_lifecycle(final CameraXConfig cameraXConfig) {
        cameraXConfig.getClass();
        Trace.beginSection("CX:configureInstanceInternal");
        try {
            synchronized (this.lock) {
                Preconditions.checkNotNull(cameraXConfig);
                Preconditions.checkState(getCameraXConfigProvider$camera_lifecycle() == null, "CameraX has already been configured. To use a different configuration, shutdown() must be called.");
                setCameraXConfigProvider$camera_lifecycle(new CameraXConfig.Provider() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$configure$1$1$1
                    @Override // androidx.camera.core.CameraXConfig.Provider
                    public final CameraXConfig getCameraXConfig() {
                        return cameraXConfig;
                    }
                });
                j59 j59Var = j59.a;
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.core.CameraProvider
    public List<CameraInfo> getAvailableCameraInfos() {
        Trace.beginSection("CX:getAvailableCameraInfos");
        try {
            ArrayList arrayList = new ArrayList();
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            LinkedHashSet<CameraInternal> cameras = cameraX.getCameraRepository().getCameras();
            cameras.getClass();
            Iterator<CameraInternal> it = cameras.iterator();
            while (it.hasNext()) {
                CameraInfo cameraInfo = it.next().getCameraInfo();
                cameraInfo.getClass();
                arrayList.add(cameraInfo);
            }
            Trace.endSection();
            return arrayList;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.core.CameraProvider
    public List<List<CameraInfo>> getAvailableConcurrentCameraInfos() {
        Trace.beginSection("CX:getAvailableConcurrentCameraInfos");
        try {
            Objects.requireNonNull(this.cameraX);
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            Objects.requireNonNull(cameraX.getCameraFactory().getCameraCoordinator());
            CameraX cameraX2 = this.cameraX;
            cameraX2.getClass();
            List<List<CameraSelector>> concurrentCameraSelectors = cameraX2.getCameraFactory().getCameraCoordinator().getConcurrentCameraSelectors();
            concurrentCameraSelectors.getClass();
            ArrayList arrayList = new ArrayList();
            for (List<CameraSelector> list : concurrentCameraSelectors) {
                ArrayList arrayList2 = new ArrayList();
                for (CameraSelector cameraSelector : list) {
                    try {
                        cameraSelector.getClass();
                        arrayList2.add(getCameraInfo(cameraSelector));
                    } catch (IllegalArgumentException unused) {
                    }
                }
                arrayList.add(arrayList2);
            }
            return arrayList;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.core.CameraProvider
    public CameraInfo getCameraInfo(CameraSelector cameraSelector) {
        Object adapterCameraInfo;
        cameraSelector.getClass();
        Trace.beginSection("CX:getCameraInfo");
        try {
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            CameraInfoInternal cameraInfoInternal = cameraSelector.select(cameraX.getCameraRepository().getCameras()).getCameraInfoInternal();
            cameraInfoInternal.getClass();
            CameraConfig cameraConfig = getCameraConfig(cameraSelector, cameraInfoInternal);
            String cameraId = cameraInfoInternal.getCameraId();
            cameraId.getClass();
            CameraIdentifier cameraIdentifierCreate = CameraIdentifier.Factory.create(cameraId, null, cameraConfig.getCompatibilityId());
            synchronized (this.lock) {
                try {
                    adapterCameraInfo = this.cameraInfoMap.get(cameraIdentifierCreate);
                    if (adapterCameraInfo == null) {
                        adapterCameraInfo = new AdapterCameraInfo(cameraInfoInternal, cameraConfig);
                        this.cameraInfoMap.put(cameraIdentifierCreate, adapterCameraInfo);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            AdapterCameraInfo adapterCameraInfo2 = (AdapterCameraInfo) adapterCameraInfo;
            Trace.endSection();
            return adapterCameraInfo2;
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    public final CameraXConfig.Provider getCameraXConfigProvider$camera_lifecycle() {
        return this.cameraXConfigProvider;
    }

    public final Context getContext$camera_lifecycle() {
        return this.context;
    }

    @Override // androidx.camera.core.CameraProvider
    public boolean hasCamera(CameraSelector cameraSelector) {
        boolean z;
        cameraSelector.getClass();
        Trace.beginSection("CX:hasCamera");
        try {
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            cameraSelector.select(cameraX.getCameraRepository().getCameras());
            z = true;
        } catch (IllegalArgumentException unused) {
            z = false;
        } finally {
            Trace.endSection();
        }
        return z;
    }

    public final ListenableFuture<Void> initAsync$camera_lifecycle(final Context context, CameraXConfig cameraXConfig) {
        context.getClass();
        synchronized (this.lock) {
            try {
                this.lifecycleCameraRepository = LifecycleCameraRepositories.getInstance$camera_lifecycle(ContextUtil.getDeviceId(context));
                ListenableFuture<Void> listenableFuture = this.cameraXInitializeFuture;
                if (listenableFuture != null) {
                    return listenableFuture;
                }
                if (cameraXConfig != null) {
                    configure$camera_lifecycle(cameraXConfig);
                }
                final CameraX cameraX = new CameraX(context, this.cameraXConfigProvider);
                FutureChain futureChainFrom = FutureChain.from(this.cameraXShutdownFuture);
                final i31 i31Var = new i31(cameraX, 2);
                FutureChain futureChainTransform = futureChainFrom.transformAsync(new AsyncFunction() { // from class: ap4
                    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                    public final ListenableFuture apply(Object obj) {
                        return LifecycleCameraProviderImpl.initAsync$lambda$0$2(i31Var, obj);
                    }
                }, CameraXExecutors.directExecutor()).transform(new di(new nl3() { // from class: bp4
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return LifecycleCameraProviderImpl.initAsync$lambda$0$3(this.b, cameraX, context, (Void) obj);
                    }
                }, 4), CameraXExecutors.directExecutor());
                futureChainTransform.getClass();
                this.cameraXInitializeFuture = futureChainTransform;
                Futures.addCallback(futureChainTransform, new FutureCallback<Void>() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$initAsync$1$2
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(Throwable th) {
                        th.getClass();
                        this.this$0.shutdownAsync$camera_lifecycle(false);
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(Void r1) {
                    }
                }, CameraXExecutors.directExecutor());
                ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(futureChainTransform);
                listenableFutureNonCancellationPropagating.getClass();
                return listenableFutureNonCancellationPropagating;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public boolean isBound(UseCase useCase) {
        useCase.getClass();
        LifecycleCameraRepository lifecycleCameraRepository = this.lifecycleCameraRepository;
        lifecycleCameraRepository.getClass();
        for (LifecycleCamera lifecycleCamera : lifecycleCameraRepository.getLifecycleCameras()) {
            lifecycleCamera.getClass();
            if (lifecycleCamera.isBound(useCase)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.CameraProvider
    public boolean isConcurrentCameraModeOn() {
        return getCameraOperatingMode() == 2;
    }

    @Override // androidx.camera.core.CameraPresenceListener
    public void onCamerasAdded(Set<CameraIdentifier> set) {
        set.getClass();
    }

    @Override // androidx.camera.core.CameraPresenceListener
    public void onCamerasRemoved(Set<CameraIdentifier> set) {
        set.getClass();
        Threads.checkMainThread();
        synchronized (this.lock) {
            try {
                for (CameraIdentifier cameraIdentifier : set) {
                    Set<CameraIdentifier> setKeySet = this.cameraInfoMap.keySet();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : setKeySet) {
                        if (aa4.e(((CameraIdentifier) obj).getCameraIds(), cameraIdentifier.getCameraIds())) {
                            arrayList.add(obj);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        this.cameraInfoMap.remove((CameraIdentifier) it.next());
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.CameraProvider
    public void removeCameraPresenceListener(CameraPresenceListener cameraPresenceListener) {
        cameraPresenceListener.getClass();
        CameraX cameraX = this.cameraX;
        cameraX.getClass();
        cameraX.getCameraAvailabilityProvider().removeCameraPresenceListener(cameraPresenceListener);
    }

    public final void setCameraXConfigProvider$camera_lifecycle(CameraXConfig.Provider provider) {
        this.cameraXConfigProvider = provider;
    }

    public final void setContext$camera_lifecycle(Context context) {
        this.context = context;
    }

    public final ListenableFuture<Void> shutdownAsync$camera_lifecycle(boolean z) {
        ListenableFuture<Void> listenableFutureImmediateFuture;
        Threads.runOnMainSync(new tu1(this, 1));
        if (isInitialized()) {
            CameraX cameraX = this.cameraX;
            cameraX.getClass();
            cameraX.getCameraAvailabilityProvider().removeCameraPresenceListener(this);
            CameraX cameraX2 = this.cameraX;
            cameraX2.getClass();
            listenableFutureImmediateFuture = cameraX2.shutdown();
        } else {
            listenableFutureImmediateFuture = Futures.immediateFuture(null);
        }
        listenableFutureImmediateFuture.getClass();
        synchronized (this.lock) {
            if (z) {
                try {
                    this.cameraXConfigProvider = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.cameraXInitializeFuture = null;
            this.cameraXShutdownFuture = listenableFutureImmediateFuture;
            this.cameraInfoMap.clear();
            this.lifecycleCameraKeys.clear();
            j59 j59Var = j59.a;
        }
        shutdownInternal();
        return listenableFutureImmediateFuture;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public void unbind(UseCase... useCaseArr) {
        useCaseArr.getClass();
        Trace.beginSection("CX:unbind");
        try {
            Threads.checkMainThread();
            if (getCameraOperatingMode() == 2) {
                throw new UnsupportedOperationException("Unbind UseCase is not supported in concurrent camera mode, call unbindAll() first.");
            }
            LifecycleCameraRepository lifecycleCameraRepository = this.lifecycleCameraRepository;
            lifecycleCameraRepository.getClass();
            lifecycleCameraRepository.unbind(new LegacySessionConfig(yr.G(useCaseArr), null, null, 6, null), this.lifecycleCameraKeys);
            j59 j59Var = j59.a;
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public void unbindAll() {
        Trace.beginSection("CX:unbindAll");
        try {
            Threads.checkMainThread();
            setCameraOperatingMode(0);
            LifecycleCameraRepository lifecycleCameraRepository = this.lifecycleCameraRepository;
            lifecycleCameraRepository.getClass();
            lifecycleCameraRepository.unbindAll(this.lifecycleCameraKeys);
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public boolean isBound(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        LifecycleCameraRepository lifecycleCameraRepository = this.lifecycleCameraRepository;
        lifecycleCameraRepository.getClass();
        for (LifecycleCamera lifecycleCamera : lifecycleCameraRepository.getLifecycleCameras()) {
            lifecycleCamera.getClass();
            if (lifecycleCamera.isBound(sessionConfig)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public void unbind(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        Trace.beginSection("CX:unbind-sessionConfig");
        try {
            Threads.checkMainThread();
            if (getCameraOperatingMode() != 2) {
                LifecycleCameraRepository lifecycleCameraRepository = this.lifecycleCameraRepository;
                lifecycleCameraRepository.getClass();
                lifecycleCameraRepository.unbind(sessionConfig, this.lifecycleCameraKeys);
                j59 j59Var = j59.a;
                Trace.endSection();
                return;
            }
            throw new UnsupportedOperationException("Unbind SessionConfig is not supported in concurrent camera mode call unbindAll() first.");
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.core.CameraProvider
    public CameraInfo getCameraInfo(CameraSelector cameraSelector, SessionConfig sessionConfig) {
        cameraSelector.getClass();
        sessionConfig.getClass();
        CameraFilter cameraFilter = sessionConfig.getCameraFilter();
        if (cameraFilter != null) {
            CameraSelector cameraSelectorBuild = CameraSelector.Builder.fromSelector(cameraSelector).addCameraFilter(cameraFilter).build();
            cameraSelectorBuild.getClass();
            CameraInfo cameraInfo = getCameraInfo(cameraSelectorBuild);
            if (cameraInfo != null) {
                return cameraInfo;
            }
        }
        return getCameraInfo(cameraSelector);
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCaseGroup useCaseGroup) {
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        useCaseGroup.getClass();
        Trace.beginSection("CX:bindToLifecycle-UseCaseGroup");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                Camera cameraBindToLifecycleInternal$default = bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector, null, null, null, new LegacySessionConfig(useCaseGroup), 28, null);
                Trace.endSection();
                return cameraBindToLifecycleInternal$default;
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first.");
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, SessionConfig sessionConfig) {
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        sessionConfig.getClass();
        Trace.beginSection("CX:bindToLifecycle-SessionConfig");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                Camera cameraBindToLifecycleInternal$default = bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector, null, null, null, sessionConfig, 28, null);
                Trace.endSection();
                return cameraBindToLifecycleInternal$default;
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first.");
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCase... useCaseArr) {
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        useCaseArr.getClass();
        Trace.beginSection("CX:bindToLifecycle");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                Camera cameraBindToLifecycleInternal$default = bindToLifecycleInternal$default(this, lifecycleOwner, cameraSelector, null, null, null, new LegacySessionConfig(yr.G(useCaseArr), null, null, 6, null), 28, null);
                Trace.endSection();
                return cameraBindToLifecycleInternal$default;
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first");
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}
