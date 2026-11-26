package defpackage;

import com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class oe1 extends gh4 implements nl3<Long, j59> {
    public final /* synthetic */ ChequePageFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oe1(ChequePageFragment chequePageFragment) {
        super(1);
        this.f = chequePageFragment;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Long l) {
        long jLongValue = l.longValue();
        Map mapSingletonMap = Collections.singletonMap("BONUS_ID", Long.valueOf(jLongValue));
        mapSingletonMap.getClass();
        Map mapSingletonMap2 = Collections.singletonMap("Open bonus", mapSingletonMap);
        mapSingletonMap2.getClass();
        Map mapSingletonMap3 = Collections.singletonMap("Cheque detail", mapSingletonMap2);
        mapSingletonMap3.getClass();
        new kd.g.b.a("Cheques event", mapSingletonMap3).a();
        this.f.o().onPreviewCardClicked(jLongValue);
        return j59.a;
    }
}
