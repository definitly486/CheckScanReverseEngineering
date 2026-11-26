package androidx.camera.lifecycle;

import android.content.Context;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LifecycleOwner;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.au2;
import defpackage.gu2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mg6;
import defpackage.nl3;
import defpackage.wt2;
import defpackage.yt2;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessCameraProvider implements CameraProvider {
    public static final Companion Companion = new Companion(null);
    private static final ProcessCameraProvider sAppInstance = new ProcessCameraProvider(new LifecycleCameraProviderImpl());
    private final LifecycleCameraProviderImpl lifecycleCameraProvider;

    private ProcessCameraProvider(LifecycleCameraProviderImpl lifecycleCameraProviderImpl) {
        this.lifecycleCameraProvider = lifecycleCameraProviderImpl;
    }

    /* JADX INFO: renamed from: clearConfiguration-LRDsOJo, reason: not valid java name */
    public static final void m990clearConfigurationLRDsOJo(long j) throws ExecutionException, InterruptedException, TimeoutException {
        Companion.m992clearConfigurationLRDsOJo(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configure(CameraXConfig cameraXConfig) {
        this.lifecycleCameraProvider.configure$camera_lifecycle(cameraXConfig);
    }

    public static final void configureInstance(CameraXConfig cameraXConfig) {
        Companion.configureInstance(cameraXConfig);
    }

    public static final ListenableFuture<ProcessCameraProvider> getInstance(Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListenableFuture<Void> initAsync(Context context) {
        return this.lifecycleCameraProvider.initAsync$camera_lifecycle(context, null);
    }

    public static final ListenableFuture<Void> shutdown() {
        return Companion.shutdown();
    }

    @Override // androidx.camera.core.CameraProvider
    public void addCameraPresenceListener(Executor executor, CameraPresenceListener cameraPresenceListener) {
        executor.getClass();
        cameraPresenceListener.getClass();
        this.lifecycleCameraProvider.addCameraPresenceListener(executor, cameraPresenceListener);
    }

    public final Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCase... useCaseArr) {
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        useCaseArr.getClass();
        return this.lifecycleCameraProvider.bindToLifecycle(lifecycleOwner, cameraSelector, (UseCase[]) Arrays.copyOf(useCaseArr, useCaseArr.length));
    }

    @Override // androidx.camera.core.CameraProvider
    public List<CameraInfo> getAvailableCameraInfos() {
        return this.lifecycleCameraProvider.getAvailableCameraInfos();
    }

    @Override // androidx.camera.core.CameraProvider
    public List<List<CameraInfo>> getAvailableConcurrentCameraInfos() {
        return this.lifecycleCameraProvider.getAvailableConcurrentCameraInfos();
    }

    @Override // androidx.camera.core.CameraProvider
    public CameraInfo getCameraInfo(CameraSelector cameraSelector, SessionConfig sessionConfig) {
        cameraSelector.getClass();
        sessionConfig.getClass();
        return this.lifecycleCameraProvider.getCameraInfo(cameraSelector, sessionConfig);
    }

    @Override // androidx.camera.core.CameraProvider
    public boolean hasCamera(CameraSelector cameraSelector) {
        cameraSelector.getClass();
        return this.lifecycleCameraProvider.hasCamera(cameraSelector);
    }

    public final boolean isBound(UseCase useCase) {
        useCase.getClass();
        return this.lifecycleCameraProvider.isBound(useCase);
    }

    @Override // androidx.camera.core.CameraProvider
    public boolean isConcurrentCameraModeOn() {
        return this.lifecycleCameraProvider.isConcurrentCameraModeOn();
    }

    @Override // androidx.camera.core.CameraProvider
    public void removeCameraPresenceListener(CameraPresenceListener cameraPresenceListener) {
        cameraPresenceListener.getClass();
        this.lifecycleCameraProvider.removeCameraPresenceListener(cameraPresenceListener);
    }

    public final ListenableFuture<Void> shutdownAsync() {
        return LifecycleCameraProviderImpl.shutdownAsync$camera_lifecycle$default(this.lifecycleCameraProvider, false, 1, null);
    }

    public final void unbind(UseCase... useCaseArr) {
        useCaseArr.getClass();
        this.lifecycleCameraProvider.unbind((UseCase[]) Arrays.copyOf(useCaseArr, useCaseArr.length));
    }

    public final void unbindAll() {
        this.lifecycleCameraProvider.unbindAll();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: clearConfiguration-LRDsOJo$default, reason: not valid java name */
        public static /* synthetic */ void m991clearConfigurationLRDsOJo$default(Companion companion, long j, int i, Object obj) throws ExecutionException, InterruptedException, TimeoutException {
            if ((i & 1) != 0) {
                wt2.a aVar = wt2.c;
                j = yt2.e(10, au2.SECONDS);
            }
            companion.m992clearConfigurationLRDsOJo(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ProcessCameraProvider getInstance$lambda$0(Void r0) {
            return ProcessCameraProvider.sAppInstance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ProcessCameraProvider getInstance$lambda$1(nl3 nl3Var, Object obj) {
            return (ProcessCameraProvider) nl3Var.invoke(obj);
        }

        /* JADX INFO: renamed from: clearConfiguration-LRDsOJo, reason: not valid java name */
        public final void m992clearConfigurationLRDsOJo(long j) throws ExecutionException, InterruptedException, TimeoutException {
            ProcessCameraProvider.sAppInstance.shutdownAsync().get(wt2.f(j), TimeUnit.NANOSECONDS);
        }

        public final void configureInstance(CameraXConfig cameraXConfig) {
            cameraXConfig.getClass();
            Trace.beginSection("CX:configureInstance");
            try {
                ProcessCameraProvider.sAppInstance.configure(cameraXConfig);
                j59 j59Var = j59.a;
            } finally {
                Trace.endSection();
            }
        }

        public final ListenableFuture<ProcessCameraProvider> getInstance(Context context) {
            context.getClass();
            Preconditions.checkNotNull(context);
            ListenableFuture<ProcessCameraProvider> listenableFutureTransform = Futures.transform(ProcessCameraProvider.sAppInstance.initAsync(context), new gu2(new mg6(0)), CameraXExecutors.directExecutor());
            listenableFutureTransform.getClass();
            return listenableFutureTransform;
        }

        public final ListenableFuture<Void> shutdown() {
            return ProcessCameraProvider.sAppInstance.shutdownAsync();
        }

        private Companion() {
        }
    }

    public final boolean isBound(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        return this.lifecycleCameraProvider.isBound(sessionConfig);
    }

    @Override // androidx.camera.core.CameraProvider
    public CameraInfo getCameraInfo(CameraSelector cameraSelector) {
        cameraSelector.getClass();
        return this.lifecycleCameraProvider.getCameraInfo(cameraSelector);
    }

    public final void unbind(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        this.lifecycleCameraProvider.unbind(sessionConfig);
    }

    public final Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCaseGroup useCaseGroup) {
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        useCaseGroup.getClass();
        return this.lifecycleCameraProvider.bindToLifecycle(lifecycleOwner, cameraSelector, useCaseGroup);
    }

    public final Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, SessionConfig sessionConfig) {
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        sessionConfig.getClass();
        return this.lifecycleCameraProvider.bindToLifecycle(lifecycleOwner, cameraSelector, sessionConfig);
    }

    public final ConcurrentCamera bindToLifecycle(List<ConcurrentCamera.SingleCameraConfig> list) {
        list.getClass();
        return this.lifecycleCameraProvider.bindToLifecycle(list);
    }
}
