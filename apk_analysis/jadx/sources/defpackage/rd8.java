package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.support.databinding.ItemSupportChildButtonBinding;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class rd8 extends vd9<sd8, ItemSupportChildButtonBinding> {
    public final SupportQuestionsPresenter b;

    public rd8(SupportQuestionsPresenter supportQuestionsPresenter) {
        super(pd8.c);
        this.b = supportQuestionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof sd8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, sd8 sd8Var) {
        ItemSupportChildButtonBinding itemSupportChildButtonBinding = (ItemSupportChildButtonBinding) viewBinding;
        sd8 sd8Var2 = sd8Var;
        itemSupportChildButtonBinding.getClass();
        itemSupportChildButtonBinding.btnAction.setText(sd8Var2.b.a);
        TextView textView = itemSupportChildButtonBinding.btnAction;
        textView.getClass();
        textView.setOnClickListener(new lb7(new qd8(this, sd8Var2)));
    }
}
