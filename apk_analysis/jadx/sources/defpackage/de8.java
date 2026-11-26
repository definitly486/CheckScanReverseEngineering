package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.support.databinding.ItemSupportChildTextBinding;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class de8 extends vd9<ee8, ItemSupportChildTextBinding> {
    public final SupportQuestionsPresenter b;

    public de8(SupportQuestionsPresenter supportQuestionsPresenter) {
        super(be8.c);
        this.b = supportQuestionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ee8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ee8 ee8Var) {
        ItemSupportChildTextBinding itemSupportChildTextBinding = (ItemSupportChildTextBinding) viewBinding;
        itemSupportChildTextBinding.getClass();
        TextView textView = itemSupportChildTextBinding.tvText;
        textView.getClass();
        at8.a(textView, ee8Var.b, new ce8(1, this.b, sv6.class, "onQuestionTextLinkClicked", "onQuestionTextLinkClicked(Ljava/lang/String;)V", 0));
    }
}
