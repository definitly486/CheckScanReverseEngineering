package androidx.compose.material3;

import androidx.compose.ui.window.SecureFlagPolicy;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.tg;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalBottomSheetProperties {
    public static final int $stable = 0;
    private final Boolean isAppearanceLightNavigationBars;
    private final Boolean isAppearanceLightStatusBars;
    private final SecureFlagPolicy securePolicy;
    private final boolean shouldDismissOnBackPress;
    private final boolean shouldDismissOnClickOutside;

    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, int i, jh2 jh2Var) {
        this(z, z2, (i & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 8) != 0 ? true : z3, (i & 16) != 0 ? true : z4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ModalBottomSheetProperties)) {
            return false;
        }
        ModalBottomSheetProperties modalBottomSheetProperties = (ModalBottomSheetProperties) obj;
        return this.securePolicy == modalBottomSheetProperties.securePolicy && aa4.e(this.isAppearanceLightStatusBars, modalBottomSheetProperties.isAppearanceLightStatusBars) && aa4.e(this.isAppearanceLightNavigationBars, modalBottomSheetProperties.isAppearanceLightNavigationBars) && this.shouldDismissOnClickOutside == modalBottomSheetProperties.shouldDismissOnClickOutside && this.shouldDismissOnBackPress == modalBottomSheetProperties.shouldDismissOnBackPress;
    }

    public final SecureFlagPolicy getSecurePolicy() {
        return this.securePolicy;
    }

    public final boolean getShouldDismissOnBackPress() {
        return this.shouldDismissOnBackPress;
    }

    public int hashCode() {
        int iC = tg.c(this.securePolicy.hashCode() * 31, 31, this.shouldDismissOnBackPress);
        Boolean bool = this.isAppearanceLightStatusBars;
        int iHashCode = (iC + (bool != null ? bool.hashCode() : 0)) * 31;
        Boolean bool2 = this.isAppearanceLightNavigationBars;
        return Boolean.hashCode(this.shouldDismissOnClickOutside) + ((iHashCode + (bool2 != null ? bool2.hashCode() : 0)) * 31);
    }

    public final Boolean isAppearanceLightNavigationBars$material3() {
        return this.isAppearanceLightNavigationBars;
    }

    public final Boolean isAppearanceLightStatusBars$material3() {
        return this.isAppearanceLightStatusBars;
    }

    public final boolean shouldDismissOnClickOutside() {
        return this.shouldDismissOnClickOutside;
    }

    public ModalBottomSheetProperties(boolean z, boolean z2) {
        this.securePolicy = SecureFlagPolicy.Inherit;
        this.shouldDismissOnBackPress = z;
        this.shouldDismissOnClickOutside = z2;
        this.isAppearanceLightNavigationBars = null;
        this.isAppearanceLightStatusBars = null;
    }

    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2);
    }

    public /* synthetic */ ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z, boolean z2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 2) != 0 ? true : z, (i & 4) != 0 ? true : z2);
    }

    public ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z, boolean z2) {
        this.securePolicy = secureFlagPolicy;
        this.shouldDismissOnBackPress = z;
        this.shouldDismissOnClickOutside = z2;
        this.isAppearanceLightNavigationBars = null;
        this.isAppearanceLightStatusBars = null;
    }

    public ModalBottomSheetProperties() {
        this.securePolicy = SecureFlagPolicy.Inherit;
        this.shouldDismissOnBackPress = true;
        this.shouldDismissOnClickOutside = true;
        this.isAppearanceLightStatusBars = null;
        this.isAppearanceLightNavigationBars = null;
    }

    public ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4) {
        this.shouldDismissOnBackPress = z3;
        this.shouldDismissOnClickOutside = z4;
        this.securePolicy = secureFlagPolicy;
        this.isAppearanceLightStatusBars = Boolean.valueOf(z);
        this.isAppearanceLightNavigationBars = Boolean.valueOf(z2);
    }

    @ul2
    public /* synthetic */ ModalBottomSheetProperties(boolean z) {
        this(z, true);
    }

    public /* synthetic */ ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 2) != 0 ? true : z);
    }

    @ul2
    public /* synthetic */ ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z) {
        this(secureFlagPolicy, z, true);
    }

    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, int i, jh2 jh2Var) {
        this(z, z2, (i & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 8) != 0 ? true : z3);
    }

    @ul2
    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3) {
        this.shouldDismissOnBackPress = z3;
        this.shouldDismissOnClickOutside = true;
        this.securePolicy = secureFlagPolicy;
        this.isAppearanceLightStatusBars = Boolean.valueOf(z);
        this.isAppearanceLightNavigationBars = Boolean.valueOf(z2);
    }
}
