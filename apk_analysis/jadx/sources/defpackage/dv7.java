package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.BonusesShopCardItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dv7 extends vd9<en1.a, BonusesShopCardItemBinding> {
    public final bv7 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, BonusesShopCardItemBinding> {
        public static final a c = new a(3, BonusesShopCardItemBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/BonusesShopCardItemBinding;", 0);

        @Override // defpackage.dm3
        public final BonusesShopCardItemBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return BonusesShopCardItemBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dv7(bv7 bv7Var) {
        super(a.c);
        this.b = bv7Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof en1.a;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, en1.a aVar) {
        dn1.b bVar;
        Boolean bool;
        BonusesShopCardItemBinding bonusesShopCardItemBinding = (BonusesShopCardItemBinding) viewBinding;
        bonusesShopCardItemBinding.getClass();
        ImageView imageView = bonusesShopCardItemBinding.btnFave;
        final dn1 dn1Var = aVar.a;
        imageView.setSelected(dn1Var.c);
        com.bumptech.glide.a.e(bonusesShopCardItemBinding.ivLogo).h(dn1Var.b).L(bonusesShopCardItemBinding.ivLogo);
        TextView textView = bonusesShopCardItemBinding.tvTitle;
        dn1.c cVar = dn1Var.d;
        b06 b06Var = dn1Var.e;
        boolean z = b06Var.b;
        textView.setText(cVar.a);
        dn1.a aVar2 = cVar.c;
        String str = cVar.b;
        j59 j59Var = null;
        if (aVar2 != null) {
            String str2 = aVar2.a;
            if (str2 != null) {
                bonusesShopCardItemBinding.tvValue.setText(vp3.c(25, str2, str == null ? "" : str));
                j59Var = j59.a;
            }
            if (j59Var == null) {
                bonusesShopCardItemBinding.tvValue.setText(str);
            }
            j59Var = j59.a;
        }
        if (j59Var == null) {
            bonusesShopCardItemBinding.tvValue.setText(str);
        }
        ImageView imageView2 = bonusesShopCardItemBinding.ivPowerCode;
        imageView2.getClass();
        imageView2.setVisibility((aVar2 == null || (bVar = aVar2.b) == null || (bool = bVar.c) == null) ? false : bool.booleanValue() ? 0 : 8);
        bonusesShopCardItemBinding.btnFave.setOnClickListener(new View.OnClickListener() { // from class: cv7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bv7 bv7Var = this.b.b;
                dn1 dn1Var2 = dn1Var;
                bv7Var.onFavouriteClick(dn1Var2.a, !dn1Var2.c);
            }
        });
        bonusesShopCardItemBinding.getRoot().setOnClickListener(new tv6(this, dn1Var));
        AppCompatTextView appCompatTextView = bonusesShopCardItemBinding.tvOfd;
        appCompatTextView.getClass();
        appCompatTextView.setVisibility(z ? 0 : 8);
        appCompatTextView.setText(b06Var.a);
        appCompatTextView.setSelected(z);
        appCompatTextView.setOnClickListener(new lb7(new wa(3, this, dn1Var)));
    }
}
