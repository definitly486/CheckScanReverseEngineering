package androidx.compose.material3;

import androidx.compose.ui.window.SecureFlagPolicy;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalWideNavigationRailProperties {
    public static final int $stable = 0;
    private final SecureFlagPolicy securePolicy;
    private final boolean shouldDismissOnBackPress;

    public /* synthetic */ ModalWideNavigationRailProperties(SecureFlagPolicy secureFlagPolicy, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 2) != 0 ? true : z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ModalWideNavigationRailProperties) && this.securePolicy == ((ModalWideNavigationRailProperties) obj).securePolicy;
    }

    public final SecureFlagPolicy getSecurePolicy() {
        return this.securePolicy;
    }

    public final boolean getShouldDismissOnBackPress() {
        return this.shouldDismissOnBackPress;
    }

    public int hashCode() {
        return Boolean.hashCode(this.shouldDismissOnBackPress) + (this.securePolicy.hashCode() * 31);
    }

    public ModalWideNavigationRailProperties(SecureFlagPolicy secureFlagPolicy, boolean z) {
        this.securePolicy = secureFlagPolicy;
        this.shouldDismissOnBackPress = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ModalWideNavigationRailProperties() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ModalWideNavigationRailProperties(boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z);
    }

    public ModalWideNavigationRailProperties(boolean z) {
        this(SecureFlagPolicy.Inherit, z);
    }
}
