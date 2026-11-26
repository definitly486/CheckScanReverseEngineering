package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.config.Camera2ControllerScope;
import defpackage.ah;
import defpackage.ws6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CaptureSessionsModule {
    public static final Camera2CaptureSessionsModule INSTANCE = new Camera2CaptureSessionsModule();

    private Camera2CaptureSessionsModule() {
    }

    @Camera2ControllerScope
    public final CaptureSessionFactory provideSessionFactory(ws6<AndroidMSessionFactory> ws6Var, ws6<AndroidMHighSpeedSessionFactory> ws6Var2, ws6<AndroidNSessionFactory> ws6Var3, ws6<AndroidPSessionFactory> ws6Var4, ws6<AndroidExtensionSessionFactory> ws6Var5, CameraGraph.Config config) {
        ws6Var.getClass();
        ws6Var2.getClass();
        ws6Var3.getClass();
        ws6Var4.getClass();
        ws6Var5.getClass();
        config.getClass();
        int iM314getSessionMode2uNL3no = config.m314getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no, companion.m340getEXTENSION2uNL3no())) {
            if (Build.VERSION.SDK_INT < 31) {
                ah.f("Cannot use Extension sessions below Android S");
                return null;
            }
            AndroidExtensionSessionFactory androidExtensionSessionFactory = ws6Var5.get();
            androidExtensionSessionFactory.getClass();
            return androidExtensionSessionFactory;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            AndroidPSessionFactory androidPSessionFactory = ws6Var4.get();
            androidPSessionFactory.getClass();
            return androidPSessionFactory;
        }
        if (CameraGraph.OperatingMode.m335equalsimpl0(config.m314getSessionMode2uNL3no(), companion.m341getHIGH_SPEED2uNL3no())) {
            AndroidMHighSpeedSessionFactory androidMHighSpeedSessionFactory = ws6Var2.get();
            androidMHighSpeedSessionFactory.getClass();
            return androidMHighSpeedSessionFactory;
        }
        AndroidNSessionFactory androidNSessionFactory = ws6Var3.get();
        androidNSessionFactory.getClass();
        return androidNSessionFactory;
    }
}
