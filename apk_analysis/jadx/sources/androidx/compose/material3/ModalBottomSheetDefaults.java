package androidx.compose.material3;

import androidx.compose.ui.window.SecureFlagPolicy;
import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalBottomSheetDefaults {
    public static final int $stable = 0;
    public static final ModalBottomSheetDefaults INSTANCE = new ModalBottomSheetDefaults();
    private static final ModalBottomSheetProperties properties = new ModalBottomSheetProperties();

    private ModalBottomSheetDefaults() {
    }

    public static /* synthetic */ ModalBottomSheetProperties properties$default(ModalBottomSheetDefaults modalBottomSheetDefaults, SecureFlagPolicy secureFlagPolicy, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            secureFlagPolicy = SecureFlagPolicy.Inherit;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return modalBottomSheetDefaults.properties(secureFlagPolicy, z, z2);
    }

    public final ModalBottomSheetProperties getProperties() {
        return properties;
    }

    @ul2
    public final ModalBottomSheetProperties properties(SecureFlagPolicy secureFlagPolicy, boolean z, boolean z2) {
        return new ModalBottomSheetProperties(secureFlagPolicy, z2, false, 4, (jh2) null);
    }
}
