package defpackage;

import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qh1 extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
    public final /* synthetic */ ChequesExportFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qh1(ChequesExportFragment chequesExportFragment) {
        super(4);
        this.f = chequesExportFragment;
    }

    @Override // defpackage.fm3
    public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
        CharSequence charSequence2 = charSequence;
        num.intValue();
        num2.intValue();
        num3.intValue();
        charSequence2.getClass();
        this.f.q().onEmailChanged(charSequence2.toString());
        return j59.a;
    }
}
