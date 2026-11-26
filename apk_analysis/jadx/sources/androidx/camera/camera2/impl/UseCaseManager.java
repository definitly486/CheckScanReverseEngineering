package androidx.camera.camera2.impl;

import android.content.Context;
import android.media.MediaCodec;
import android.util.Pair;
import android.util.Size;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.config.UseCaseCameraComponent;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.internal.DynamicRangeResolver;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.ca2;
import defpackage.e02;
import defpackage.j59;
import defpackage.kx2;
import defpackage.mb4;
import defpackage.n99;
import defpackage.nl3;
import defpackage.oz;
import defpackage.qn1;
import defpackage.u;
import defpackage.u96;
import defpackage.ws6;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class UseCaseManager {
    private volatile UseCaseCameraComponent _activeComponent;
    private boolean activeResumeEnabled;
    private final Set<UseCase> activeUseCases;
    private final Set<UseCaseCameraControl> allControls;
    private final Set<UseCase> attachedUseCases;
    private final UseCaseCameraComponent.Builder builder;
    private final Camera2CameraControl camera2CameraControl;
    private final CameraCoordinator cameraCoordinator;
    private final CameraGraphConfigProvider cameraGraphConfigProvider;
    private final ws6<CameraInfoInternal> cameraInfoInternal;
    private final ws6<CameraInternal> cameraInternal;
    private final CameraPipe cameraPipe;
    private final CameraProperties cameraProperties;
    private final CameraStateAdapter cameraStateAdapter;
    private final CameraXConfig cameraXConfig;
    private final List<mb4> closingCameraJobs;
    private final Set<UseCaseCameraControl> controls;
    private final nl3<CameraGraph.Config, CameraGraph> defaultCameraGraphFactory;
    private UseCaseCameraConfig deferredUseCaseCameraConfig;
    private final DynamicRangeResolver dynamicRangeResolver;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private boolean isPrimary;
    private final Object lock;
    private final LowLightBoostControl lowLightBoostControl;
    private final MeteringRepeating meteringRepeating;
    private final Set<UseCase> pendingUseCasesToNotifyCameraControlReady;
    private SessionProcessor sessionProcessor;
    private boolean shouldCreateCameraGraphImmediately;
    private final SupportedSurfaceCombination supportedSurfaceCombination;
    private final ws6<UseCaseThreads> useCaseThreads;
    private final ZslControl zslControl;

    public interface RunningUseCasesChangeListener {
        void onRunningUseCasesChanged(Set<? extends UseCase> set);
    }

    public UseCaseManager(CameraPipe cameraPipe, CameraCoordinator cameraCoordinator, UseCaseCameraComponent.Builder builder, ZslControl zslControl, LowLightBoostControl lowLightBoostControl, Set<UseCaseCameraControl> set, Camera2CameraControl camera2CameraControl, CameraStateAdapter cameraStateAdapter, ws6<CameraInternal> ws6Var, ws6<UseCaseThreads> ws6Var2, ws6<CameraInfoInternal> ws6Var3, EncoderProfilesProvider encoderProfilesProvider, CameraProperties cameraProperties, CameraXConfig cameraXConfig, CameraGraphConfigProvider cameraGraphConfigProvider, Context context, DisplayInfoManager displayInfoManager) {
        cameraPipe.getClass();
        cameraCoordinator.getClass();
        builder.getClass();
        zslControl.getClass();
        lowLightBoostControl.getClass();
        set.getClass();
        camera2CameraControl.getClass();
        cameraStateAdapter.getClass();
        ws6Var.getClass();
        ws6Var2.getClass();
        ws6Var3.getClass();
        encoderProfilesProvider.getClass();
        cameraProperties.getClass();
        cameraXConfig.getClass();
        cameraGraphConfigProvider.getClass();
        context.getClass();
        displayInfoManager.getClass();
        this.cameraPipe = cameraPipe;
        this.cameraCoordinator = cameraCoordinator;
        this.builder = builder;
        this.zslControl = zslControl;
        this.lowLightBoostControl = lowLightBoostControl;
        this.controls = set;
        this.camera2CameraControl = camera2CameraControl;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraInternal = ws6Var;
        this.useCaseThreads = ws6Var2;
        this.cameraInfoInternal = ws6Var3;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.cameraProperties = cameraProperties;
        this.cameraXConfig = cameraXConfig;
        this.cameraGraphConfigProvider = cameraGraphConfigProvider;
        this.lock = new Object();
        this.attachedUseCases = new LinkedHashSet();
        this.activeUseCases = new LinkedHashSet();
        this.shouldCreateCameraGraphImmediately = true;
        this.isPrimary = true;
        this.pendingUseCasesToNotifyCameraControlReady = new LinkedHashSet();
        this.meteringRepeating = new MeteringRepeating.Builder(cameraProperties, displayInfoManager).build();
        this.supportedSurfaceCombination = new SupportedSurfaceCombination(context, cameraProperties.getMetadata(), encoderProfilesProvider, FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY);
        this.dynamicRangeResolver = new DynamicRangeResolver(cameraProperties.getMetadata());
        this.defaultCameraGraphFactory = new ca2(this, 3);
        this.closingCameraJobs = new ArrayList();
        Set<UseCaseCameraControl> setX0 = qn1.x0(set);
        setX0.add(camera2CameraControl);
        this.allControls = setX0;
    }

    private final boolean addOrRemoveRepeatingUseCase(Set<? extends UseCase> set) {
        if (shouldAddRepeatingUseCase(set)) {
            addRepeatingUseCase();
            return true;
        }
        if (!shouldRemoveRepeatingUseCase(set)) {
            return false;
        }
        removeRepeatingUseCase();
        return true;
    }

    private final void addRepeatingUseCase() {
        this.meteringRepeating.bindToCamera(this.cameraInternal.get(), null, null, null);
        this.meteringRepeating.setupSession();
        attach(u96.h(this.meteringRepeating));
        activate(this.meteringRepeating);
    }

    private final void beginComponentCreation(UseCaseCameraConfig useCaseCameraConfig) {
        this._activeComponent = this.builder.config(useCaseCameraConfig).build();
        UseCaseCamera camera = getCamera();
        if (camera == null) {
            ah.f("Required value was null.");
            return;
        }
        camera.start();
        Iterator<UseCaseCameraControl> it = this.allControls.iterator();
        while (it.hasNext()) {
            it.next().setRequestControl(camera.getRequestControl());
        }
        camera.setActiveResumeMode(this.activeResumeEnabled);
        updateRunningUseCases(getRunningUseCases());
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Notifying " + this.pendingUseCasesToNotifyCameraControlReady + " camera control ready");
        }
        Iterator<UseCase> it2 = this.pendingUseCasesToNotifyCameraControlReady.iterator();
        while (it2.hasNext()) {
            it2.next().onCameraControlReady();
        }
        this.pendingUseCasesToNotifyCameraControlReady.clear();
    }

    private final void closeCurrentUseCases() {
        mb4 mb4VarClose;
        UseCaseCamera camera = getCamera();
        this._activeComponent = null;
        this.cameraCoordinator.removePendingCameraInfo(this.cameraInfoInternal.get());
        if (camera != null && (mb4VarClose = camera.close()) != null) {
            this.closingCameraJobs.add(mb4VarClose);
            mb4VarClose.g(new n99(0, this, mb4VarClose));
        }
        SessionProcessor sessionProcessor$camera_camera2 = getSessionProcessor$camera_camera2();
        if (sessionProcessor$camera_camera2 != null) {
            sessionProcessor$camera_camera2.deInitSession();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 closeCurrentUseCases$lambda$0$0$0(UseCaseManager useCaseManager, mb4 mb4Var, Throwable th) {
        synchronized (useCaseManager.lock) {
            useCaseManager.closingCameraJobs.remove(mb4Var);
        }
        return j59.a;
    }

    private final SurfaceConfig createMeteringRepeatingSurfaceConfig() {
        SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
        int cameraMode = getCameraMode();
        int imageFormat = this.meteringRepeating.getImageFormat();
        Size attachedSurfaceResolution = this.meteringRepeating.getAttachedSurfaceResolution();
        attachedSurfaceResolution.getClass();
        StreamUseCase streamUseCase = this.meteringRepeating.getCurrentConfig().getStreamUseCase();
        streamUseCase.getClass();
        return supportedSurfaceCombination.transformSurfaceConfig(cameraMode, imageFormat, attachedSurfaceResolution, streamUseCase);
    }

    public static /* synthetic */ UseCaseCameraConfig createUseCaseCameraConfig$camera_camera2$default(UseCaseManager useCaseManager, SessionConfigAdapter sessionConfigAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return useCaseManager.createUseCaseCameraConfig$camera_camera2(sessionConfigAdapter, graphStateToCameraStateAdapter, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph defaultCameraGraphFactory$lambda$0(UseCaseManager useCaseManager, CameraGraph.Config config) {
        config.getClass();
        return useCaseManager.cameraPipe.createCameraGraph(config);
    }

    private final List<AttachedSurfaceInfo> getAttachedSurfaceInfoList(Collection<? extends UseCase> collection) {
        ArrayList arrayList = new ArrayList();
        for (UseCase useCase : collection) {
            Size attachedSurfaceResolution = useCase.getAttachedSurfaceResolution();
            StreamSpec attachedStreamSpec = useCase.getAttachedStreamSpec();
            if (attachedSurfaceResolution == null || attachedStreamSpec == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid surface resolution or stream spec is found.");
                }
                arrayList.clear();
                break;
            }
            SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
            int cameraMode = getCameraMode();
            int inputFormat = useCase.getCurrentConfig().getInputFormat();
            StreamUseCase streamUseCase = useCase.getCurrentConfig().getStreamUseCase();
            streamUseCase.getClass();
            SurfaceConfig surfaceConfigTransformSurfaceConfig = supportedSurfaceCombination.transformSurfaceConfig(cameraMode, inputFormat, attachedSurfaceResolution, streamUseCase);
            int inputFormat2 = useCase.getCurrentConfig().getInputFormat();
            DynamicRange dynamicRange = attachedStreamSpec.getDynamicRange();
            List<UseCaseConfigFactory.CaptureType> captureTypes = getCaptureTypes(useCase);
            Config implementationOptions = attachedStreamSpec.getImplementationOptions();
            if (implementationOptions == null) {
                implementationOptions = MutableOptionsBundle.create();
                implementationOptions.getClass();
            }
            AttachedSurfaceInfo attachedSurfaceInfoCreate = AttachedSurfaceInfo.create(surfaceConfigTransformSurfaceConfig, inputFormat2, attachedSurfaceResolution, dynamicRange, captureTypes, implementationOptions, attachedStreamSpec.getSessionType(), attachedStreamSpec.getExpectedFrameRateRange(), useCase.getCurrentConfig().isStrictFrameRateRequired(), useCase.getCurrentConfig().getCustomMaxFrameRate(attachedSurfaceResolution));
            attachedSurfaceInfoCreate.getClass();
            arrayList.add(attachedSurfaceInfoCreate);
        }
        return arrayList;
    }

    private final int getCameraMode() {
        synchronized (this.lock) {
            if (this.cameraCoordinator.getCameraOperatingMode() == 2) {
                return 1;
            }
            j59 j59Var = j59.a;
            return 0;
        }
    }

    private final List<UseCaseConfigFactory.CaptureType> getCaptureTypes(UseCase useCase) {
        if (!(useCase instanceof StreamSharing)) {
            return u96.h(useCase.getCurrentConfig().getCaptureType());
        }
        UseCaseConfig<?> currentConfig = ((StreamSharing) useCase).getCurrentConfig();
        currentConfig.getClass();
        List<UseCaseConfigFactory.CaptureType> captureTypes = ((StreamSharingConfig) currentConfig).getCaptureTypes();
        captureTypes.getClass();
        return captureTypes;
    }

    private final int getRequiredMaxBitDepth(List<? extends AttachedSurfaceInfo> list) {
        Iterator<Map.Entry<UseCaseConfig<?>, DynamicRange>> it = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(list, u96.h(this.meteringRepeating.getCurrentConfig()), u96.h(0)).entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().getBitDepth() == 10) {
                return 10;
            }
        }
        return 8;
    }

    private final Set<UseCase> getRunningUseCases() {
        return qn1.X(this.attachedUseCases, this.activeUseCases);
    }

    private final List<SurfaceConfig> getSessionSurfacesConfigs(Collection<? extends UseCase> collection) {
        ArrayList arrayList = new ArrayList();
        for (UseCase useCase : collection) {
            List<DeferrableSurface> surfaces = useCase.getSessionConfig().getSurfaces();
            surfaces.getClass();
            for (DeferrableSurface deferrableSurface : surfaces) {
                SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
                int cameraMode = getCameraMode();
                int inputFormat = useCase.getCurrentConfig().getInputFormat();
                Size prescribedSize = deferrableSurface.getPrescribedSize();
                prescribedSize.getClass();
                StreamUseCase streamUseCase = useCase.getCurrentConfig().getStreamUseCase();
                streamUseCase.getClass();
                arrayList.add(supportedSurfaceCombination.transformSurfaceConfig(cameraMode, inputFormat, prescribedSize, streamUseCase));
            }
        }
        return arrayList;
    }

    private final boolean isMeteringCombinationSupported(Collection<? extends UseCase> collection) {
        if (this.meteringRepeating.getAttachedSurfaceResolution() == null) {
            this.meteringRepeating.setupSession();
        }
        List<AttachedSurfaceInfo> attachedSurfaceInfoList = getAttachedSurfaceInfoList(collection);
        if (attachedSurfaceInfoList.isEmpty()) {
            return false;
        }
        List<SurfaceConfig> sessionSurfacesConfigs = getSessionSurfacesConfigs(collection);
        SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
        SupportedSurfaceCombination.FeatureSettings featureSettings = new SupportedSurfaceCombination.FeatureSettings(getCameraMode(), getRequiredMaxBitDepth(attachedSurfaceInfoList), UseCaseUtil.containsVideoCapture(collection), UseCaseUtil.getVideoStabilization$default(collection, null, 1, null), isUltraHdrOn(collection), false, false, false, null, false, 992, null);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(sessionSurfacesConfigs);
        arrayList.add(createMeteringRepeatingSurfaceConfig());
        j59 j59Var = j59.a;
        boolean zCheckSupported$default = SupportedSurfaceCombination.checkSupported$default(supportedSurfaceCombination, featureSettings, arrayList, null, null, null, 28, null);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Combination of " + sessionSurfacesConfigs + " + " + this.meteringRepeating + " is supported: " + zCheckSupported$default);
        }
        return zCheckSupported$default;
    }

    private final boolean isMeteringRepeatingRequired(Set<? extends UseCase> set) {
        if (!this.cameraXConfig.isRepeatingStreamForced()) {
            return false;
        }
        Set<? extends UseCase> set2 = set;
        if (!(set2 instanceof Collection) || !set2.isEmpty()) {
            for (UseCase useCase : set2) {
                if (!aa4.e(useCase, this.meteringRepeating)) {
                    List<DeferrableSurface> surfaces = useCase.getSessionConfig().getSurfaces();
                    surfaces.getClass();
                    if (!surfaces.isEmpty()) {
                        Set<UseCase> set3 = this.attachedUseCases;
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : set3) {
                            if (!aa4.e((UseCase) obj, this.meteringRepeating)) {
                                arrayList.add(obj);
                            }
                        }
                        if (!arrayList.isEmpty() && shouldForceRepeatingStream(arrayList) && isMeteringCombinationSupported(arrayList)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean isUltraHdrOn(Collection<? extends UseCase> collection) {
        UseCaseConfig<?> currentConfig;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof ImageCapture) {
                arrayList.add(obj);
            }
        }
        ImageCapture imageCapture = (ImageCapture) qn1.V(arrayList);
        return (imageCapture == null || (currentConfig = imageCapture.getCurrentConfig()) == null || currentConfig.getInputFormat() != 4101) ? false : true;
    }

    private final void refreshAttachedUseCases(Set<? extends UseCase> set) {
        Pair<Integer, Integer> implementationType;
        Integer num;
        closeCurrentUseCases();
        List listT0 = qn1.t0(set);
        if (listT0.isEmpty()) {
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                useCaseCameraControl.setRequestControl(null);
                useCaseCameraControl.reset();
            }
            return;
        }
        if (!this.shouldCreateCameraGraphImmediately) {
            Iterator<UseCaseCameraControl> it = this.allControls.iterator();
            while (it.hasNext()) {
                it.next().setRequestControl(null);
            }
        }
        GraphStateToCameraStateAdapter graphStateToCameraStateAdapter = new GraphStateToCameraStateAdapter(this.cameraStateAdapter);
        SessionProcessor sessionProcessor$camera_camera2 = getSessionProcessor$camera_camera2();
        boolean z = false;
        if (sessionProcessor$camera_camera2 != null && (implementationType = sessionProcessor$camera_camera2.getImplementationType()) != null && (num = (Integer) implementationType.first) != null && num.intValue() == 1) {
            z = true;
        }
        SessionConfigAdapter sessionConfigAdapter = new SessionConfigAdapter(listT0, this.isPrimary);
        if (z) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Setting up UseCaseManager with OperatingMode.EXTENSION");
            }
            SessionProcessor sessionProcessor$camera_camera3 = getSessionProcessor$camera_camera2();
            sessionProcessor$camera_camera3.getClass();
            sessionProcessor$camera_camera3.initSession(this.cameraInfoInternal.get(), null);
        }
        tryResumeUseCaseManager(createUseCaseCameraConfig$camera_camera2(sessionConfigAdapter, graphStateToCameraStateAdapter, z));
    }

    private final void refreshRunningUseCases() {
        if (this.attachedUseCases.isEmpty()) {
            return;
        }
        Set<UseCase> runningUseCases = getRunningUseCases();
        if (shouldAddRepeatingUseCase(runningUseCases)) {
            addRepeatingUseCase();
        } else if (shouldRemoveRepeatingUseCase(runningUseCases)) {
            removeRepeatingUseCase();
        } else {
            updateRunningUseCases(runningUseCases);
        }
    }

    private final void removeRepeatingUseCase() {
        deactivate(this.meteringRepeating);
        detach(u96.h(this.meteringRepeating));
        this.meteringRepeating.unbindFromCamera(this.cameraInternal.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph resumeDeferredComponentCreation$lambda$0$0(CameraGraph cameraGraph, CameraGraph.Config config) {
        config.getClass();
        return cameraGraph;
    }

    private final boolean shouldAddRepeatingUseCase(Set<? extends UseCase> set) {
        return this.cameraXConfig.isRepeatingStreamForced() && !this.attachedUseCases.contains(this.meteringRepeating) && isMeteringRepeatingRequired(set);
    }

    private final boolean shouldForceRepeatingStream(Collection<? extends UseCase> collection) {
        boolean z;
        if (collection.isEmpty()) {
            return false;
        }
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(((UseCase) it.next()).getSessionConfig());
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        sessionConfigBuild.getClass();
        List<DeferrableSurface> surfaces = sessionConfigBuild.getRepeatingCaptureConfig().getSurfaces();
        surfaces.getClass();
        List<DeferrableSurface> surfaces2 = sessionConfigBuild.getSurfaces();
        surfaces2.getClass();
        if (surfaces2.isEmpty()) {
            return false;
        }
        List<DeferrableSurface> list = surfaces2;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                if (!aa4.e(((DeferrableSurface) it2.next()).getContainerClass(), MediaCodec.class)) {
                    z = false;
                    break;
                }
            }
        } else {
            z = true;
            break;
        }
        return z || surfaces.isEmpty();
    }

    private final boolean shouldRemoveRepeatingUseCase(Set<? extends UseCase> set) {
        return set.contains(this.meteringRepeating) && !isMeteringRepeatingRequired(set);
    }

    private final void tryResumeUseCaseManager(UseCaseCameraConfig useCaseCameraConfig) {
        if (this.shouldCreateCameraGraphImmediately) {
            beginComponentCreation(useCaseCameraConfig);
        } else {
            this.deferredUseCaseCameraConfig = useCaseCameraConfig;
            this.cameraCoordinator.addPendingCameraInfo(this.cameraInfoInternal.get());
        }
    }

    private final void updateRunningUseCases(Set<? extends UseCase> set) {
        UseCaseCamera camera = getCamera();
        if (camera != null) {
            camera.updateRepeatingRequestAsync(this.isPrimary, set);
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                if (useCaseCameraControl instanceof RunningUseCasesChangeListener) {
                    ((RunningUseCasesChangeListener) useCaseCameraControl).onRunningUseCasesChanged(set);
                }
            }
        }
    }

    private final void updateZslDisabledByUseCaseConfigStatus() {
        Set<UseCase> set = this.attachedUseCases;
        boolean z = false;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                if (((UseCase) it.next()).getCurrentConfig().isZslDisabled(false)) {
                    z = true;
                    break;
                }
            }
        }
        this.zslControl.setZslDisabledByUserCaseConfig(z);
    }

    public final void activate(UseCase useCase) {
        useCase.getClass();
        synchronized (this.lock) {
            try {
                if (this.activeUseCases.add(useCase)) {
                    refreshRunningUseCases();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void attach(List<? extends UseCase> list) {
        list.getClass();
        synchronized (this.lock) {
            if (list.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Attach [] from " + this + " (Ignored)");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Attaching " + list + " from " + this);
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!this.attachedUseCases.contains((UseCase) obj)) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((UseCase) it.next()).onSessionStart();
            }
            if (this.attachedUseCases.addAll(list) && !addOrRemoveRepeatingUseCase(getRunningUseCases())) {
                updateZslDisabledByUseCaseConfigStatus();
                this.lowLightBoostControl.onSessionConfigChanged(qn1.t0(this.attachedUseCases));
                refreshAttachedUseCases(this.attachedUseCases);
            }
            if (this.shouldCreateCameraGraphImmediately) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((UseCase) it2.next()).onCameraControlReady();
                }
            } else {
                this.pendingUseCasesToNotifyCameraControlReady.addAll(arrayList);
            }
            j59 j59Var = j59.a;
        }
    }

    public final Object close(e02<? super j59> e02Var) {
        List listT0;
        synchronized (this.lock) {
            closeCurrentUseCases();
            this.meteringRepeating.onUnbind();
            listT0 = qn1.t0(this.closingCameraJobs);
        }
        Object objB = oz.b(listT0, e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    public final UseCaseCameraConfig createUseCaseCameraConfig$camera_camera2(SessionConfigAdapter sessionConfigAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, boolean z) {
        sessionConfigAdapter.getClass();
        graphStateToCameraStateAdapter.getClass();
        return UseCaseCameraConfig.Companion.create(sessionConfigAdapter, this.cameraGraphConfigProvider, this.defaultCameraGraphFactory, graphStateToCameraStateAdapter, getSessionProcessor$camera_camera2(), z);
    }

    public final void deactivate(UseCase useCase) {
        useCase.getClass();
        synchronized (this.lock) {
            try {
                if (this.activeUseCases.remove(useCase)) {
                    refreshRunningUseCases();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void detach(List<? extends UseCase> list) {
        list.getClass();
        synchronized (this.lock) {
            if (list.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Detaching [] from " + this + " (Ignored)");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Detaching " + list + " from " + this);
            }
            this.activeUseCases.removeAll(list);
            for (UseCase useCase : list) {
                if (this.attachedUseCases.contains(useCase)) {
                    useCase.onSessionStop();
                }
            }
            if (this.attachedUseCases.removeAll(list)) {
                if (addOrRemoveRepeatingUseCase(getRunningUseCases())) {
                    return;
                }
                if (this.attachedUseCases.isEmpty()) {
                    this.zslControl.setZslDisabledByUserCaseConfig(false);
                    this.lowLightBoostControl.onSessionConfigChanged(kx2.b);
                } else {
                    updateZslDisabledByUseCaseConfigStatus();
                    this.lowLightBoostControl.onSessionConfigChanged(qn1.t0(this.attachedUseCases));
                }
                refreshAttachedUseCases(this.attachedUseCases);
            }
            this.pendingUseCasesToNotifyCameraControlReady.removeAll(list);
            j59 j59Var = j59.a;
        }
    }

    public final UseCaseCamera getCamera() {
        UseCaseCameraComponent useCaseCameraComponent = this._activeComponent;
        if (useCaseCameraComponent != null) {
            return useCaseCameraComponent.getUseCaseCamera();
        }
        return null;
    }

    public final CameraGraph.Config getDeferredCameraGraphConfig$camera_camera2() {
        CameraGraph.Config cameraGraphConfig;
        synchronized (this.lock) {
            UseCaseCameraConfig useCaseCameraConfig = this.deferredUseCaseCameraConfig;
            cameraGraphConfig = useCaseCameraConfig != null ? useCaseCameraConfig.getCameraGraphConfig() : null;
        }
        return cameraGraphConfig;
    }

    public final Set<UseCase> getRunningUseCasesForTest() {
        Set<UseCase> runningUseCases;
        synchronized (this.lock) {
            runningUseCases = getRunningUseCases();
        }
        return runningUseCases;
    }

    public final SessionProcessor getSessionProcessor$camera_camera2() {
        SessionProcessor sessionProcessor;
        synchronized (this.lock) {
            sessionProcessor = this.sessionProcessor;
        }
        return sessionProcessor;
    }

    public final UseCaseGraphContext getUseCaseGraphContext() {
        UseCaseCameraComponent useCaseCameraComponent = this._activeComponent;
        if (useCaseCameraComponent != null) {
            return useCaseCameraComponent.getUseCaseGraphContext();
        }
        return null;
    }

    public final void reset(UseCase useCase) {
        useCase.getClass();
        synchronized (this.lock) {
            try {
                if (this.attachedUseCases.contains(useCase)) {
                    refreshAttachedUseCases(this.attachedUseCases);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void resumeDeferredComponentCreation$camera_camera2(CameraGraph cameraGraph) {
        cameraGraph.getClass();
        synchronized (this.lock) {
            UseCaseCameraConfig useCaseCameraConfig = this.deferredUseCaseCameraConfig;
            if (useCaseCameraConfig == null) {
                throw new IllegalStateException("Required value was null.");
            }
            beginComponentCreation(UseCaseCameraConfig.copy$default(useCaseCameraConfig, new u(cameraGraph, 4), null, null, null, null, 30, null));
            j59 j59Var = j59.a;
        }
    }

    public final j59 setActiveResumeMode(boolean z) {
        j59 j59Var;
        synchronized (this.lock) {
            this.activeResumeEnabled = z;
            UseCaseCamera camera = getCamera();
            if (camera != null) {
                camera.setActiveResumeMode(z);
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
        }
        return j59Var;
    }

    public final void setCameraGraphCreationMode$camera_camera2(boolean z) {
        synchronized (this.lock) {
            try {
                this.shouldCreateCameraGraphImmediately = z;
                if (z) {
                    this.deferredUseCaseCameraConfig = null;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setPrimary(boolean z) {
        synchronized (this.lock) {
            this.isPrimary = z;
            j59 j59Var = j59.a;
        }
    }

    public final void setSessionProcessor$camera_camera2(SessionProcessor sessionProcessor) {
        synchronized (this.lock) {
            this.sessionProcessor = sessionProcessor;
            j59 j59Var = j59.a;
        }
    }

    public String toString() {
        return "UseCaseManager<" + this.cameraGraphConfigProvider + '>';
    }

    public final void update(UseCase useCase) {
        useCase.getClass();
        synchronized (this.lock) {
            try {
                if (this.attachedUseCases.contains(useCase)) {
                    refreshRunningUseCases();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
