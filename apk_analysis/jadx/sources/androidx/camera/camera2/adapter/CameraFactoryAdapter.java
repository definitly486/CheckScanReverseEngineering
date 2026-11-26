package androidx.camera.camera2.adapter;

import android.content.Context;
import android.os.Trace;
import androidx.camera.camera2.adapter.CameraFactoryAdapter;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraAppConfig;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.config.DaggerCameraAppComponent;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import androidx.camera.camera2.internal.CameraCompatibilityFilter;
import androidx.camera.camera2.internal.CameraSelectionOptimizer;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.internal.StreamSpecsCalculator;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.hd3;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.ox2;
import defpackage.qn1;
import defpackage.z22;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class CameraFactoryAdapter implements CameraFactory, CameraFactory.Interrogator {
    private final cl4 appComponent$delegate;
    private Set<String> availableCameraIds;
    private final CameraSelector availableCamerasSelector;
    private final CameraCoordinatorAdapter cameraCoordinator;
    private final CameraXConfig cameraXConfig;
    private final AtomicBoolean isShutdown;
    private final cl4<CameraPipe> lazyCameraPipe;
    private final Object lock;
    private final PipeCameraPresenceSource pipeCameraPresenceObservable;
    private final StreamSpecsCalculator streamSpecsCalculator;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.camera.camera2.adapter.CameraFactoryAdapter] */
    /* JADX WARN: Type inference failed for: r1v0, types: [cl4, cl4<? extends androidx.camera.camera2.pipe.CameraPipe>, cl4<androidx.camera.camera2.pipe.CameraPipe>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [kx2] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.ArrayList] */
    public CameraFactoryAdapter(cl4<? extends CameraPipe> cl4Var, final Context context, final CameraThreadConfig cameraThreadConfig, final CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository, CameraSelector cameraSelector, StreamSpecsCalculator streamSpecsCalculator, CameraXConfig cameraXConfig) {
        ?? arrayList;
        cl4Var.getClass();
        context.getClass();
        cameraThreadConfig.getClass();
        cameraInteropStateCallbackRepository.getClass();
        streamSpecsCalculator.getClass();
        cameraXConfig.getClass();
        this.lazyCameraPipe = cl4Var;
        this.availableCamerasSelector = cameraSelector;
        this.streamSpecsCalculator = streamSpecsCalculator;
        this.cameraXConfig = cameraXConfig;
        this.cameraCoordinator = new CameraCoordinatorAdapter((CameraPipe) cl4Var.getValue(), ((CameraPipe) cl4Var.getValue()).cameras());
        this.appComponent$delegate = new fh8(new ll3() { // from class: x01
            @Override // defpackage.ll3
            public final Object invoke() {
                return CameraFactoryAdapter.appComponent_delegate$lambda$0(context, cameraThreadConfig, this, cameraInteropStateCallbackRepository);
            }
        });
        this.availableCameraIds = ox2.b;
        this.lock = new Object();
        this.isShutdown = new AtomicBoolean(false);
        List listM236awaitCameraIdsSeavPBo$default = CameraDevices.m236awaitCameraIdsSeavPBo$default(getAppComponent().getCameraDevices(), null, 1, null);
        if (listM236awaitCameraIdsSeavPBo$default != null) {
            List list = listM236awaitCameraIdsSeavPBo$default;
            arrayList = new ArrayList(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((CameraId) it.next()).m358unboximpl());
            }
        } else {
            arrayList = kx2.b;
        }
        hd3 hd3VarM239cameraIdsFlowSeavPBo$default = CameraDevices.m239cameraIdsFlowSeavPBo$default(this.lazyCameraPipe.getValue().cameras(), null, 1, null);
        Executor cameraExecutor = cameraThreadConfig.getCameraExecutor();
        cameraExecutor.getClass();
        this.pipeCameraPresenceObservable = new PipeCameraPresenceSource(hd3VarM239cameraIdsFlowSeavPBo$default, z22.a(aq5.x(cameraExecutor)), arrayList, context);
        onCameraIdsUpdated(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraAppComponent appComponent_delegate$lambda$0(Context context, CameraThreadConfig cameraThreadConfig, CameraFactoryAdapter cameraFactoryAdapter, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("CameraFactoryAdapter#appComponent");
        SystemTimeSource systemTimeSource = new SystemTimeSource();
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo855nowvQl9yQU = systemTimeSource.mo855nowvQl9yQU();
        CameraAppComponent cameraAppComponentBuild = DaggerCameraAppComponent.builder().config(new CameraAppConfig(context, cameraThreadConfig, cameraFactoryAdapter.lazyCameraPipe.getValue(), cameraInteropStateCallbackRepository, cameraFactoryAdapter.cameraCoordinator, cameraFactoryAdapter.cameraXConfig)).build();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Created CameraFactoryAdapter in ".concat(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m845constructorimpl(systemTimeSource.mo855nowvQl9yQU() - jMo855nowvQl9yQU) / 1000000.0d)}, 1))));
        }
        Trace.endSection();
        return cameraAppComponentBuild;
    }

    private final Set<String> calculateAvailableCameraIds(List<String> list) {
        return new LinkedHashSet(CameraCompatibilityFilter.getBackwardCompatibleCameraIds(getAppComponent().getCameraDevices(), CameraSelectionOptimizer.Companion.getSelectedAvailableCameraIds(getAppComponent(), this.availableCamerasSelector, qn1.t0(list), this.streamSpecsCalculator)));
    }

    private final CameraAppComponent getAppComponent() {
        return (CameraAppComponent) this.appComponent$delegate.getValue();
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Set<String> getAvailableCameraIds() {
        synchronized (this.lock) {
            if (this.isShutdown.get()) {
                return ox2.b;
            }
            return new LinkedHashSet(this.availableCameraIds);
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public CameraInternal getCamera(String str) throws CameraUpdateException {
        str.getClass();
        if (this.isShutdown.get()) {
            throw new CameraUpdateException("CameraFactory has been shut down.");
        }
        return getAppComponent().cameraBuilder().config(new CameraConfig(CameraId.m352constructorimpl(str), null)).streamSpecsCalculator(this.streamSpecsCalculator).build().getCameraInternal();
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public CameraCoordinator getCameraCoordinator() {
        return this.cameraCoordinator;
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Object getCameraManager() {
        return getAppComponent();
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public Observable<List<CameraIdentifier>> getCameraPresenceSource() {
        return this.pipeCameraPresenceObservable;
    }

    @Override // androidx.camera.core.impl.CameraPresenceMonitor
    public void onCameraIdsUpdated(List<String> list) {
        list.getClass();
        if (this.isShutdown.get()) {
            return;
        }
        Set<String> setCalculateAvailableCameraIds = calculateAvailableCameraIds(list);
        synchronized (this.lock) {
            try {
                if (this.isShutdown.get()) {
                    return;
                }
                if (aa4.e(this.availableCameraIds, setCalculateAvailableCameraIds)) {
                    return;
                }
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Updated available camera list: " + this.availableCameraIds + " -> " + setCalculateAvailableCameraIds);
                }
                this.availableCameraIds = setCalculateAvailableCameraIds;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public void shutdown() {
        if (this.isShutdown.getAndSet(true)) {
            return;
        }
        this.cameraCoordinator.shutdown();
        this.pipeCameraPresenceObservable.stopMonitoring();
        if (this.lazyCameraPipe.isInitialized()) {
            this.lazyCameraPipe.getValue().shutdown();
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory.Interrogator
    public List<String> getAvailableCameraIds(List<String> list) {
        list.getClass();
        if (this.isShutdown.get()) {
            return kx2.b;
        }
        return qn1.t0(calculateAvailableCameraIds(list));
    }
}
