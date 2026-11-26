package androidx.camera.core.impl.utils;

import androidx.camera.core.Logger;
import defpackage.ah;
import defpackage.bg;
import defpackage.fg;
import defpackage.jh;

/* JADX INFO: loaded from: classes.dex */
public final class CameraOrientationUtil {
    private static final String TAG = "CameraOrientationUtil";

    private CameraOrientationUtil() {
    }

    public static int degreesToSurfaceRotation(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 90) {
            return 1;
        }
        if (i == 180) {
            return 2;
        }
        if (i == 270) {
            return 3;
        }
        ah.f(jh.b(i, "Invalid sensor rotation: "));
        return 0;
    }

    public static int getRelativeImageRotation(int i, int i2, boolean z) {
        int i3 = z ? ((i2 - i) + 360) % 360 : (i2 + i) % 360;
        if (Logger.isVerboseEnabled(TAG)) {
            StringBuilder sbF = bg.f(i, i2, "getRelativeImageRotation: destRotationDegrees=", ", sourceRotationDegrees=", ", isOppositeFacing=");
            sbF.append(z);
            sbF.append(", result=");
            sbF.append(i3);
            Logger.d(TAG, sbF.toString());
        }
        return i3;
    }

    public static int surfaceRotationToDegrees(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 90;
        }
        if (i == 2) {
            return 180;
        }
        if (i == 3) {
            return 270;
        }
        fg.c(jh.b(i, "Unsupported surface rotation: "));
        return 0;
    }
}
