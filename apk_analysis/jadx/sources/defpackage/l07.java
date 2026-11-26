package defpackage;

import android.content.Context;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class l07 extends gh4 implements nl3<Long, j59> {
    public final /* synthetic */ RedirectDialog f;
    public final /* synthetic */ Context g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l07(RedirectDialog redirectDialog, Context context) {
        super(1);
        this.f = redirectDialog;
        this.g = context;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Long l) {
        long jLongValue = (l.longValue() / 1000) % 60;
        this.f.a().tvDescriptionInfo.setText(this.g.getString(R.string.redirect_dialog_expiration_text, Long.valueOf(jLongValue)));
        return j59.a;
    }
}
