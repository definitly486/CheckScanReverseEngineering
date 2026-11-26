package defpackage;

import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class zn2 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zn2(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((IOException) obj).getClass();
                byte[] bArr = gb9.a;
                ((un2) obj2).j = true;
                break;
            default:
                int iIntValue = ((Number) obj).intValue();
                StatisticsFragment statisticsFragment = (StatisticsFragment) obj2;
                ze4<Object>[] ze4VarArr = StatisticsFragment.q;
                statisticsFragment.r(iIntValue);
                statisticsFragment.p();
                break;
        }
        return j59.a;
    }
}
