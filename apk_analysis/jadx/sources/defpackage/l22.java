package defpackage;

import android.view.View;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.DateRangePickerStateImpl;
import androidx.compose.material3.SelectableDates;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l22 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ l22(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return CoroutineAdaptersKt.asListenableFuture$lambda$1$0((CallbackToFutureAdapter.Completer) obj3, (mk2) obj2, (Throwable) obj);
            case 1:
                return DateRangePickerStateImpl.Companion.Saver$lambda$1((SelectableDates) obj3, (Locale) obj2, (List) obj);
            default:
                return WindowInsetsHolder.Companion.current$lambda$0$0((WindowInsetsHolder) obj3, (View) obj2, (DisposableEffectScope) obj);
        }
    }
}
