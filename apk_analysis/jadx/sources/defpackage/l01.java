package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.util.Log;
import android.view.WindowManager;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class l01 {
    public final Context a;
    public Point b;
    public Point c;
    public Point d;
    public Point e;
    public int f;
    public int g;

    public class a implements Comparator<Camera.Size> {
        @Override // java.util.Comparator
        public final int compare(Camera.Size size, Camera.Size size2) {
            Camera.Size size3 = size;
            Camera.Size size4 = size2;
            int i = size3.height * size3.width;
            int i2 = size4.height * size4.width;
            if (i2 < i) {
                return -1;
            }
            return i2 > i ? 1 : 0;
        }
    }

    public l01(Context context) {
        this.a = context;
    }

    public static Point a(Camera.Parameters parameters, Point point) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        if (supportedPreviewSizes == null) {
            Log.w("CameraConfiguration", "Device returned no supported preview sizes; using default");
            Camera.Size previewSize = parameters.getPreviewSize();
            return new Point(previewSize.width, previewSize.height);
        }
        ArrayList<Camera.Size> arrayList = new ArrayList(supportedPreviewSizes);
        Collections.sort(arrayList, new a());
        if (Log.isLoggable("CameraConfiguration", 4)) {
            StringBuilder sb = new StringBuilder();
            for (Camera.Size size : arrayList) {
                sb.append(size.width);
                sb.append('x');
                sb.append(size.height);
                sb.append(' ');
            }
            Log.i("CameraConfiguration", "Supported preview sizes: " + ((Object) sb));
        }
        float f = point.x / point.y;
        Point point2 = null;
        float f2 = Float.POSITIVE_INFINITY;
        for (Camera.Size size2 : arrayList) {
            int i = size2.width;
            int i2 = size2.height;
            int i3 = i * i2;
            if (i3 >= 150400 && i3 <= 921600) {
                boolean z = i > i2;
                int i4 = z ? i2 : i;
                int i5 = z ? i : i2;
                if (i4 == point.x && i5 == point.y) {
                    Point point3 = new Point(i, i2);
                    Log.i("CameraConfiguration", "Found preview size exactly matching screen size: " + point3);
                    return point3;
                }
                float fAbs = Math.abs((i4 / i5) - f);
                if (fAbs < f2) {
                    point2 = new Point(i, i2);
                    f2 = fAbs;
                }
            }
        }
        if (point2 == null) {
            Camera.Size previewSize2 = parameters.getPreviewSize();
            point2 = new Point(previewSize2.width, previewSize2.height);
            Log.i("CameraConfiguration", "No suitable preview sizes, using default: " + point2);
        }
        Log.i("CameraConfiguration", "Found best approximate preview size: " + point2);
        return point2;
    }

    public static String b(String str, List list, String... strArr) {
        StringBuilder sbD = n7.d("Requesting ", str, " value from among: ");
        sbD.append(Arrays.toString(strArr));
        Log.i("CameraConfiguration", sbD.toString());
        Log.i("CameraConfiguration", "Supported " + str + " values: " + list);
        if (list != null) {
            for (String str2 : strArr) {
                if (list.contains(str2)) {
                    Log.i("CameraConfiguration", "Can set " + str + " to: " + str2);
                    return str2;
                }
            }
        }
        Log.i("CameraConfiguration", "No supported values match");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00af  */
    public static void e(boolean z, Camera camera) {
        String strB;
        Camera.Parameters parameters = camera.getParameters();
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        if (z) {
            strB = b("flash mode", supportedFlashModes, "torch", TJAdUnitConstants.String.SPLIT_VIEW_TRIGGER_ON);
        } else {
            strB = b("flash mode", supportedFlashModes, "off");
        }
        if (strB != null) {
            if (strB.equals(parameters.getFlashMode())) {
                Log.i("CameraConfiguration", "Flash mode already set to ".concat(strB));
            } else {
                Log.i("CameraConfiguration", "Setting flash mode to ".concat(strB));
                parameters.setFlashMode(strB);
            }
        }
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (minExposureCompensation == 0 && maxExposureCompensation == 0) {
            Log.i("CameraConfiguration", "Camera does not support exposure compensation");
        } else {
            if (exposureCompensationStep > 0.0f) {
                int iRound = Math.round((z ? 0.0f : 1.5f) / exposureCompensationStep);
                float f = exposureCompensationStep * iRound;
                int iMax = Math.max(Math.min(iRound, maxExposureCompensation), minExposureCompensation);
                if (parameters.getExposureCompensation() == iMax) {
                    Log.i("CameraConfiguration", "Exposure compensation already set to " + iMax + " / " + f);
                } else {
                    Log.i("CameraConfiguration", "Setting exposure compensation to " + iMax + " / " + f);
                    parameters.setExposureCompensation(iMax);
                }
            } else {
                Log.i("CameraConfiguration", "Camera does not support exposure compensation");
            }
        }
        camera.setParameters(parameters);
    }

    public final void c(hy5 hy5Var, int i, int i2) {
        int i3;
        Camera camera = hy5Var.b;
        w01 w01Var = hy5Var.c;
        Camera.Parameters parameters = camera.getParameters();
        int rotation = ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 0) {
            i3 = 0;
        } else if (rotation == 1) {
            i3 = 90;
        } else if (rotation == 2) {
            i3 = 180;
        } else if (rotation == 3) {
            i3 = 270;
        } else {
            if (rotation % 90 != 0) {
                fg.c(jh.b(rotation, "Bad rotation: "));
                return;
            }
            i3 = (rotation + 360) % 360;
        }
        Log.i("CameraConfiguration", "Display at: " + i3);
        int i4 = hy5Var.d;
        Log.i("CameraConfiguration", "Camera at: " + i4);
        w01 w01Var2 = w01.FRONT;
        if (w01Var == w01Var2) {
            i4 = (360 - i4) % 360;
            Log.i("CameraConfiguration", "Front camera overriden to: " + i4);
        }
        this.f = ((i4 + 360) - i3) % 360;
        Log.i("CameraConfiguration", "Final display orientation: " + this.f);
        if (w01Var == w01Var2) {
            Log.i("CameraConfiguration", "Compensating rotation for front camera");
            this.g = (360 - this.f) % 360;
        } else {
            this.g = this.f;
        }
        Log.i("CameraConfiguration", "Clockwise rotation from display to camera: " + this.g);
        this.b = new Point(i, i2);
        Log.i("CameraConfiguration", "Screen resolution in current orientation: " + this.b);
        this.c = a(parameters, this.b);
        Log.i("CameraConfiguration", "Camera resolution: " + this.c);
        this.d = a(parameters, this.b);
        Log.i("CameraConfiguration", "Best available preview size: " + this.d);
        Point point = this.b;
        boolean z = point.x < point.y;
        Point point2 = this.d;
        if (z == (point2.x < point2.y)) {
            this.e = point2;
        } else {
            Point point3 = this.d;
            this.e = new Point(point3.y, point3.x);
        }
        Log.i("CameraConfiguration", "Preview size on screen: " + this.e);
    }

    public final void d(hy5 hy5Var, boolean z) {
        String strB;
        Camera camera = hy5Var.b;
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            Log.w("CameraConfiguration", "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        Log.i("CameraConfiguration", "Initial camera parameters: " + parameters.flatten());
        if (z) {
            Log.w("CameraConfiguration", "In camera config safe mode -- most settings will not be honored");
        }
        if (z) {
            strB = null;
        } else {
            strB = b("focus mode", parameters.getSupportedFocusModes(), TtmlNode.TEXT_EMPHASIS_AUTO);
        }
        if (strB != null) {
            parameters.setFocusMode(strB);
        }
        Point point = this.d;
        parameters.setPreviewSize(point.x, point.y);
        camera.setParameters(parameters);
        camera.setDisplayOrientation(this.f);
        Camera.Size previewSize = camera.getParameters().getPreviewSize();
        if (previewSize != null) {
            Point point2 = this.d;
            if (point2.x == previewSize.width && point2.y == previewSize.height) {
                return;
            }
            Log.w("CameraConfiguration", "Camera said it supported preview size " + this.d.x + 'x' + this.d.y + ", but after setting it, preview size is " + previewSize.width + 'x' + previewSize.height);
            Point point3 = this.d;
            point3.x = previewSize.width;
            point3.y = previewSize.height;
        }
    }
}
