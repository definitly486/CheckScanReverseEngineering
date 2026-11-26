package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.SearchBarKt;
import androidx.compose.material3.SearchBarState;
import androidx.compose.runtime.retain.RetainKt;
import androidx.compose.runtime.retain.RetainedValueHolder;
import androidx.compose.runtime.retain.RetainedValuesStore;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oa2 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ oa2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DatePickerKt.DatePickerContent$lambda$36$lambda$29$lambda$28((y22) obj2, (LazyListState) obj);
            case 1:
                return RetainKt.retainImpl$lambda$1$0((RetainedValueHolder) obj2, (RetainedValuesStore) obj);
            default:
                return SearchBarKt.ExpandedDockedSearchBar_qKj4JfE$lambda$13$lambda$12((y22) obj2, (SearchBarState) obj);
        }
    }
}
