package defpackage;

import android.widget.TextView;
import androidx.compose.material3.internal.CalendarModelKt;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.insuranceShowcase.databinding.ItemInsuranceShowcaseCardBinding;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class z64 extends f32<a74, ItemInsuranceShowcaseCardBinding> {
    public final InsuranceShowcasePresenter c;
    public final rb d;

    public interface a {
        void onInsuranceUrlClicked(String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z64(InsuranceShowcasePresenter insuranceShowcasePresenter, rb rbVar, LifecycleCoroutineScope lifecycleCoroutineScope) {
        super(lifecycleCoroutineScope, y64.c);
        lifecycleCoroutineScope.getClass();
        this.c = insuranceShowcasePresenter;
        this.d = rbVar;
    }

    @Override // defpackage.f32
    public final y68 g(a74 a74Var) {
        return (y68) this.d.invoke(Integer.valueOf(a74Var.a));
    }

    @Override // defpackage.f32
    public final boolean h(Object obj) {
        obj.getClass();
        return obj instanceof a74;
    }

    @Override // defpackage.f32
    public final void i(ViewBinding viewBinding, a74 a74Var) {
        ItemInsuranceShowcaseCardBinding itemInsuranceShowcaseCardBinding = (ItemInsuranceShowcaseCardBinding) viewBinding;
        a74 a74Var2 = a74Var;
        itemInsuranceShowcaseCardBinding.getClass();
        itemInsuranceShowcaseCardBinding.tvTitle.setText(a74Var2.c);
        itemInsuranceShowcaseCardBinding.tvSubtitle.setText(a74Var2.d);
        if (a74Var2.f != null) {
            TextView textView = itemInsuranceShowcaseCardBinding.tvDeadline;
            textView.getClass();
            textView.setVisibility(0);
            itemInsuranceShowcaseCardBinding.clLogo.setBackgroundResource(R.drawable.background_red_10_radius_12);
            itemInsuranceShowcaseCardBinding.mcContainer.setStrokeColor(ContextCompat.getColor(itemInsuranceShowcaseCardBinding.getRoot().getContext(), R.color.red60));
        } else {
            itemInsuranceShowcaseCardBinding.clLogo.setBackground(null);
            TextView textView2 = itemInsuranceShowcaseCardBinding.tvDeadline;
            textView2.getClass();
            textView2.setVisibility(8);
            itemInsuranceShowcaseCardBinding.mcContainer.setStrokeColor(ContextCompat.getColor(itemInsuranceShowcaseCardBinding.getRoot().getContext(), R.color.gray_20));
        }
        com.bumptech.glide.a.e(itemInsuranceShowcaseCardBinding.getRoot()).h(a74Var2.b).L(itemInsuranceShowcaseCardBinding.ivLogo);
        com.bumptech.glide.a.e(itemInsuranceShowcaseCardBinding.getRoot()).h(a74Var2.e).L(itemInsuranceShowcaseCardBinding.ivBadge);
        itemInsuranceShowcaseCardBinding.btnAction.setText(a74Var2.g.a);
        TextView textView3 = itemInsuranceShowcaseCardBinding.btnAction;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new pb(this, a74Var2, 1)));
    }

    @Override // defpackage.f32
    public final void j(ViewBinding viewBinding, long j) {
        String string;
        ItemInsuranceShowcaseCardBinding itemInsuranceShowcaseCardBinding = (ItemInsuranceShowcaseCardBinding) viewBinding;
        itemInsuranceShowcaseCardBinding.getClass();
        TextView textView = itemInsuranceShowcaseCardBinding.tvDeadline;
        if (j <= 0) {
            string = itemInsuranceShowcaseCardBinding.getRoot().getContext().getString(R.string.showcase_insurance_timeout);
            string.getClass();
        } else {
            Locale locale = new Locale("ru", "RU");
            String string2 = itemInsuranceShowcaseCardBinding.getRoot().getContext().getString(R.string.showcase_insurance_time_format);
            string2.getClass();
            string = String.format(locale, string2, Arrays.copyOf(new Object[]{Long.valueOf(j / CalendarModelKt.MillisecondsIn24Hours), Long.valueOf((j / 3600000) % 24), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60)}, 4));
        }
        textView.setText(string);
    }
}
