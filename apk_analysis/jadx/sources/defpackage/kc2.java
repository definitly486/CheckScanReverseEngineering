package defpackage;

import androidx.camera.core.processing.SurfaceProcessorNode;
import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import com.warefly.checkscan.calendarspinner.widgets.WheelPicker;
import io.appmetrica.analytics.coreutils.internal.buffering.DeferredBatchExecutor;
import io.appmetrica.analytics.push.impl.G;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kc2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kc2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                DateTimePickerSpinner dateTimePickerSpinner = (DateTimePickerSpinner) obj;
                Date date = dateTimePickerSpinner.i;
                if (date != null) {
                    m92 m92Var = dateTimePickerSpinner.b;
                    if (m92Var.a(date).before(m92Var.a(dateTimePickerSpinner.i))) {
                        for (WheelPicker wheelPicker : dateTimePickerSpinner.f) {
                            wheelPicker.o(wheelPicker.g(date));
                        }
                    }
                }
                break;
            case 1:
                DeferredBatchExecutor.b((DeferredBatchExecutor) obj);
                break;
            case 2:
                ((SurfaceProcessorNode) obj).lambda$release$2();
                break;
            case 3:
                G.a((G) obj);
                break;
            default:
                s0a s0aVar = (s0a) obj;
                s0a.b bVar = s0aVar.b;
                if (bVar != null) {
                    bVar.a();
                    s0aVar.b = null;
                }
                break;
        }
    }
}
