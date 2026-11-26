package defpackage;

import android.graphics.Color;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvLoanPromoApplyBinding;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class ss4 extends vd9<ws4, ItemRvLoanPromoApplyBinding> {
    public final PromoSelectCardPresenter b;

    public interface a {
        void onLoanClicked(int i, String str);
    }

    public ss4(PromoSelectCardPresenter promoSelectCardPresenter) {
        super(rs4.c);
        this.b = promoSelectCardPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ws4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ws4 ws4Var) {
        Object aVar;
        ItemRvLoanPromoApplyBinding itemRvLoanPromoApplyBinding = (ItemRvLoanPromoApplyBinding) viewBinding;
        ws4 ws4Var2 = ws4Var;
        itemRvLoanPromoApplyBinding.getClass();
        ws4.c cVar = ws4Var2.i;
        ws4.a aVar2 = ws4Var2.h;
        if (aVar2 != null) {
            ((h37) com.bumptech.glide.a.d(itemRvLoanPromoApplyBinding.getRoot().getContext()).h(aVar2.b).r(is7.a(ContextCompat.getColor(itemRvLoanPromoApplyBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvLoanPromoApplyBinding.ivBadge);
            MaterialCardView materialCardView = itemRvLoanPromoApplyBinding.mainCard;
            try {
                aVar = Integer.valueOf(Color.parseColor(aVar2.c));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = -1;
            }
            materialCardView.setStrokeColor(((Number) aVar).intValue());
            LinearLayout linearLayout = itemRvLoanPromoApplyBinding.llBadge;
            linearLayout.getClass();
            linearLayout.setVisibility(0);
            try {
                itemRvLoanPromoApplyBinding.tvBadge.setTextColor(Color.parseColor(aVar2.d));
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            itemRvLoanPromoApplyBinding.tvBadge.setText(aVar2.a);
        } else {
            itemRvLoanPromoApplyBinding.mainCard.setStrokeColor(-1);
            LinearLayout linearLayout2 = itemRvLoanPromoApplyBinding.llBadge;
            linearLayout2.getClass();
            linearLayout2.setVisibility(8);
        }
        itemRvLoanPromoApplyBinding.tvBankName.setText(ws4Var2.b);
        itemRvLoanPromoApplyBinding.tvCardType.setText(ws4Var2.c);
        com.bumptech.glide.a.d(itemRvLoanPromoApplyBinding.getRoot().getContext()).h(ws4Var2.d).L(itemRvLoanPromoApplyBinding.ivHeaderLogo);
        RecyclerView.Adapter adapter = itemRvLoanPromoApplyBinding.rvInfo.getAdapter();
        i58 i58Var = adapter instanceof i58 ? (i58) adapter : null;
        if (i58Var != null) {
            i58Var.submitList(qn1.h0(ws4Var2.g, ws4Var2.f));
        }
        itemRvLoanPromoApplyBinding.btnIssueLoan.setText(ws4Var2.e.a);
        TextView textView = itemRvLoanPromoApplyBinding.btnIssueLoan;
        textView.getClass();
        textView.setOnClickListener(new lb7(new wa(2, this, ws4Var2)));
        if (cVar == null) {
            itemRvLoanPromoApplyBinding.ivPskInfo.setOnClickListener(null);
            Group group = itemRvLoanPromoApplyBinding.groupDisclaimers;
            group.getClass();
            group.setVisibility(8);
            return;
        }
        TextView textView2 = itemRvLoanPromoApplyBinding.tvPskRate;
        int i = sx3.a;
        textView2.setText(sx3.a(cVar.a));
        TextView textView3 = itemRvLoanPromoApplyBinding.tvPskRate;
        x61 x61Var = x61.a;
        textView3.setMovementMethod(x61Var);
        itemRvLoanPromoApplyBinding.tvPskRate.setLinkTextColor(ContextCompat.getColor(itemRvLoanPromoApplyBinding.getRoot().getContext(), R.color.gray_40));
        itemRvLoanPromoApplyBinding.tvFooterDisclaimer.setText(sx3.a(cVar.b));
        itemRvLoanPromoApplyBinding.tvFooterDisclaimer.setMovementMethod(x61Var);
        itemRvLoanPromoApplyBinding.tvFooterDisclaimer.setLinkTextColor(ContextCompat.getColor(itemRvLoanPromoApplyBinding.getRoot().getContext(), R.color.gray_40));
        ImageView imageView = itemRvLoanPromoApplyBinding.ivPskInfo;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new ts4(itemRvLoanPromoApplyBinding, ws4Var2)));
        Group group2 = itemRvLoanPromoApplyBinding.groupDisclaimers;
        group2.getClass();
        group2.setVisibility(0);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvLoanPromoApplyBinding itemRvLoanPromoApplyBinding = (ItemRvLoanPromoApplyBinding) viewBinding;
        itemRvLoanPromoApplyBinding.getClass();
        RecyclerView recyclerView = itemRvLoanPromoApplyBinding.rvInfo;
        recyclerView.setAdapter(new i58(new ps4(os4.c, 0), new b20(ms4.c, 1)));
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 2);
        gridLayoutManager.setSpanSizeLookup(new vs4(recyclerView));
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.setItemAnimator(null);
        recyclerView.addItemDecoration(new us4(recyclerView));
    }
}
