package androidx.camera.lifecycle;

import android.content.Context;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LifecycleOwner;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.e02;
import defpackage.nl3;
import defpackage.vd0;
import defpackage.zh;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface LifecycleCameraProvider extends CameraProvider {
    public static final Companion Companion = Companion.$$INSTANCE;

    static Object createInstance(Context context, e02<? super LifecycleCameraProvider> e02Var) {
        return Companion.createInstance(context, e02Var);
    }

    static ListenableFuture<LifecycleCameraProvider> createInstanceAsync(Context context) {
        return Companion.createInstanceAsync(context);
    }

    Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, SessionConfig sessionConfig);

    Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCaseGroup useCaseGroup);

    Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCase... useCaseArr);

    ConcurrentCamera bindToLifecycle(List<ConcurrentCamera.SingleCameraConfig> list);

    boolean isBound(SessionConfig sessionConfig);

    boolean isBound(UseCase useCase);

    void unbind(SessionConfig sessionConfig);

    void unbind(UseCase... useCaseArr);

    void unbindAll();

    static Object createInstance(Context context, CameraXConfig cameraXConfig, e02<? super LifecycleCameraProvider> e02Var) {
        return Companion.createInstance(context, cameraXConfig, e02Var);
    }

    static ListenableFuture<LifecycleCameraProvider> createInstanceAsync(Context context, CameraXConfig cameraXConfig) {
        return Companion.createInstanceAsync(context, cameraXConfig);
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ Object createInstance$default(Companion companion, Context context, CameraXConfig cameraXConfig, e02 e02Var, int i, Object obj) {
            if ((i & 2) != 0) {
                cameraXConfig = null;
            }
            return companion.createInstance(context, cameraXConfig, e02Var);
        }

        public static /* synthetic */ ListenableFuture createInstanceAsync$default(Companion companion, Context context, CameraXConfig cameraXConfig, int i, Object obj) {
            if ((i & 2) != 0) {
                cameraXConfig = null;
            }
            return companion.createInstanceAsync(context, cameraXConfig);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final LifecycleCameraProvider createInstanceAsync$lambda$0(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, Void r1) {
            return lifecycleCameraProviderImpl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final LifecycleCameraProvider createInstanceAsync$lambda$1(nl3 nl3Var, Object obj) {
            return (LifecycleCameraProvider) nl3Var.invoke(obj);
        }

        public final Object createInstance(Context context, e02<? super LifecycleCameraProvider> e02Var) {
            return createInstance$default(this, context, null, e02Var, 2, null);
        }

        public final ListenableFuture<LifecycleCameraProvider> createInstanceAsync(Context context, CameraXConfig cameraXConfig) {
            context.getClass();
            Preconditions.checkNotNull(context);
            LifecycleCameraProviderImpl lifecycleCameraProviderImpl = new LifecycleCameraProviderImpl();
            int i = 3;
            ListenableFuture<LifecycleCameraProvider> listenableFutureTransform = Futures.transform(lifecycleCameraProviderImpl.initAsync$camera_lifecycle(context, cameraXConfig), new vd0(new zh(lifecycleCameraProviderImpl, i), i), CameraXExecutors.directExecutor());
            listenableFutureTransform.getClass();
            return listenableFutureTransform;
        }

        public final Object createInstance(Context context, CameraXConfig cameraXConfig, e02<? super LifecycleCameraProvider> e02Var) {
            return ListenableFutureKt.await(createInstanceAsync(context, cameraXConfig), e02Var);
        }

        public final ListenableFuture<LifecycleCameraProvider> createInstanceAsync(Context context) {
            context.getClass();
            return createInstanceAsync$default(this, context, null, 2, null);
        }
    }
}
