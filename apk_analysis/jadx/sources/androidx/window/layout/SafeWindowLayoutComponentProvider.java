package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import androidx.window.SafeWindowExtensionsProvider;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.aw4;
import defpackage.h26;
import defpackage.js3;
import defpackage.pr1;
import defpackage.qr1;
import defpackage.rr1;
import defpackage.s;
import defpackage.x07;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SafeWindowLayoutComponentProvider {
    private final ConsumerAdapter consumerAdapter;
    private final ClassLoader loader;
    private final SafeWindowExtensionsProvider safeWindowExtensionsProvider;

    public SafeWindowLayoutComponentProvider(ClassLoader classLoader, ConsumerAdapter consumerAdapter) {
        classLoader.getClass();
        consumerAdapter.getClass();
        this.loader = classLoader;
        this.consumerAdapter = consumerAdapter;
        this.safeWindowExtensionsProvider = new SafeWindowExtensionsProvider(classLoader);
    }

    private final boolean canUseWindowLayoutComponent() {
        int safeVendorApiLevel;
        if (!isWindowLayoutComponentAccessible$window_release() || (safeVendorApiLevel = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel()) < 1) {
            return false;
        }
        if (safeVendorApiLevel == 1) {
            return hasValidVendorApiLevel1$window_release();
        }
        return safeVendorApiLevel < 5 ? hasValidVendorApiLevel2$window_release() : hasValidVendorApiLevel6$window_release();
    }

    private final Class<?> getDisplayFoldFeatureClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.DISPLAY_FOLD_FEATURE_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final Class<?> getFoldingFeatureClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.FOLDING_FEATURE_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final Class<?> getSupportedWindowFeaturesClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.SUPPORTED_WINDOW_FEATURES_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final Class<?> getWindowLayoutComponentClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.WINDOW_LAYOUT_COMPONENT_CLASS);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    private final boolean isDisplayFoldFeatureValid() {
        return ReflectionUtils.validateReflection$window_release("DisplayFoldFeature is not valid", new qr1(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isDisplayFoldFeatureValid$lambda$4(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException, ClassNotFoundException {
        Class<?> displayFoldFeatureClass = safeWindowLayoutComponentProvider.getDisplayFoldFeatureClass();
        Method method = displayFoldFeatureClass.getMethod("getType", null);
        Class<?> cls = Integer.TYPE;
        Method method2 = displayFoldFeatureClass.getMethod("hasProperty", cls);
        Method method3 = displayFoldFeatureClass.getMethod("hasProperties", int[].class);
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        if (!reflectionUtils.isPublic$window_release(method) || !reflectionUtils.doesReturn$window_release(method, cls)) {
            return false;
        }
        method2.getClass();
        if (!reflectionUtils.isPublic$window_release(method2)) {
            return false;
        }
        Class<?> cls2 = Boolean.TYPE;
        if (!reflectionUtils.doesReturn$window_release(method2, cls2)) {
            return false;
        }
        method3.getClass();
        return reflectionUtils.isPublic$window_release(method3) && reflectionUtils.doesReturn$window_release(method3, cls2);
    }

    private final boolean isFoldingFeatureValid() {
        return ReflectionUtils.validateReflection$window_release("FoldingFeature class is not valid", new s(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isFoldingFeatureValid$lambda$1(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException, ClassNotFoundException {
        Class<?> foldingFeatureClass = safeWindowLayoutComponentProvider.getFoldingFeatureClass();
        Method method = foldingFeatureClass.getMethod("getBounds", null);
        Method method2 = foldingFeatureClass.getMethod("getType", null);
        Method method3 = foldingFeatureClass.getMethod("getState", null);
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        if (!reflectionUtils.doesReturn$window_release(method, x07.a(Rect.class)) || !reflectionUtils.isPublic$window_release(method)) {
            return false;
        }
        method2.getClass();
        Class cls = Integer.TYPE;
        if (!reflectionUtils.doesReturn$window_release(method2, x07.a(cls)) || !reflectionUtils.isPublic$window_release(method2)) {
            return false;
        }
        method3.getClass();
        return reflectionUtils.doesReturn$window_release(method3, x07.a(cls)) && reflectionUtils.isPublic$window_release(method3);
    }

    private final boolean isGetSupportedWindowFeaturesValid() {
        return ReflectionUtils.validateReflection$window_release("WindowLayoutComponent#getSupportedWindowFeatures is not valid", new rr1(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isGetSupportedWindowFeaturesValid$lambda$6(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException {
        Method method = safeWindowLayoutComponentProvider.getWindowLayoutComponentClass().getMethod("getSupportedWindowFeatures", null);
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        return reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, safeWindowLayoutComponentProvider.getSupportedWindowFeaturesClass());
    }

    private final boolean isMethodWindowLayoutInfoListenerJavaConsumerValid() {
        return ReflectionUtils.validateReflection$window_release("WindowLayoutComponent#addWindowLayoutInfoListener(" + Activity.class.getName() + ", java.util.function.Consumer) is not valid", new aw4(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isMethodWindowLayoutInfoListenerJavaConsumerValid$lambda$2(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException, ClassNotFoundException {
        Class<?> clsConsumerClassOrNull$window_release = safeWindowLayoutComponentProvider.consumerAdapter.consumerClassOrNull$window_release();
        if (clsConsumerClassOrNull$window_release == null) {
            return false;
        }
        Class<?> windowLayoutComponentClass = safeWindowLayoutComponentProvider.getWindowLayoutComponentClass();
        Method method = windowLayoutComponentClass.getMethod("addWindowLayoutInfoListener", Activity.class, clsConsumerClassOrNull$window_release);
        Method method2 = windowLayoutComponentClass.getMethod("removeWindowLayoutInfoListener", clsConsumerClassOrNull$window_release);
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        if (reflectionUtils.isPublic$window_release(method)) {
            method2.getClass();
            if (reflectionUtils.isPublic$window_release(method2)) {
                return true;
            }
        }
        return false;
    }

    private final boolean isMethodWindowLayoutInfoListenerWindowConsumerValid() {
        return ReflectionUtils.validateReflection$window_release("WindowLayoutComponent#addWindowLayoutInfoListener(" + Context.class.getName() + ", androidx.window.extensions.core.util.function.Consumer) is not valid", new js3(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isMethodWindowLayoutInfoListenerWindowConsumerValid$lambda$3(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException, ClassNotFoundException {
        Class<?> windowLayoutComponentClass = safeWindowLayoutComponentProvider.getWindowLayoutComponentClass();
        Method method = windowLayoutComponentClass.getMethod("addWindowLayoutInfoListener", Context.class, Consumer.class);
        Method method2 = windowLayoutComponentClass.getMethod("removeWindowLayoutInfoListener", Consumer.class);
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        if (!reflectionUtils.isPublic$window_release(method)) {
            return false;
        }
        method2.getClass();
        return reflectionUtils.isPublic$window_release(method2);
    }

    private final boolean isSupportedWindowFeaturesValid() {
        return ReflectionUtils.validateReflection$window_release("SupportedWindowFeatures is not valid", new pr1(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isSupportedWindowFeaturesValid$lambda$5(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException {
        Method method = safeWindowLayoutComponentProvider.getSupportedWindowFeaturesClass().getMethod("getDisplayFoldFeatures", null);
        Type genericReturnType = method.getGenericReturnType();
        genericReturnType.getClass();
        Type type = ((ParameterizedType) genericReturnType).getActualTypeArguments()[0];
        type.getClass();
        Class cls = (Class) type;
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        return reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, List.class) && cls.equals(safeWindowLayoutComponentProvider.getDisplayFoldFeatureClass());
    }

    private final boolean isWindowLayoutProviderValid() {
        return ReflectionUtils.validateReflection$window_release("WindowExtensions#getWindowLayoutComponent is not valid", new h26(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isWindowLayoutProviderValid$lambda$0(SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider) throws NoSuchMethodException, ClassNotFoundException {
        Method method = safeWindowLayoutComponentProvider.safeWindowExtensionsProvider.getWindowExtensionsClass$window_release().getMethod("getWindowLayoutComponent", null);
        Class<?> windowLayoutComponentClass = safeWindowLayoutComponentProvider.getWindowLayoutComponentClass();
        ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
        method.getClass();
        return reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, windowLayoutComponentClass);
    }

    public final WindowLayoutComponent getWindowLayoutComponent() {
        if (!canUseWindowLayoutComponent()) {
            return null;
        }
        try {
            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    public final boolean hasValidVendorApiLevel1$window_release() {
        return isMethodWindowLayoutInfoListenerJavaConsumerValid();
    }

    public final boolean hasValidVendorApiLevel2$window_release() {
        return hasValidVendorApiLevel1$window_release() && isMethodWindowLayoutInfoListenerWindowConsumerValid();
    }

    public final boolean hasValidVendorApiLevel6$window_release() {
        return hasValidVendorApiLevel2$window_release() && isDisplayFoldFeatureValid() && isSupportedWindowFeaturesValid() && isGetSupportedWindowFeaturesValid();
    }

    public final boolean isWindowLayoutComponentAccessible$window_release() {
        return this.safeWindowExtensionsProvider.isWindowExtensionsValid$window_release() && isWindowLayoutProviderValid() && isFoldingFeatureValid();
    }
}
