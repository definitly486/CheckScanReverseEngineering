package defpackage;

import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportFragment;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class rh1 extends gh4 implements bm3<Calendar, Calendar, j59> {
    public final /* synthetic */ ChequesExportFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rh1(ChequesExportFragment chequesExportFragment) {
        super(2);
        this.f = chequesExportFragment;
    }

    @Override // defpackage.bm3
    public final j59 invoke(Calendar calendar, Calendar calendar2) {
        Calendar calendar3 = calendar;
        Calendar calendar4 = calendar2;
        calendar3.getClass();
        calendar4.getClass();
        this.f.q().onDateRangeSelected(calendar3.getTimeInMillis(), calendar4.getTimeInMillis());
        return j59.a;
    }
}
