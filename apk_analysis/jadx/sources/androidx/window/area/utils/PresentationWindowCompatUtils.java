package androidx.window.area.utils;

import android.view.Window;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import defpackage.aa4;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public final class PresentationWindowCompatUtils {
    public static final PresentationWindowCompatUtils INSTANCE = new PresentationWindowCompatUtils();

    private PresentationWindowCompatUtils() {
    }

    private final Method getWindowMethod(ExtensionWindowAreaPresentation extensionWindowAreaPresentation) {
        Method[] methods = extensionWindowAreaPresentation.getClass().getMethods();
        methods.getClass();
        int length = methods.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                return null;
            }
            Method method = methods[i];
            if (aa4.e(method != null ? method.getName() : null, "getWindow") && aa4.e(method.getReturnType(), Window.class)) {
                return method;
            }
            i++;
        }
    }

    public final Window getWindowBeforeVendorApiLevel4(ExtensionWindowAreaPresentation extensionWindowAreaPresentation) {
        extensionWindowAreaPresentation.getClass();
        Method windowMethod = getWindowMethod(extensionWindowAreaPresentation);
        if (windowMethod == null) {
            return null;
        }
        return (Window) windowMethod.invoke(extensionWindowAreaPresentation, null);
    }
}
