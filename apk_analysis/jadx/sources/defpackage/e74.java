package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.insuranceShowcase.databinding.ItemInsuranceShowcaseDescriptionBinding;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class e74 extends vd9<f74, ItemInsuranceShowcaseDescriptionBinding> {
    public final InsuranceShowcasePresenter b;

    public interface a {
        void onHideHelpInfoClicked(boolean z);
    }

    public e74(InsuranceShowcasePresenter insuranceShowcasePresenter) {
        super(d74.c);
        this.b = insuranceShowcasePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof f74;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, f74 f74Var) {
        ItemInsuranceShowcaseDescriptionBinding itemInsuranceShowcaseDescriptionBinding = (ItemInsuranceShowcaseDescriptionBinding) viewBinding;
        f74 f74Var2 = f74Var;
        itemInsuranceShowcaseDescriptionBinding.getClass();
        itemInsuranceShowcaseDescriptionBinding.tvTitle.setText(f74Var2.a);
        itemInsuranceShowcaseDescriptionBinding.tvDescription.setText(f74Var2.c);
        if (f74Var2.d) {
            com.bumptech.glide.a.d(itemInsuranceShowcaseDescriptionBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_arrow_down)).L(itemInsuranceShowcaseDescriptionBinding.ivArrow);
            TextView textView = itemInsuranceShowcaseDescriptionBinding.tvDescription;
            textView.getClass();
            textView.setVisibility(8);
        } else {
            com.bumptech.glide.a.d(itemInsuranceShowcaseDescriptionBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_arrow_up)).L(itemInsuranceShowcaseDescriptionBinding.ivArrow);
            TextView textView2 = itemInsuranceShowcaseDescriptionBinding.tvDescription;
            textView2.getClass();
            textView2.setVisibility(0);
        }
        com.bumptech.glide.a.d(itemInsuranceShowcaseDescriptionBinding.getRoot().getContext()).h(f74Var2.b).L(itemInsuranceShowcaseDescriptionBinding.ivHelp);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        final ItemInsuranceShowcaseDescriptionBinding itemInsuranceShowcaseDescriptionBinding = (ItemInsuranceShowcaseDescriptionBinding) viewBinding;
        itemInsuranceShowcaseDescriptionBinding.getClass();
        itemInsuranceShowcaseDescriptionBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: c74
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemInsuranceShowcaseDescriptionBinding itemInsuranceShowcaseDescriptionBinding2 = itemInsuranceShowcaseDescriptionBinding;
                TextView textView = itemInsuranceShowcaseDescriptionBinding2.tvDescription;
                textView.getClass();
                TextView textView2 = itemInsuranceShowcaseDescriptionBinding2.tvDescription;
                textView2.getClass();
                textView.setVisibility(textView2.getVisibility() == 0 ? 8 : 0);
                InsuranceShowcasePresenter insuranceShowcasePresenter = this.b;
                TextView textView3 = itemInsuranceShowcaseDescriptionBinding2.tvDescription;
                textView3.getClass();
                insuranceShowcasePresenter.onHideHelpInfoClicked(!(textView3.getVisibility() == 0));
                TextView textView4 = itemInsuranceShowcaseDescriptionBinding2.tvDescription;
                textView4.getClass();
                if (textView4.getVisibility() == 0) {
                    a.d(itemInsuranceShowcaseDescriptionBinding2.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_arrow_up)).L(itemInsuranceShowcaseDescriptionBinding2.ivArrow);
                } else {
                    a.d(itemInsuranceShowcaseDescriptionBinding2.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_arrow_down)).L(itemInsuranceShowcaseDescriptionBinding2.ivArrow);
                }
            }
        });
    }
}
