package defpackage;

import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class bi1 extends gh4 implements bm3<Calendar, Calendar, j59> {
    public final /* synthetic */ ChequesFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bi1(ChequesFragment chequesFragment) {
        super(2);
        this.f = chequesFragment;
    }

    @Override // defpackage.bm3
    public final j59 invoke(Calendar calendar, Calendar calendar2) {
        Calendar calendar3 = calendar;
        Calendar calendar4 = calendar2;
        calendar3.getClass();
        calendar4.getClass();
        this.f.o().onDateRangeSelected(calendar3.getTimeInMillis(), calendar4.getTimeInMillis());
        return j59.a;
    }
}
