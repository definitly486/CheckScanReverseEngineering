package androidx.compose.runtime.saveable;

import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.v39;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ListSaverKt {
    public static final <Original, Saveable> Saver<Original, Object> listSaver(final bm3<? super SaverScope, ? super Original, ? extends List<? extends Saveable>> bm3Var, nl3<? super List<? extends Saveable>, ? extends Original> nl3Var) {
        bm3 bm3Var2 = new bm3() { // from class: nr4
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return ListSaverKt.listSaver$lambda$0(bm3Var, (SaverScope) obj, obj2);
            }
        };
        nl3Var.getClass();
        v39.c(1, nl3Var);
        return SaverKt.Saver(bm3Var2, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object listSaver$lambda$0(bm3 bm3Var, SaverScope saverScope, Object obj) {
        List list = (List) bm3Var.invoke(saverScope, obj);
        List list2 = list;
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            Object obj2 = list.get(i);
            if (obj2 != null && !saverScope.canBeSaved(obj2)) {
                throw new IllegalArgumentException(("item at index " + i + " can't be saved: " + obj2).toString());
            }
        }
        if (list2.isEmpty()) {
            return null;
        }
        return new ArrayList(list2);
    }
}
