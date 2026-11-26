package defpackage;

import android.graphics.Color;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvPromoSelectCardBinding;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class mo6 extends vd9<vo6, ItemRvPromoSelectCardBinding> {
    public final PromoSelectCardPresenter b;

    public mo6(PromoSelectCardPresenter promoSelectCardPresenter) {
        super(lo6.c);
        this.b = promoSelectCardPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof vo6;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, vo6 vo6Var) {
        Object aVar;
        Object aVar2;
        ItemRvPromoSelectCardBinding itemRvPromoSelectCardBinding = (ItemRvPromoSelectCardBinding) viewBinding;
        vo6 vo6Var2 = vo6Var;
        Object obj = -1;
        itemRvPromoSelectCardBinding.getClass();
        vo6.a aVar3 = vo6Var2.b;
        RecyclerView.Adapter adapter = itemRvPromoSelectCardBinding.rvPromoBlocks.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(vo6Var2.c);
        }
        if (aVar3 == null) {
            itemRvPromoSelectCardBinding.mcvPromo.setStrokeColor(-1);
            LinearLayout linearLayout = itemRvPromoSelectCardBinding.llBadge;
            linearLayout.getClass();
            linearLayout.setVisibility(8);
            return;
        }
        ((h37) a.d(itemRvPromoSelectCardBinding.getRoot().getContext()).h(aVar3.d).r(is7.a(ContextCompat.getColor(itemRvPromoSelectCardBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvPromoSelectCardBinding.ivBadge);
        MaterialCardView materialCardView = itemRvPromoSelectCardBinding.mcvPromo;
        materialCardView.getClass();
        ViewGroup.LayoutParams layoutParams = materialCardView.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, pl2.e(14), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        materialCardView.setLayoutParams(marginLayoutParams);
        try {
            aVar = Integer.valueOf(Color.parseColor(aVar3.c));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        materialCardView.setStrokeColor(((Number) aVar).intValue());
        LinearLayout linearLayout2 = itemRvPromoSelectCardBinding.llBadge;
        linearLayout2.getClass();
        linearLayout2.setVisibility(0);
        TextView textView = itemRvPromoSelectCardBinding.tvBadge;
        try {
            aVar2 = Integer.valueOf(Color.parseColor(aVar3.b));
        } catch (Throwable th2) {
            aVar2 = new k57.a(th2);
        }
        textView.setTextColor(((Number) (aVar2 instanceof k57.a ? -1 : aVar2)).intValue());
        textView.setText(aVar3.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvPromoSelectCardBinding itemRvPromoSelectCardBinding = (ItemRvPromoSelectCardBinding) viewBinding;
        itemRvPromoSelectCardBinding.getClass();
        RecyclerView recyclerView = itemRvPromoSelectCardBinding.rvPromoBlocks;
        recyclerView.setAdapter(new eu1(new to6(so6.c), new kh6(jo6.c, 1), new hp6(fp6.c), new ho6(this.b), new oo6(no6.c)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvPromoSelectCardBinding.getRoot().getContext(), 1, false));
    }
}
