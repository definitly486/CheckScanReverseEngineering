package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormEmailBannerBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class u56 extends vd9<v56, ItemPersonalDataFormEmailBannerBinding> {
    public final PersonalDataFormPresenter b;

    public interface a {
        void onEmailChangeClicked();
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[v56.b.values().length];
            try {
                iArr[v56.b.Set.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[v56.b.NotSet.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public u56(PersonalDataFormPresenter personalDataFormPresenter) {
        super(t56.c);
        this.b = personalDataFormPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof v56;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, v56 v56Var) {
        ItemPersonalDataFormEmailBannerBinding itemPersonalDataFormEmailBannerBinding = (ItemPersonalDataFormEmailBannerBinding) viewBinding;
        v56 v56Var2 = v56Var;
        itemPersonalDataFormEmailBannerBinding.getClass();
        com.bumptech.glide.a.d(itemPersonalDataFormEmailBannerBinding.getRoot().getContext()).h(v56Var2.a).L(itemPersonalDataFormEmailBannerBinding.ivLogo);
        TextView textView = itemPersonalDataFormEmailBannerBinding.tvTitle;
        String str = v56Var2.b;
        textView.setText(str);
        itemPersonalDataFormEmailBannerBinding.tvDescription.setText(v56Var2.c);
        MaterialCardView materialCardView = itemPersonalDataFormEmailBannerBinding.mcvBadge;
        materialCardView.getClass();
        v56.a aVar = v56Var2.e;
        materialCardView.setVisibility(aVar != null ? 0 : 8);
        itemPersonalDataFormEmailBannerBinding.tvBadgeText.setText(aVar != null ? aVar.a : null);
        int i = b.a[v56Var2.g.ordinal()];
        if (i == 1) {
            itemPersonalDataFormEmailBannerBinding.mcvBadge.setCardBackgroundColor(ContextCompat.getColor(itemPersonalDataFormEmailBannerBinding.getRoot().getContext(), R.color.success10));
            com.bumptech.glide.a.d(itemPersonalDataFormEmailBannerBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick)).L(itemPersonalDataFormEmailBannerBinding.ivBadge);
            TextView textView2 = itemPersonalDataFormEmailBannerBinding.btnAddEmail;
            textView2.getClass();
            textView2.setVisibility(8);
            Group group = itemPersonalDataFormEmailBannerBinding.groupEmailField;
            group.getClass();
            group.setVisibility(0);
            itemPersonalDataFormEmailBannerBinding.tvTitle.setText(str);
            itemPersonalDataFormEmailBannerBinding.etField.setText(v56Var2.f);
            return;
        }
        if (i != 2) {
            return;
        }
        itemPersonalDataFormEmailBannerBinding.mcvBadge.setCardBackgroundColor(ContextCompat.getColor(itemPersonalDataFormEmailBannerBinding.getRoot().getContext(), R.color.warning10));
        com.bumptech.glide.a.d(itemPersonalDataFormEmailBannerBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_triangle_warning_80)).L(itemPersonalDataFormEmailBannerBinding.ivBadge);
        TextView textView3 = itemPersonalDataFormEmailBannerBinding.btnAddEmail;
        textView3.getClass();
        textView3.setVisibility(0);
        itemPersonalDataFormEmailBannerBinding.btnAddEmail.setText(v56Var2.d);
        Group group2 = itemPersonalDataFormEmailBannerBinding.groupEmailField;
        group2.getClass();
        group2.setVisibility(8);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemPersonalDataFormEmailBannerBinding itemPersonalDataFormEmailBannerBinding = (ItemPersonalDataFormEmailBannerBinding) viewBinding;
        itemPersonalDataFormEmailBannerBinding.getClass();
        View view = itemPersonalDataFormEmailBannerBinding.clickableArea;
        view.getClass();
        int i = 1;
        view.setOnClickListener(new lb7(new b71(this, i)));
        TextView textView = itemPersonalDataFormEmailBannerBinding.btnAddEmail;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c71(this, i)));
    }
}
