package defpackage;

import android.graphics.Color;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvAdvancePromoSelectCardBinding;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class ta extends vd9<xa, ItemRvAdvancePromoSelectCardBinding> {
    public final PromoSelectCardPresenter b;

    public interface a {
        void onAdvanceSelectCardClicked(int i, String str);
    }

    public ta(PromoSelectCardPresenter promoSelectCardPresenter) {
        super(sa.c);
        this.b = promoSelectCardPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xa;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xa xaVar) {
        Object aVar;
        ItemRvAdvancePromoSelectCardBinding itemRvAdvancePromoSelectCardBinding = (ItemRvAdvancePromoSelectCardBinding) viewBinding;
        xa xaVar2 = xaVar;
        itemRvAdvancePromoSelectCardBinding.getClass();
        xa.f fVar = xaVar2.h;
        xa.d dVar = xaVar2.f;
        xa.c cVar = xaVar2.e;
        xa.h hVar = xaVar2.g;
        xa.a aVar2 = xaVar2.j;
        int i = 0;
        if (aVar2 != null) {
            ((h37) com.bumptech.glide.a.d(itemRvAdvancePromoSelectCardBinding.getRoot().getContext()).h(aVar2.b).r(is7.a(ContextCompat.getColor(itemRvAdvancePromoSelectCardBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvAdvancePromoSelectCardBinding.ivBadge);
            MaterialCardView materialCardView = itemRvAdvancePromoSelectCardBinding.mainCard;
            try {
                aVar = Integer.valueOf(Color.parseColor(aVar2.c));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = -1;
            }
            materialCardView.setStrokeColor(((Number) aVar).intValue());
            LinearLayout linearLayout = itemRvAdvancePromoSelectCardBinding.llBadge;
            linearLayout.getClass();
            linearLayout.setVisibility(0);
            try {
                itemRvAdvancePromoSelectCardBinding.tvBadge.setTextColor(Color.parseColor(aVar2.d));
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            itemRvAdvancePromoSelectCardBinding.tvBadge.setText(aVar2.a);
        } else {
            itemRvAdvancePromoSelectCardBinding.mainCard.setStrokeColor(-1);
            LinearLayout linearLayout2 = itemRvAdvancePromoSelectCardBinding.llBadge;
            linearLayout2.getClass();
            linearLayout2.setVisibility(8);
        }
        itemRvAdvancePromoSelectCardBinding.tvBankName.setText(xaVar2.b);
        itemRvAdvancePromoSelectCardBinding.tvCardType.setText(xaVar2.c);
        itemRvAdvancePromoSelectCardBinding.tvFirstLabel.setText(cVar.a);
        itemRvAdvancePromoSelectCardBinding.tvFirstValue.setText(cVar.b);
        itemRvAdvancePromoSelectCardBinding.tvSecondLabel.setText(cVar.c);
        itemRvAdvancePromoSelectCardBinding.tvSecondValue.setText(cVar.d);
        com.bumptech.glide.a.d(itemRvAdvancePromoSelectCardBinding.getRoot().getContext()).h(xaVar2.d).L(itemRvAdvancePromoSelectCardBinding.ivHeaderImage);
        if (dVar != null) {
            Group group = itemRvAdvancePromoSelectCardBinding.groupCategories;
            group.getClass();
            group.setVisibility(0);
            itemRvAdvancePromoSelectCardBinding.tvCategoriesTitle.setText(dVar.a);
            RecyclerView.Adapter adapter = itemRvAdvancePromoSelectCardBinding.rvCategories.getAdapter();
            eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
            if (eu1Var != null) {
                eu1Var.submitList(dVar.c);
            }
            String str = dVar.b;
            ImageView imageView = itemRvAdvancePromoSelectCardBinding.ivCategoriesInfo;
            if (str != null) {
                imageView.getClass();
                imageView.setOnClickListener(new lb7(new ua(itemRvAdvancePromoSelectCardBinding, xaVar2)));
                ImageView imageView2 = itemRvAdvancePromoSelectCardBinding.ivCategoriesInfo;
                imageView2.getClass();
                imageView2.setVisibility(0);
            } else {
                imageView.getClass();
                imageView.setVisibility(8);
                itemRvAdvancePromoSelectCardBinding.ivCategoriesInfo.setOnClickListener(null);
            }
        } else {
            itemRvAdvancePromoSelectCardBinding.ivCategoriesInfo.setOnClickListener(null);
            Group group2 = itemRvAdvancePromoSelectCardBinding.groupCategories;
            group2.getClass();
            group2.setVisibility(8);
        }
        TextView textView = itemRvAdvancePromoSelectCardBinding.tvStepsTitle;
        String str2 = hVar.a;
        xa.g gVar = hVar.c;
        xa.g gVar2 = hVar.b;
        textView.setText(str2);
        TextView textView2 = itemRvAdvancePromoSelectCardBinding.tvStep1Text;
        int i2 = sx3.a;
        textView2.setText(sx3.a(gVar2.a));
        TextView textView3 = itemRvAdvancePromoSelectCardBinding.tvStep1Text;
        x61 x61Var = x61.a;
        textView3.setMovementMethod(x61Var);
        com.bumptech.glide.a.d(itemRvAdvancePromoSelectCardBinding.getRoot().getContext()).h(gVar2.b).L(itemRvAdvancePromoSelectCardBinding.ivStep1);
        itemRvAdvancePromoSelectCardBinding.tvStep2Text.setText(sx3.a(gVar.a));
        itemRvAdvancePromoSelectCardBinding.tvStep2Text.setMovementMethod(x61Var);
        com.bumptech.glide.a.d(itemRvAdvancePromoSelectCardBinding.getRoot().getContext()).h(gVar.b).L(itemRvAdvancePromoSelectCardBinding.ivStep2);
        itemRvAdvancePromoSelectCardBinding.btnIssueCard.setText(xaVar2.i.a);
        TextView textView4 = itemRvAdvancePromoSelectCardBinding.btnIssueCard;
        textView4.getClass();
        textView4.setOnClickListener(new lb7(new va(this, xaVar2, i)));
        if (fVar == null) {
            itemRvAdvancePromoSelectCardBinding.ivPskInfo.setOnClickListener(null);
            Group group3 = itemRvAdvancePromoSelectCardBinding.groupConditions;
            group3.getClass();
            group3.setVisibility(8);
            return;
        }
        itemRvAdvancePromoSelectCardBinding.tvPskRate.setText(sx3.a(fVar.a));
        itemRvAdvancePromoSelectCardBinding.tvPskRate.setMovementMethod(x61Var);
        itemRvAdvancePromoSelectCardBinding.tvPskRate.setLinkTextColor(ContextCompat.getColor(itemRvAdvancePromoSelectCardBinding.getRoot().getContext(), R.color.gray_40));
        itemRvAdvancePromoSelectCardBinding.tvFooterDisclaimer.setText(sx3.a(fVar.b));
        itemRvAdvancePromoSelectCardBinding.tvFooterDisclaimer.setMovementMethod(x61Var);
        itemRvAdvancePromoSelectCardBinding.tvFooterDisclaimer.setLinkTextColor(ContextCompat.getColor(itemRvAdvancePromoSelectCardBinding.getRoot().getContext(), R.color.gray_40));
        ImageView imageView3 = itemRvAdvancePromoSelectCardBinding.ivPskInfo;
        imageView3.getClass();
        imageView3.setOnClickListener(new lb7(new wa(i, itemRvAdvancePromoSelectCardBinding, xaVar2)));
        Group group4 = itemRvAdvancePromoSelectCardBinding.groupConditions;
        group4.getClass();
        group4.setVisibility(0);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvAdvancePromoSelectCardBinding itemRvAdvancePromoSelectCardBinding = (ItemRvAdvancePromoSelectCardBinding) viewBinding;
        itemRvAdvancePromoSelectCardBinding.getClass();
        RecyclerView recyclerView = itemRvAdvancePromoSelectCardBinding.rvCategories;
        recyclerView.setAdapter(new eu1(new ra(qa.c)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvAdvancePromoSelectCardBinding.getRoot().getContext(), 0, false));
        recyclerView.setItemAnimator(null);
    }
}
