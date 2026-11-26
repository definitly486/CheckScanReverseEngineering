package androidx.window;

import androidx.window.core.ExtensionsUtil;
import defpackage.jh2;
import defpackage.n7;
import defpackage.y74;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WindowSdkExtensions {
    public static final Companion Companion = new Companion(null);
    private static WindowSdkExtensionsDecorator decorator = EmptyDecoratorWindowSdk.INSTANCE;
    private final int extensionVersion = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();

    public static final WindowSdkExtensions getInstance() {
        return Companion.getInstance();
    }

    public int getExtensionVersion() {
        return this.extensionVersion;
    }

    public final void requireExtensionVersion$window_release(y74 y74Var) {
        y74Var.getClass();
        int i = y74Var.b;
        int i2 = y74Var.c;
        int extensionVersion = getExtensionVersion();
        if (i > extensionVersion || extensionVersion > i2) {
            StringBuilder sb = new StringBuilder("This API requires extension version ");
            sb.append(y74Var);
            int extensionVersion2 = getExtensionVersion();
            sb.append(", but the device is on ");
            sb.append(extensionVersion2);
            throw new UnsupportedOperationException(sb.toString());
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final WindowSdkExtensions getInstance() {
            return WindowSdkExtensions.decorator.decorate(new WindowSdkExtensions() { // from class: androidx.window.WindowSdkExtensions$Companion$getInstance$1
            });
        }

        public final void overrideDecorator(WindowSdkExtensionsDecorator windowSdkExtensionsDecorator) {
            windowSdkExtensionsDecorator.getClass();
            WindowSdkExtensions.decorator = windowSdkExtensionsDecorator;
        }

        public final void reset() {
            WindowSdkExtensions.decorator = EmptyDecoratorWindowSdk.INSTANCE;
        }

        private Companion() {
        }
    }

    public final void requireExtensionVersion$window_release(int i) {
        if (getExtensionVersion() >= i) {
            return;
        }
        StringBuilder sbC = n7.c(i, "This API requires extension version ", ", but the device is on ");
        sbC.append(getExtensionVersion());
        throw new UnsupportedOperationException(sbC.toString());
    }
}
