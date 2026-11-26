package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemWithdrawalCommonMethodBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class kj9 extends vd9<lj9, ItemWithdrawalCommonMethodBinding> {
    public final rj9 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalCommonMethodBinding> {
        public static final a c = new a(3, ItemWithdrawalCommonMethodBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonMethodBinding;", 0);

        @Override // defpackage.dm3
        public final ItemWithdrawalCommonMethodBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemWithdrawalCommonMethodBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public kj9(rj9 rj9Var) {
        super(a.c);
        this.b = rj9Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof lj9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, lj9 lj9Var) {
        j59 j59Var;
        ItemWithdrawalCommonMethodBinding itemWithdrawalCommonMethodBinding = (ItemWithdrawalCommonMethodBinding) viewBinding;
        lj9 lj9Var2 = lj9Var;
        itemWithdrawalCommonMethodBinding.getClass();
        itemWithdrawalCommonMethodBinding.getRoot().setTag(lj9Var2.e);
        itemWithdrawalCommonMethodBinding.tvTitle.setText(lj9Var2.b);
        String str = lj9Var2.c;
        if (str != null) {
            TextView textView = itemWithdrawalCommonMethodBinding.tvSubtitle;
            textView.getClass();
            textView.setVisibility(0);
            itemWithdrawalCommonMethodBinding.tvSubtitle.setText(str);
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            TextView textView2 = itemWithdrawalCommonMethodBinding.tvSubtitle;
            textView2.getClass();
            textView2.setVisibility(8);
            TextView textView3 = itemWithdrawalCommonMethodBinding.tvTitle;
            textView3.getClass();
            ViewGroup.LayoutParams layoutParams = textView3.getLayoutParams();
            if (layoutParams == null) {
                o2.d("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                return;
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
                layoutParams2.bottomToBottom = 0;
                textView3.setLayoutParams(layoutParams2);
            }
        }
        h37 h37Var = (h37) com.bumptech.glide.a.e(itemWithdrawalCommonMethodBinding.getRoot()).h(lj9Var2.d).r(is7.a(ContextCompat.getColor(itemWithdrawalCommonMethodBinding.getRoot().getContext(), R.color.almostThereMoon)));
        h37Var.getClass();
        ((h37) h37Var.A(uq2.b, new ak1())).L(itemWithdrawalCommonMethodBinding.ivLogo);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalCommonMethodBinding itemWithdrawalCommonMethodBinding = (ItemWithdrawalCommonMethodBinding) viewBinding;
        itemWithdrawalCommonMethodBinding.getClass();
        ConstraintLayout root = itemWithdrawalCommonMethodBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ro0(2, this, itemWithdrawalCommonMethodBinding)));
    }
}
