package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemWithdrawalRegisterBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class bk9 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ ak9 f;
    public final /* synthetic */ ItemWithdrawalRegisterBinding g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk9(ak9 ak9Var, ItemWithdrawalRegisterBinding itemWithdrawalRegisterBinding) {
        super(1);
        this.f = ak9Var;
        this.g = itemWithdrawalRegisterBinding;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        rj9 rj9Var = this.f.b;
        Object tag = this.g.getRoot().getTag();
        tag.getClass();
        rj9Var.onWithdrawClicked((wi9) tag, null);
        return j59.a;
    }
}
