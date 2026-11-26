package defpackage;

import com.bumptech.glide.a;
import com.warefly.checkscan.databinding.ItemRvBalancePlainOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class b30 extends gh4 implements dm3<ItemRvBalancePlainOperationBinding, b60, Integer, j59> {
    public static final b30 f = new b30(3);

    @Override // defpackage.dm3
    public final j59 invoke(ItemRvBalancePlainOperationBinding itemRvBalancePlainOperationBinding, b60 b60Var, Integer num) {
        ItemRvBalancePlainOperationBinding itemRvBalancePlainOperationBinding2 = itemRvBalancePlainOperationBinding;
        b60 b60Var2 = b60Var;
        num.intValue();
        itemRvBalancePlainOperationBinding2.getClass();
        b60Var2.getClass();
        a.e(itemRvBalancePlainOperationBinding2.ivPlaceholder).h(b60Var2.f).L(itemRvBalancePlainOperationBinding2.ivPlaceholder);
        itemRvBalancePlainOperationBinding2.tvTitle.setText(b60Var2.b);
        itemRvBalancePlainOperationBinding2.tvDescription.setText(b60Var2.c);
        itemRvBalancePlainOperationBinding2.tvSum.setText(b60Var2.d);
        itemRvBalancePlainOperationBinding2.tvStatus.setText(b60Var2.e);
        itemRvBalancePlainOperationBinding2.tvStatus.setTextColor(b60Var2.g);
        return j59.a;
    }
}
