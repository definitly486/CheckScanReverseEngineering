package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RetainInstanceUsageViolation extends Violation {
    public /* synthetic */ RetainInstanceUsageViolation(Fragment fragment, String str, int i, jh2 jh2Var) {
        this(fragment, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetainInstanceUsageViolation(Fragment fragment, String str) {
        super(fragment, str);
        fragment.getClass();
    }
}
