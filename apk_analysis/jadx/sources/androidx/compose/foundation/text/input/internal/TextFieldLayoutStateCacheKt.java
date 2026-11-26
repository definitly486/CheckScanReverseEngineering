package androidx.compose.foundation.text.input.internal;

import defpackage.ar4;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldLayoutStateCacheKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> mergeNullableLists(List<? extends T> list, List<? extends T> list2) {
        List<? extends T> list3;
        List<? extends T> list4 = list;
        if ((list4 == null || list4.isEmpty()) && ((list3 = list2) == null || list3.isEmpty())) {
            return null;
        }
        if (list4 == null || list4.isEmpty()) {
            return list2;
        }
        List<? extends T> list5 = list2;
        if (list5 == null || list5.isEmpty()) {
            return list;
        }
        ar4 ar4VarE = u96.e();
        ar4VarE.addAll(list4);
        ar4VarE.addAll(list5);
        return u96.d(ar4VarE);
    }
}
