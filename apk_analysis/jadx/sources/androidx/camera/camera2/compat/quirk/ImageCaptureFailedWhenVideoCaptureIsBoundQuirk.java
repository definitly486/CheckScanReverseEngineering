package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import defpackage.jh2;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureFailedWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk, SurfaceProcessingQuirk {
    public static final Companion Companion = new Companion(null);

    @Override // androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk
    public boolean workaroundByCaptureIntentPreview() {
        Companion companion = Companion;
        return companion.isBluStudioX10() || companion.isItelW6004() || companion.isVivo1805() || companion.isPositivoTwist2Pro();
    }

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public boolean workaroundBySurfaceProcessing() {
        Companion companion = Companion;
        return companion.isBluStudioX10() || companion.isItelW6004() || companion.isVivo1805() || companion.isPositivoTwist2Pro() || companion.isPixel4XLApi29() || companion.isMotoE13() || companion.isSamsungTabA8() || companion.isSamsungA53() || Device.INSTANCE.isUniSocChipsetDevice();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isBluStudioX10() {
            return Device.INSTANCE.isBluDevice() && "studio x10".equalsIgnoreCase(Build.MODEL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isItelW6004() {
            return Device.INSTANCE.isItelDevice() && "itel w6004".equalsIgnoreCase(Build.MODEL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isMotoE13() {
            return Device.INSTANCE.isMotorolaDevice() && "moto e13".equalsIgnoreCase(Build.MODEL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isPixel4XLApi29() {
            return "pixel 4 xl".equalsIgnoreCase(Build.MODEL) && Build.VERSION.SDK_INT == 29;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isPositivoTwist2Pro() {
            return Device.INSTANCE.isPositivoDevice() && "twist 2 pro".equalsIgnoreCase(Build.MODEL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSamsungA53() {
            if (Device.INSTANCE.isSamsungDevice()) {
                String str = Build.MODEL;
                str.getClass();
                if (ra8.C(str, "SM-A536", false)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSamsungTabA8() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String str = Build.DEVICE;
            return "gta8".equalsIgnoreCase(str) || "gta8wifi".equalsIgnoreCase(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isVivo1805() {
            return Device.INSTANCE.isVivoDevice() && "vivo 1805".equalsIgnoreCase(Build.MODEL);
        }

        public final boolean isEnabled() {
            return isBluStudioX10() || isItelW6004() || isVivo1805() || isPositivoTwist2Pro() || isPixel4XLApi29() || isMotoE13() || isSamsungTabA8() || isSamsungA53() || Device.INSTANCE.isUniSocChipsetDevice();
        }

        private Companion() {
        }
    }
}
