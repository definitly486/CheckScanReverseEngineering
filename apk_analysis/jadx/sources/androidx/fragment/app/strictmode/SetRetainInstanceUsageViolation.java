package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes3.dex */
public final class SetRetainInstanceUsageViolation extends RetainInstanceUsageViolation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetRetainInstanceUsageViolation(Fragment fragment) {
        super(fragment, "Attempting to set retain instance for fragment " + fragment);
        fragment.getClass();
    }
}
