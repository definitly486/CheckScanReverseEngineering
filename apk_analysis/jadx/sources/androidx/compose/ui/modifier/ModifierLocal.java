package androidx.compose.ui.modifier;

import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ModifierLocal<T> {
    public static final int $stable = 0;
    private final ll3<T> defaultFactory;

    /* JADX WARN: Multi-variable type inference failed */
    private ModifierLocal(ll3<? extends T> ll3Var) {
        this.defaultFactory = ll3Var;
    }

    public final ll3<T> getDefaultFactory$ui() {
        return this.defaultFactory;
    }

    public /* synthetic */ ModifierLocal(ll3 ll3Var, jh2 jh2Var) {
        this(ll3Var);
    }
}
