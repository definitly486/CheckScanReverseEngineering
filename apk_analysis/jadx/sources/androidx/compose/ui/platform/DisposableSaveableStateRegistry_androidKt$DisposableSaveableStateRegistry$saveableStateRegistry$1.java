package androidx.compose.ui.platform;

import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1 extends gh4 implements nl3<Object, Boolean> {
    public static final DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1 INSTANCE = new DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1();

    public DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.nl3
    public final Boolean invoke(Object obj) {
        return Boolean.valueOf(DisposableSaveableStateRegistry_androidKt.canBeSavedToBundle(obj));
    }
}
