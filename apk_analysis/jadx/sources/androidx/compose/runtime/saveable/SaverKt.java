package androidx.compose.runtime.saveable;

import defpackage.bm3;
import defpackage.hc7;
import defpackage.nl3;
import defpackage.us2;

/* JADX INFO: loaded from: classes2.dex */
public final class SaverKt {
    private static final Saver<Object, Object> AutoSaver = Saver(new hc7(), new us2(5));

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AutoSaver$lambda$0(SaverScope saverScope, Object obj) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AutoSaver$lambda$1(Object obj) {
        return obj;
    }

    public static final <Original, Saveable> Saver<Original, Saveable> Saver(final bm3<? super SaverScope, ? super Original, ? extends Saveable> bm3Var, final nl3<? super Saveable, ? extends Original> nl3Var) {
        return new Saver<Original, Saveable>() { // from class: androidx.compose.runtime.saveable.SaverKt.Saver.1
            @Override // androidx.compose.runtime.saveable.Saver
            public Original restore(Saveable saveable) {
                return nl3Var.invoke(saveable);
            }

            @Override // androidx.compose.runtime.saveable.Saver
            public Saveable save(SaverScope saverScope, Original original) {
                return bm3Var.invoke(saverScope, original);
            }
        };
    }

    public static final <T> Saver<T, Object> autoSaver() {
        Saver<T, Object> saver = (Saver<T, Object>) AutoSaver;
        saver.getClass();
        return saver;
    }
}
