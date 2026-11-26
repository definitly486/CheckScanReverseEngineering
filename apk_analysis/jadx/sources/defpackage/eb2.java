package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.DateRangePickerKt;
import com.yandex.mobile.ads.common.AdRequestError;
import yads.pm6;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class eb2 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ eb2(int i, Object obj, Object obj2) {
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
                return Boolean.valueOf(DateRangePickerKt.customScrollActions$lambda$16((LazyListState) obj2, (y22) obj));
            default:
                return pm6.a((pm6) obj2, (AdRequestError) obj);
        }
    }
}
