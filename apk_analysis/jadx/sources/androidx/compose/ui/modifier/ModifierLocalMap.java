package androidx.compose.ui.modifier;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ModifierLocalMap {
    public static final int $stable = 0;

    public /* synthetic */ ModifierLocalMap(jh2 jh2Var) {
        this();
    }

    public abstract boolean contains$ui(ModifierLocal<?> modifierLocal);

    public abstract <T> T get$ui(ModifierLocal<T> modifierLocal);

    /* JADX INFO: renamed from: set$ui */
    public abstract <T> void mo7855set$ui(ModifierLocal<T> modifierLocal, T t);

    private ModifierLocalMap() {
    }
}
