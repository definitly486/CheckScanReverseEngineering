package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Violation extends RuntimeException {
    private final Fragment fragment;

    public /* synthetic */ Violation(Fragment fragment, String str, int i, jh2 jh2Var) {
        this(fragment, (i & 2) != 0 ? null : str);
    }

    public final Fragment getFragment() {
        return this.fragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(Fragment fragment, String str) {
        super(str);
        fragment.getClass();
        this.fragment = fragment;
    }
}
