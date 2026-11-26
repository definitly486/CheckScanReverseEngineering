package androidx.camera.camera2.adapter;

import android.content.Context;
import android.os.Trace;
import androidx.camera.camera2.adapter.CameraFactoryProvider;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraPipeKt;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.StreamSpecsCalculator;
import androidx.media3.muxer.WebmConstants;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.ll3;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class CameraFactoryProvider implements CameraFactory.Provider {
    private final Context sharedAppContext;
    private final CameraPipe sharedCameraPipe;
    private final CameraInteropStateCallbackRepository sharedInteropCallbacks;
    private final CameraThreadConfig sharedThreadConfig;

    public /* synthetic */ CameraFactoryProvider(CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : cameraPipe, (i & 2) != 0 ? null : context, (i & 4) != 0 ? null : cameraThreadConfig);
    }

    /* JADX INFO: renamed from: createCameraPipe-ck8WKOA, reason: not valid java name */
    private final CameraPipe m2createCameraPipeck8WKOA(Context context, CameraThreadConfig cameraThreadConfig, DurationNs durationNs) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("Create CameraPipe");
            SystemTimeSource systemTimeSource = new SystemTimeSource();
            Timestamps timestamps = Timestamps.INSTANCE;
            long jMo855nowvQl9yQU = systemTimeSource.mo855nowvQl9yQU();
            Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
            persistentApplicationContext.getClass();
            CameraPipe CameraPipe = CameraPipeKt.CameraPipe(new CameraPipe.Config(persistentApplicationContext, new CameraPipe.ThreadConfig(null, null, null, CameraXExecutors.newSequentialExecutor(cameraThreadConfig.getCameraExecutor()), null, null, null, 119, null), null, null, new CameraPipe.CameraInteropConfig(this.sharedInteropCallbacks.getDeviceStateCallback(), this.sharedInteropCallbacks.getSessionStateCallback(), durationNs, null), null, null, null, WebmConstants.MkvEbmlElement.VOID, null));
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Created CameraPipe in ".concat(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m845constructorimpl(systemTimeSource.mo855nowvQl9yQU() - jMo855nowvQl9yQU) / 1000000.0d)}, 1))));
            }
            return CameraPipe;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraPipe newInstance$lambda$0(CameraFactoryProvider cameraFactoryProvider, Context context, CameraThreadConfig cameraThreadConfig, DurationNs durationNs) {
        if (cameraFactoryProvider.sharedCameraPipe == null) {
            return cameraFactoryProvider.m2createCameraPipeck8WKOA(context, cameraThreadConfig, durationNs);
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Using shared a " + cameraFactoryProvider.sharedCameraPipe + " instance.");
        }
        return cameraFactoryProvider.sharedCameraPipe;
    }

    @Override // androidx.camera.core.impl.CameraFactory.Provider
    public CameraFactory newInstance(final Context context, final CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j, CameraXConfig cameraXConfig, StreamSpecsCalculator streamSpecsCalculator) {
        context.getClass();
        cameraThreadConfig.getClass();
        streamSpecsCalculator.getClass();
        final DurationNs durationNsM843boximpl = j == -1 ? null : DurationNs.m843boximpl(DurationNs.m845constructorimpl(j));
        fh8 fh8Var = new fh8(new ll3() { // from class: y01
            @Override // defpackage.ll3
            public final Object invoke() {
                return CameraFactoryProvider.newInstance$lambda$0(this.b, context, cameraThreadConfig, durationNsM843boximpl);
            }
        });
        Context context2 = this.sharedAppContext;
        Context context3 = context2 == null ? context : context2;
        CameraThreadConfig cameraThreadConfig2 = this.sharedThreadConfig;
        CameraThreadConfig cameraThreadConfig3 = cameraThreadConfig2 == null ? cameraThreadConfig : cameraThreadConfig2;
        CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository = this.sharedInteropCallbacks;
        if (cameraXConfig == null) {
            cameraXConfig = new CameraXConfig.Builder().build();
            cameraXConfig.getClass();
        }
        return new CameraFactoryAdapter(fh8Var, context3, cameraThreadConfig3, cameraInteropStateCallbackRepository, cameraSelector, streamSpecsCalculator, cameraXConfig);
    }

    public CameraFactoryProvider(CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig) {
        this.sharedCameraPipe = cameraPipe;
        this.sharedAppContext = context;
        this.sharedThreadConfig = cameraThreadConfig;
        this.sharedInteropCallbacks = new CameraInteropStateCallbackRepository();
    }

    public CameraFactoryProvider() {
        this(null, null, null, 7, null);
    }
}
