package defpackage;

import android.content.Context;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolderKt;
import androidx.compose.material3.DateRangePickerKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import yads.gf0;
import yads.pm6;
import yads.tm6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fb2 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fb2(int i, Object obj, Object obj2) {
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
                return Boolean.valueOf(DateRangePickerKt.customScrollActions$lambda$17((LazyListState) obj2, (y22) obj));
            case 1:
                return LazySaveableStateHolderKt.LazySaveableStateHolderProvider$lambda$0$0((SaveableStateRegistry) obj2, (SaveableStateHolder) obj);
            case 2:
                return gf0.b((Context) obj2, (gf0) obj);
            default:
                return pm6.a((pm6) obj2, (tm6) obj);
        }
    }
}
