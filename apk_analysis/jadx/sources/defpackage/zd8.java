package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.support.databinding.ItemSupportChildQuestionBinding;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class zd8 extends vd9<ae8, ItemSupportChildQuestionBinding> {
    public final SupportQuestionsPresenter b;

    public interface a {
        void onChildQuestionClicked(int i, int i2);
    }

    public zd8(SupportQuestionsPresenter supportQuestionsPresenter) {
        super(yd8.c);
        this.b = supportQuestionsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ae8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ae8 ae8Var) {
        ItemSupportChildQuestionBinding itemSupportChildQuestionBinding = (ItemSupportChildQuestionBinding) viewBinding;
        final ae8 ae8Var2 = ae8Var;
        itemSupportChildQuestionBinding.getClass();
        itemSupportChildQuestionBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: xd8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SupportQuestionsPresenter supportQuestionsPresenter = this.b.b;
                ae8 ae8Var3 = ae8Var2;
                supportQuestionsPresenter.onChildQuestionClicked(ae8Var3.a, ae8Var3.b);
            }
        });
        itemSupportChildQuestionBinding.tvTitle.setText(ae8Var2.c);
        itemSupportChildQuestionBinding.ivArrow.setImageResource(ae8Var2.d ? R.drawable.ic_arrow_filled_down_24 : R.drawable.ic_arrow_filled_right_24);
    }
}
