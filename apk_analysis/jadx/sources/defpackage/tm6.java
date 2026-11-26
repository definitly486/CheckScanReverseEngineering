package defpackage;

import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;

/* JADX INFO: loaded from: classes5.dex */
public final class tm6 implements sm6 {
    public final o87 a;

    public tm6(o87 o87Var) {
        this.a = o87Var;
    }

    @Override // defpackage.sm6
    public final void a() {
        this.a.c();
    }

    @Override // defpackage.sm6
    public final void b() {
        this.a.g(e.a);
    }

    @Override // defpackage.sm6
    public final void onEditPersonalDataClicked() {
        this.a.d(new qh7(new ProfileReason.FillMyData(false)));
    }

    @Override // defpackage.sm6
    public final void onElectroChequeClick() {
        this.a.d(lg7.a);
    }

    @Override // defpackage.sm6
    public final void onFavouriteClick() {
        this.a.d(new og7(true));
    }

    @Override // defpackage.sm6
    public final void onFeedbackClick() {
        this.a.d(new tf8(0));
    }

    @Override // defpackage.sm6
    public final void onHistoryShopClick() {
        this.a.d(new og7(false));
    }
}
