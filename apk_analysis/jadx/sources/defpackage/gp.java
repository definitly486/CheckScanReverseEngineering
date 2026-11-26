package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatDelegate;
import com.tapjoy.TJSetUserIDListener;
import com.tapjoy.TJUser;
import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import com.warefly.checkscan.calendarspinner.widgets.WheelPicker;
import io.appmetrica.analytics.coreutils.internal.buffering.DeferredBatchExecutor;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gp implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gp(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AppCompatDelegate.syncRequestedAndStoredLocales((Context) obj);
                break;
            case 1:
                DateTimePickerSpinner dateTimePickerSpinner = (DateTimePickerSpinner) obj;
                Date date = dateTimePickerSpinner.j;
                if (date != null) {
                    Date date2 = dateTimePickerSpinner.getDate();
                    m92 m92Var = dateTimePickerSpinner.b;
                    if (m92Var.a(date2).after(m92Var.a(dateTimePickerSpinner.j))) {
                        for (WheelPicker wheelPicker : dateTimePickerSpinner.f) {
                            wheelPicker.o(wheelPicker.g(date));
                        }
                    }
                }
                break;
            case 2:
                DeferredBatchExecutor.a((DeferredBatchExecutor) obj);
                break;
            default:
                TJUser.d((TJSetUserIDListener) obj);
                break;
        }
    }
}
