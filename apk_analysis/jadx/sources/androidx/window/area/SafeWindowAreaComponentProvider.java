package androidx.window.area;

import android.os.Build;
import androidx.window.SafeWindowExtensionsProvider;
import androidx.window.area.SafeWindowAreaComponentProvider;
import androidx.window.area.reflectionguard.WindowAreaComponentValidator;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.ll3;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public final class SafeWindowAreaComponentProvider {
    private final ClassLoader loader;
    private final WindowExtensions windowExtensions;

    public SafeWindowAreaComponentProvider(ClassLoader classLoader) {
        classLoader.getClass();
        this.loader = classLoader;
        this.windowExtensions = new SafeWindowExtensionsProvider(classLoader).getWindowExtensions();
    }

    private final Class<?> getExtensionWindowAreaPresentationClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.EXTENSION_WINDOW_AREA_PRESENTATION_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final Class<?> getExtensionWindowAreaStatusClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.EXTENSION_WINDOW_AREA_STATUS_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final Class<?> getWindowAreaComponentClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.WINDOW_AREA_COMPONENT_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final boolean isWindowAreaProviderValid(final Object obj) {
        return ReflectionUtils.validateReflection$window_release("WindowExtensions#getWindowAreaComponent is not valid", new ll3() { // from class: xb7
            @Override // defpackage.ll3
            public final Object invoke() {
                return Boolean.valueOf(SafeWindowAreaComponentProvider.isWindowAreaProviderValid$lambda$0(obj, this));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isWindowAreaProviderValid$lambda$0(Object obj, SafeWindowAreaComponentProvider safeWindowAreaComponentProvider) throws NoSuchMethodException {
        Method method = obj.getClass().getMethod("getWindowAreaComponent", null);
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        return reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, safeWindowAreaComponentProvider.getWindowAreaComponentClass());
    }

    public final WindowAreaComponent getWindowAreaComponent() {
        try {
            WindowExtensions windowExtensions = this.windowExtensions;
            if (windowExtensions != null && isWindowAreaProviderValid(windowExtensions) && Build.VERSION.SDK_INT >= 29) {
                WindowAreaComponentValidator windowAreaComponentValidator = WindowAreaComponentValidator.INSTANCE;
                Class<?> windowAreaComponentClass = getWindowAreaComponentClass();
                ExtensionsUtil extensionsUtil = ExtensionsUtil.INSTANCE;
                if (windowAreaComponentValidator.isWindowAreaComponentValid$window_release(windowAreaComponentClass, extensionsUtil.getSafeVendorApiLevel()) && windowAreaComponentValidator.isExtensionWindowAreaStatusValid$window_release(getExtensionWindowAreaStatusClass(), extensionsUtil.getSafeVendorApiLevel()) && windowAreaComponentValidator.isExtensionWindowAreaPresentationValid$window_release(getExtensionWindowAreaPresentationClass(), extensionsUtil.getSafeVendorApiLevel())) {
                    return this.windowExtensions.getWindowAreaComponent();
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
