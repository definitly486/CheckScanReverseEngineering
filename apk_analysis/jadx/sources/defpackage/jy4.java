package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class jy4 extends gh4 implements ll3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ jy4(Object obj, int i) {
        super(0);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.f;
        Object obj = this.g;
        switch (i) {
            case 0:
                return "Insert new event with name: " + ((ya5) obj).a;
            default:
                RedirectDialog redirectDialog = (RedirectDialog) obj;
                redirectDialog.c().openAdaptiveLink(redirectDialog.d);
                return j59.a;
        }
    }
}
