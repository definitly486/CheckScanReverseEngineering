package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StrictMode;
import defpackage.aa4;
import defpackage.b36;
import defpackage.jh2;
import defpackage.l1;
import defpackage.me0;
import defpackage.n05;
import defpackage.ra8;
import defpackage.yr;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Quirks {
    public static final Companion Companion = new Companion(null);
    private static final Map<String, Set<String>> SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP;
    private static final Map<String, Set<String>> SM8150_DEVICES;
    private final Camera2MetadataProvider metadataProvider;
    private final StrictMode strictMode;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.values().length];
            try {
                iArr[CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.AT_LEAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.EXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        Map<String, Set<String>> mapSingletonMap = Collections.singletonMap("Google", yr.k0(new String[]{"oriole", "raven", "bluejay", "panther", "cheetah", "lynx"}));
        mapSingletonMap.getClass();
        SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP = mapSingletonMap;
        SM8150_DEVICES = n05.e(new b36("google", yr.k0(new String[]{"pixel 4", "pixel 4 xl"})), new b36("samsung", l1.f("sm-g770f")));
    }

    public Camera2Quirks(Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        camera2MetadataProvider.getClass();
        strictMode.getClass();
        this.metadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    public final int getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(CameraGraph.Flags flags) {
        flags.getClass();
        if (this.strictMode.getEnabled()) {
            return 0;
        }
        CameraGraph.RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture = flags.getAwaitRepeatingRequestBeforeCapture();
        Set<String> set = SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP.get(Build.MANUFACTURER);
        int iMax = (set == null || !set.contains(Build.DEVICE) || Build.VERSION.SDK_INT >= 34) ? 0 : Math.max(0, 10);
        int i = WhenMappings.$EnumSwitchMapping$0[awaitRepeatingRequestBeforeCapture.getCompletionBehavior().ordinal()];
        if (i == 1) {
            return Math.max(iMax, awaitRepeatingRequestBeforeCapture.m343getRepeatingFramesToCompletepVg5ArA());
        }
        if (i == 2) {
            return awaitRepeatingRequestBeforeCapture.m343getRepeatingFramesToCompletepVg5ArA();
        }
        me0.e();
        return 0;
    }

    /* JADX INFO: renamed from: shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe, reason: not valid java name */
    public final boolean m782x552c1673(String str) {
        str.getClass();
        if (this.strictMode.getEnabled()) {
            return false;
        }
        return (Build.VERSION.SDK_INT <= 32 && CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo778awaitCameraMetadataEfqyGwQ(str))) || ("motorola".equalsIgnoreCase(Build.BRAND) && "moto e20".equalsIgnoreCase(Build.MODEL) && str.equals("1"));
    }

    /* JADX INFO: renamed from: shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe, reason: not valid java name */
    public final boolean m783xfcf3eba9(String str) {
        str.getClass();
        return !this.strictMode.getEnabled() && Build.VERSION.SDK_INT < 29 && CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo778awaitCameraMetadataEfqyGwQ(str));
    }

    /* JADX INFO: renamed from: shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe, reason: not valid java name */
    public final boolean m784shouldWaitForCameraDeviceOnClosedEfqyGwQ$camera_camera2_pipe(String str) {
        str.getClass();
        if (this.strictMode.getEnabled()) {
            return false;
        }
        return CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo778awaitCameraMetadataEfqyGwQ(str));
    }

    public final boolean shouldWaitForRepeatingRequestStartOnDisconnect$camera_camera2_pipe(CameraGraph.Config config) {
        config.getClass();
        if (this.strictMode.getEnabled()) {
            return false;
        }
        Boolean awaitRepeatingRequestOnDisconnect = config.getFlags().getAwaitRepeatingRequestOnDisconnect();
        return awaitRepeatingRequestOnDisconnect != null ? awaitRepeatingRequestOnDisconnect.booleanValue() : CameraMetadata.Companion.isHardwareLevelLegacy(this.metadataProvider.mo778awaitCameraMetadataEfqyGwQ(config.m310getCameraDz_R5H8()));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe() {
            int i = Build.VERSION.SDK_INT;
            if (i <= 27) {
                return true;
            }
            String str = Build.HARDWARE;
            if (aa4.e(str, "samsungexynos7870")) {
                return true;
            }
            if (!ra8.v(str, "qcom", true) || i > 31) {
                Map map = Camera2Quirks.SM8150_DEVICES;
                String str2 = Build.BRAND;
                str2.getClass();
                Locale locale = Locale.ROOT;
                String lowerCase = str2.toLowerCase(locale);
                lowerCase.getClass();
                Set set = (Set) map.get(lowerCase);
                if (set == null) {
                    return false;
                }
                String str3 = Build.MODEL;
                str3.getClass();
                String lowerCase2 = str3.toLowerCase(locale);
                lowerCase2.getClass();
                if (!set.contains(lowerCase2)) {
                    return false;
                }
            }
            return true;
        }

        private Companion() {
        }
    }
}
