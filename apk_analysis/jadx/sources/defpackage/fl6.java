package defpackage;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.profile.databinding.ItemRvProfileHeaderBinding;
import com.warefly.checkscan.profile.databinding.LayoutProfileActiveSubscriptionBadgeBinding;
import com.warefly.checkscan.profile.databinding.LayoutProfileAddEmailBadgeBinding;
import com.warefly.checkscan.profile.databinding.LayoutProfileExpiredSubscriptionBadgeBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class fl6 extends vd9<hl6, ItemRvProfileHeaderBinding> {
    public final ProfilePresenter b;

    public interface a {
        void onAddEmailClicked(String str);

        void onEditPersonalDataClicked();

        void onExpiredSubscriptionClicked(String str);

        void onPhotoClicked();
    }

    public fl6(ProfilePresenter profilePresenter) {
        super(el6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof hl6;
    }

    @Override // defpackage.vd9
    public final void h(ViewBinding viewBinding) {
        ItemRvProfileHeaderBinding itemRvProfileHeaderBinding = (ItemRvProfileHeaderBinding) viewBinding;
        itemRvProfileHeaderBinding.getClass();
        ImageView imageView = itemRvProfileHeaderBinding.ivPhotoProfile;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new xv(this, 1)));
        ImageView imageView2 = itemRvProfileHeaderBinding.btnEdit;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new gl6(this)));
        MaterialCardView materialCardView = itemRvProfileHeaderBinding.btnBadgeEdit;
        materialCardView.getClass();
        materialCardView.setOnClickListener(new lb7(new aw(this, 1)));
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, hl6 hl6Var) {
        ItemRvProfileHeaderBinding itemRvProfileHeaderBinding = (ItemRvProfileHeaderBinding) viewBinding;
        hl6 hl6Var2 = hl6Var;
        itemRvProfileHeaderBinding.getClass();
        vm6 vm6Var = hl6Var2.g;
        kw2 kw2Var = hl6Var2.h;
        hl6.a aVar = hl6Var2.e;
        vm6 vm6Var2 = hl6Var2.f;
        h37<Bitmap> h37VarB = com.bumptech.glide.a.e(itemRvProfileHeaderBinding.ivPhotoProfile).b();
        h37VarB.getClass();
        ((h37) ((h37) h37VarB.A(uq2.b, new ak1())).r(is7.a(ContextCompat.getColor(itemRvProfileHeaderBinding.getRoot().getContext(), R.color.almostThereMoon)))).N(hl6Var2.a).h(R.drawable.ic_avatar_placeholder).L(itemRvProfileHeaderBinding.ivPhotoProfile);
        itemRvProfileHeaderBinding.tvUsernameProfile.setText(hl6Var2.b);
        itemRvProfileHeaderBinding.tvPhone.setText(hl6Var2.d);
        TextView textView = itemRvProfileHeaderBinding.tvEmail;
        String str = hl6Var2.c;
        textView.setText(str);
        TextView textView2 = itemRvProfileHeaderBinding.tvEmail;
        textView2.getClass();
        textView2.setVisibility(str != null ? 0 : 8);
        if (aVar != null) {
            ImageView imageView = itemRvProfileHeaderBinding.btnEdit;
            imageView.getClass();
            imageView.setVisibility(8);
            MaterialCardView materialCardView = itemRvProfileHeaderBinding.btnBadgeEdit;
            materialCardView.getClass();
            materialCardView.setVisibility(0);
            Integer numB = p46.b(aVar.c);
            if (numB != null) {
                itemRvProfileHeaderBinding.btnBadgeEdit.setCardBackgroundColor(numB.intValue());
            }
            Integer numB2 = p46.b(aVar.b);
            if (numB2 != null) {
                itemRvProfileHeaderBinding.tvBadgeTitle.setTextColor(numB2.intValue());
            }
            Integer numB3 = p46.b(aVar.d);
            if (numB3 != null) {
                itemRvProfileHeaderBinding.ivBadgeIcon.setColorFilter(numB3.intValue());
            }
            itemRvProfileHeaderBinding.tvBadgeTitle.setText(aVar.a);
        } else {
            MaterialCardView materialCardView2 = itemRvProfileHeaderBinding.btnBadgeEdit;
            materialCardView2.getClass();
            materialCardView2.setVisibility(8);
            ImageView imageView2 = itemRvProfileHeaderBinding.btnEdit;
            imageView2.getClass();
            imageView2.setVisibility(0);
        }
        LayoutProfileAddEmailBadgeBinding layoutProfileAddEmailBadgeBinding = itemRvProfileHeaderBinding.incldAddEmailBadge;
        if (kw2Var != null) {
            MaterialCardView root = layoutProfileAddEmailBadgeBinding.getRoot();
            root.getClass();
            root.setVisibility(0);
            itemRvProfileHeaderBinding.incldAddEmailBadge.tvTitle.setText(kw2Var.b);
            itemRvProfileHeaderBinding.incldAddEmailBadge.tvDescription.setText(kw2Var.c);
            Integer numB4 = p46.b(kw2Var.d);
            if (numB4 != null) {
                itemRvProfileHeaderBinding.incldAddEmailBadge.getRoot().setCardBackgroundColor(numB4.intValue());
            }
            com.bumptech.glide.a.d(itemRvProfileHeaderBinding.getRoot().getContext()).h(kw2Var.a).L(itemRvProfileHeaderBinding.incldAddEmailBadge.ivWarning);
            MaterialCardView root2 = itemRvProfileHeaderBinding.incldAddEmailBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new j60(this, hl6Var2, 2)));
        } else {
            MaterialCardView root3 = layoutProfileAddEmailBadgeBinding.getRoot();
            root3.getClass();
            root3.setVisibility(8);
        }
        LayoutProfileActiveSubscriptionBadgeBinding layoutProfileActiveSubscriptionBadgeBinding = itemRvProfileHeaderBinding.incldActiveSubscriptionBadge;
        if (vm6Var2 != null) {
            vm6.a aVar2 = vm6Var2.f;
            Integer numB5 = p46.b(vm6Var2.g);
            if (numB5 != null) {
                layoutProfileActiveSubscriptionBadgeBinding.mcvActive.setCardBackgroundColor(numB5.intValue());
            }
            ConstraintLayout root4 = layoutProfileActiveSubscriptionBadgeBinding.getRoot();
            root4.getClass();
            root4.setVisibility(0);
            layoutProfileActiveSubscriptionBadgeBinding.tvTitle.setText(vm6Var2.b);
            layoutProfileActiveSubscriptionBadgeBinding.tvDescription.setText(vm6Var2.c);
            com.bumptech.glide.a.d(layoutProfileActiveSubscriptionBadgeBinding.getRoot().getContext()).h(vm6Var2.a).L(layoutProfileActiveSubscriptionBadgeBinding.ivWarning);
            LinearLayout linearLayout = layoutProfileActiveSubscriptionBadgeBinding.llAdditional;
            linearLayout.getClass();
            linearLayout.setVisibility(aVar2 != null ? 0 : 8);
            layoutProfileActiveSubscriptionBadgeBinding.tvLeftText.setText(aVar2 != null ? aVar2.a : null);
            layoutProfileActiveSubscriptionBadgeBinding.tvRightText.setText(aVar2 != null ? aVar2.b : null);
            com.bumptech.glide.a.d(layoutProfileActiveSubscriptionBadgeBinding.getRoot().getContext()).h(aVar2 != null ? aVar2.c : null).L(layoutProfileActiveSubscriptionBadgeBinding.ivAdditionalIcon);
        } else {
            ConstraintLayout root5 = layoutProfileActiveSubscriptionBadgeBinding.getRoot();
            root5.getClass();
            root5.setVisibility(8);
        }
        LayoutProfileExpiredSubscriptionBadgeBinding layoutProfileExpiredSubscriptionBadgeBinding = itemRvProfileHeaderBinding.incldExpiredSubscriptionBadge;
        if (vm6Var == null) {
            MaterialCardView root6 = layoutProfileExpiredSubscriptionBadgeBinding.getRoot();
            root6.getClass();
            root6.setVisibility(8);
            return;
        }
        Integer numB6 = p46.b(vm6Var.g);
        if (numB6 != null) {
            layoutProfileExpiredSubscriptionBadgeBinding.getRoot().setCardBackgroundColor(numB6.intValue());
        }
        MaterialCardView root7 = layoutProfileExpiredSubscriptionBadgeBinding.getRoot();
        root7.getClass();
        root7.setVisibility(0);
        layoutProfileExpiredSubscriptionBadgeBinding.tvTitle.setText(vm6Var.b);
        layoutProfileExpiredSubscriptionBadgeBinding.tvDescription.setText(vm6Var.c);
        com.bumptech.glide.a.d(layoutProfileExpiredSubscriptionBadgeBinding.getRoot().getContext()).h(vm6Var.a).L(layoutProfileExpiredSubscriptionBadgeBinding.ivWarning);
        layoutProfileExpiredSubscriptionBadgeBinding.btnAction.setText(vm6Var.d);
        TextView textView3 = layoutProfileExpiredSubscriptionBadgeBinding.btnAction;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new vb1(1, hl6Var2, this)));
    }

    @Override // defpackage.vd9
    public final void k(ViewBinding viewBinding) {
        ItemRvProfileHeaderBinding itemRvProfileHeaderBinding = (ItemRvProfileHeaderBinding) viewBinding;
        itemRvProfileHeaderBinding.getClass();
        itemRvProfileHeaderBinding.ivPhotoProfile.setOnClickListener(null);
    }
}
