package androidx.camera.viewfinder.core.camera2;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Log;
import androidx.camera.viewfinder.core.TransformationInfo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2TransformationInfo {
    public static final Camera2TransformationInfo INSTANCE = new Camera2TransformationInfo();

    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputConfigurationMirrorMode {
    }

    private Camera2TransformationInfo() {
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, int i) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, i, 0.0f, 0.0f, 0.0f, 0.0f, 60, null);
    }

    public static /* synthetic */ TransformationInfo createFromCharacteristics$default(CameraCharacteristics cameraCharacteristics, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 2) != 0) {
            f = Float.NaN;
        }
        if ((i & 4) != 0) {
            f2 = Float.NaN;
        }
        if ((i & 8) != 0) {
            f3 = Float.NaN;
        }
        if ((i & 16) != 0) {
            f4 = Float.NaN;
        }
        return createFromCharacteristics(cameraCharacteristics, f, f2, f3, f4);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    /* JADX WARN: Code duplicated, block: B:14:0x0026  */
    /* JADX WARN: Code duplicated, block: B:25:0x0049  */
    private static final TransformationInfo createFromCharacteristicsInternal(CameraCharacteristics cameraCharacteristics, int i, float f, float f2, float f3, float f4) {
        int iIntValue;
        int iIntValue2;
        boolean z;
        boolean z2;
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            Log.e("C2TransformationInfo", "Unable to retrieve sensor rotation. Assuming rotation of 0");
            iIntValue = 0;
        }
        if (i == 0) {
            Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
            if (num2 != null) {
                iIntValue2 = num2.intValue();
            } else {
                Log.e("C2TransformationInfo", "Unable to retrieve lens facing. Assuming BACK camera.");
                iIntValue2 = 1;
            }
            if (iIntValue2 != 0) {
                z = false;
                z2 = false;
            } else if (iIntValue == 90 || iIntValue == 270) {
                z2 = true;
                z = false;
            } else {
                z = true;
                z2 = false;
            }
        } else if (i == 2) {
            z = true;
            z2 = false;
        } else if (i != 3) {
            z = false;
            z2 = false;
        } else {
            z2 = true;
            z = false;
        }
        return new TransformationInfo(iIntValue, z, z2, f, f2, f3, f4);
    }

    public static /* synthetic */ TransformationInfo createFromCharacteristicsInternal$default(CameraCharacteristics cameraCharacteristics, int i, float f, float f2, float f3, float f4, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            f = Float.NaN;
        }
        if ((i2 & 8) != 0) {
            f2 = Float.NaN;
        }
        if ((i2 & 16) != 0) {
            f3 = Float.NaN;
        }
        return createFromCharacteristicsInternal(cameraCharacteristics, i, f, f2, f3, (i2 & 32) != 0 ? Float.NaN : f4);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, float f) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, f, 0.0f, 0.0f, 0.0f, 28, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, float f, float f2) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, f, f2, 0.0f, 0.0f, 24, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, float f, float f2, float f3) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, f, f2, f3, 0.0f, 16, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, 0.0f, 0.0f, 0.0f, 0.0f, 30, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, int i, float f) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, i, f, 0.0f, 0.0f, 0.0f, 56, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, int i, float f, float f2) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, i, f, f2, 0.0f, 0.0f, 48, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, int i, float f, float f2, float f3) {
        cameraCharacteristics.getClass();
        return createFromCharacteristics$default(cameraCharacteristics, i, f, f2, f3, 0.0f, 32, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, float f, float f2, float f3, float f4) {
        cameraCharacteristics.getClass();
        return createFromCharacteristicsInternal$default(cameraCharacteristics, 0, f, f2, f3, f4, 2, null);
    }

    public static final TransformationInfo createFromCharacteristics(CameraCharacteristics cameraCharacteristics, int i, float f, float f2, float f3, float f4) {
        cameraCharacteristics.getClass();
        return createFromCharacteristicsInternal(cameraCharacteristics, i, f, f2, f3, f4);
    }

    public static /* synthetic */ TransformationInfo createFromCharacteristics$default(CameraCharacteristics cameraCharacteristics, int i, float f, float f2, float f3, float f4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f = Float.NaN;
        }
        if ((i2 & 8) != 0) {
            f2 = Float.NaN;
        }
        if ((i2 & 16) != 0) {
            f3 = Float.NaN;
        }
        if ((i2 & 32) != 0) {
            f4 = Float.NaN;
        }
        return createFromCharacteristics(cameraCharacteristics, i, f, f2, f3, f4);
    }
}
