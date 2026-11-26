package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TargetFragmentUsageViolation extends Violation {
    public /* synthetic */ TargetFragmentUsageViolation(Fragment fragment, String str, int i, jh2 jh2Var) {
        this(fragment, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TargetFragmentUsageViolation(Fragment fragment, String str) {
        super(fragment, str);
        fragment.getClass();
    }
}
