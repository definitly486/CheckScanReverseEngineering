package androidx.compose.runtime.composer.linkbuffer;

import defpackage.nl3;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkGroupSourceInformationKt {
    private static final <T> int fastIndexOf(ArrayList<T> arrayList, nl3<? super T, Boolean> nl3Var) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (nl3Var.invoke(arrayList.get(i)).booleanValue()) {
                return i;
            }
        }
        return -1;
    }

    private static final <T> T fastLastOrNull(ArrayList<T> arrayList, nl3<? super T, Boolean> nl3Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            T t = arrayList.get(size);
            if (nl3Var.invoke(t).booleanValue()) {
                return t;
            }
        }
        return null;
    }
}
