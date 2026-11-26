package androidx.window;

import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.kd3;
import defpackage.q;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public final class SafeWindowExtensionsProvider {
    private final ClassLoader loader;

    public SafeWindowExtensionsProvider(ClassLoader classLoader) {
        classLoader.getClass();
        this.loader = classLoader;
    }

    private final Class<?> getWindowExtensionsProviderClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.WINDOW_EXTENSIONS_PROVIDER_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final boolean isWindowExtensionsPresent() {
        return ReflectionUtils.INSTANCE.checkIsPresent$window_release(new kd3(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Class isWindowExtensionsPresent$lambda$1(SafeWindowExtensionsProvider safeWindowExtensionsProvider) throws ClassNotFoundException {
        Class<?> clsLoadClass = safeWindowExtensionsProvider.loader.loadClass(WindowExtensionsConstants.WINDOW_EXTENSIONS_PROVIDER_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isWindowExtensionsValid$lambda$0(SafeWindowExtensionsProvider safeWindowExtensionsProvider) throws NoSuchMethodException, ClassNotFoundException {
        Method declaredMethod = safeWindowExtensionsProvider.getWindowExtensionsProviderClass().getDeclaredMethod("getWindowExtensions", null);
        Class<?> windowExtensionsClass$window_release = safeWindowExtensionsProvider.getWindowExtensionsClass$window_release();
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        declaredMethod.getClass();
        return reflectionUtils.doesReturn$window_release(declaredMethod, windowExtensionsClass$window_release) && reflectionUtils.isPublic$window_release(declaredMethod);
    }

    public final WindowExtensions getWindowExtensions() {
        try {
            if (isWindowExtensionsPresent() && isWindowExtensionsValid$window_release()) {
                return WindowExtensionsProvider.getWindowExtensions();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final Class<?> getWindowExtensionsClass$window_release() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.WINDOW_EXTENSIONS_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    public final boolean isWindowExtensionsValid$window_release() {
        return isWindowExtensionsPresent() && ReflectionUtils.validateReflection$window_release("WindowExtensionsProvider#getWindowExtensions is not valid", new q(this, 5));
    }
}
