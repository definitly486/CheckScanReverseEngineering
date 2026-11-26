package com.warefly.checkscan.presentation.gift.view;

import android.os.Bundle;
import android.view.View;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.gift.databinding.FragmentGiftBinding;
import com.warefly.checkscan.presentation.gift.presenter.GiftPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.hq3;
import defpackage.j59;
import defpackage.jq3;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.qs2;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class GiftFragment extends BaseFragment<FragmentGiftBinding> implements GiftView {
    public static final a h;
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_gift;
    public final ol4 g = new ol4(FragmentGiftBinding.class);
    public GiftPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            GiftPresenter giftPresenter = GiftFragment.this.presenter;
            if (giftPresenter != null) {
                giftPresenter.fetchGift();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ hq3.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(hq3.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            GiftPresenter giftPresenter = GiftFragment.this.presenter;
            if (giftPresenter != null) {
                giftPresenter.onActionClicked(this.g.b);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ hq3.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(hq3.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            GiftPresenter giftPresenter = GiftFragment.this.presenter;
            if (giftPresenter != null) {
                giftPresenter.onActionClicked(this.g.b);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(GiftFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
        h = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        GiftPresenter giftPresenter = this.presenter;
        if (giftPresenter != null) {
            giftPresenter.onBackPressed();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    public final FragmentGiftBinding n() {
        return (FragmentGiftBinding) this.g.getValue(this, i[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }

    public final GiftPresenter providePresenter() {
        return new GiftPresenter(requireArguments().getInt("GIFT_KEY"), (jq3) m2.c(jq3.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.gift.view.GiftView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.gift.view.GiftView
    public final void showGiftInfo(hq3 hq3Var) {
        hq3Var.getClass();
        FragmentGiftBinding fragmentGiftBindingN = n();
        fragmentGiftBindingN.tvTitle.setText(hq3Var.a);
        fragmentGiftBindingN.tvDescription.setText(hq3Var.b);
        com.bumptech.glide.a.d(requireContext()).h(hq3Var.c).P(qs2.h()).L(fragmentGiftBindingN.ivImage);
        hq3.a aVar = hq3Var.d;
        if (aVar != null) {
            TextView textView = fragmentGiftBindingN.btnAction;
            textView.getClass();
            textView.setVisibility(0);
            textView.setText(aVar.a);
            textView.setOnClickListener(new lb7(new c(aVar)));
        }
        hq3.a aVar2 = hq3Var.e;
        if (aVar2 != null) {
            TextView textView2 = fragmentGiftBindingN.btnSecondaryAction;
            textView2.getClass();
            textView2.setVisibility(0);
            textView2.setText(aVar2.a);
            Space space = fragmentGiftBindingN.spaceBetweenButtons;
            space.getClass();
            space.setVisibility(0);
            textView2.setOnClickListener(new lb7(new d(aVar2)));
        }
    }

    @Override // com.warefly.checkscan.presentation.gift.view.GiftView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}
