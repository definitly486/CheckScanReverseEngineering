package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.BonusesShopCardItemWithHikeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dw7 extends vd9<en1.b, BonusesShopCardItemWithHikeBinding> {
    public final bv7 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, BonusesShopCardItemWithHikeBinding> {
        public static final a c = new a(3, BonusesShopCardItemWithHikeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/BonusesShopCardItemWithHikeBinding;", 0);

        @Override // defpackage.dm3
        public final BonusesShopCardItemWithHikeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return BonusesShopCardItemWithHikeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dw7(bv7 bv7Var) {
        super(a.c);
        this.b = bv7Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof en1.b;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, en1.b bVar) {
        dn1.b bVar2;
        Boolean bool;
        BonusesShopCardItemWithHikeBinding bonusesShopCardItemWithHikeBinding = (BonusesShopCardItemWithHikeBinding) viewBinding;
        bonusesShopCardItemWithHikeBinding.getClass();
        ImageView imageView = bonusesShopCardItemWithHikeBinding.btnFave;
        final dn1 dn1Var = bVar.a;
        imageView.setSelected(dn1Var.c);
        com.bumptech.glide.a.e(bonusesShopCardItemWithHikeBinding.ivLogo).h(dn1Var.b).L(bonusesShopCardItemWithHikeBinding.ivLogo);
        TextView textView = bonusesShopCardItemWithHikeBinding.tvTitle;
        dn1.c cVar = dn1Var.d;
        b06 b06Var = dn1Var.e;
        boolean z = b06Var.b;
        textView.setText(cVar.a);
        bonusesShopCardItemWithHikeBinding.tvValue.setText(cVar.b);
        AppCompatTextView appCompatTextView = bonusesShopCardItemWithHikeBinding.tvHike;
        ew3 ew3Var = dn1Var.g;
        String str = ew3Var != null ? ew3Var.a : null;
        if (str == null) {
            str = "";
        }
        appCompatTextView.setText(str);
        ImageView imageView2 = bonusesShopCardItemWithHikeBinding.ivPowerCode;
        imageView2.getClass();
        imageView2.setVisibility((ew3Var == null || (bVar2 = ew3Var.b) == null || (bool = bVar2.c) == null) ? false : bool.booleanValue() ? 0 : 8);
        bonusesShopCardItemWithHikeBinding.btnFave.setOnClickListener(new kw6(1, this, dn1Var));
        bonusesShopCardItemWithHikeBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: cw7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.b.onShopClick(dn1Var.a);
            }
        });
        AppCompatTextView appCompatTextView2 = bonusesShopCardItemWithHikeBinding.tvOfd;
        appCompatTextView2.getClass();
        appCompatTextView2.setVisibility(z ? 0 : 8);
        appCompatTextView2.setText(b06Var.a);
        appCompatTextView2.setSelected(z);
        appCompatTextView2.setOnClickListener(new lb7(new ew7(this, dn1Var)));
    }
}
