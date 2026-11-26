package defpackage;

import android.widget.CheckBox;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.auth.databinding.ItemRvAuthAgreementBinding;
import com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class ob extends vd9<ub, ItemRvAuthAgreementBinding> {
    public final v05 b;
    public final PhoneSignUpPresenter c;

    /* JADX INFO: loaded from: classes5.dex */
    public interface a {
        void onAgreementClicked(ub.a aVar);
    }

    public ob(v05 v05Var, PhoneSignUpPresenter phoneSignUpPresenter) {
        super(nb.c);
        this.b = v05Var;
        this.c = phoneSignUpPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ub;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ub ubVar) {
        ItemRvAuthAgreementBinding itemRvAuthAgreementBinding = (ItemRvAuthAgreementBinding) viewBinding;
        ub ubVar2 = ubVar;
        itemRvAuthAgreementBinding.getClass();
        this.b.a(itemRvAuthAgreementBinding.tvAgreement, ubVar2.b);
        CheckBox checkBox = itemRvAuthAgreementBinding.cbAgreement;
        checkBox.setChecked(ubVar2.c);
        checkBox.setOnClickListener(new lb7(new pb(this, ubVar2, 0)));
    }
}
