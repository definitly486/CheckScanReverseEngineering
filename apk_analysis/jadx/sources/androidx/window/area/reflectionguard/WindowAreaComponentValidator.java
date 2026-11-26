package androidx.window.area.reflectionguard;

import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.reflection.ReflectionUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowAreaComponentValidator {
    public static final WindowAreaComponentValidator INSTANCE = new WindowAreaComponentValidator();

    private WindowAreaComponentValidator() {
    }

    public final boolean isExtensionWindowAreaPresentationValid$window_release(Class<?> cls, int i) {
        cls.getClass();
        if (i <= 2) {
            return false;
        }
        return ReflectionUtils.INSTANCE.validateImplementation$window_release(cls, ExtensionWindowAreaPresentation.class);
    }

    public final boolean isExtensionWindowAreaStatusValid$window_release(Class<?> cls, int i) {
        cls.getClass();
        if (i <= 2) {
            return false;
        }
        return ReflectionUtils.INSTANCE.validateImplementation$window_release(cls, ExtensionWindowAreaStatusRequirements.class);
    }

    public final boolean isWindowAreaComponentValid$window_release(Class<?> cls, int i) {
        cls.getClass();
        if (i <= 2) {
            return false;
        }
        return ReflectionUtils.INSTANCE.validateImplementation$window_release(cls, WindowAreaComponentApi3Requirements.class);
    }
}
