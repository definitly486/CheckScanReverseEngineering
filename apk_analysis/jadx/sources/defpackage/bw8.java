package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.BonusesTitleItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class bw8 extends vd9<cw8, BonusesTitleItemBinding> {
    public bw8(int i) {
        super(aw8.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof cw8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, cw8 cw8Var) {
        BonusesTitleItemBinding bonusesTitleItemBinding = (BonusesTitleItemBinding) viewBinding;
        bonusesTitleItemBinding.getClass();
        bonusesTitleItemBinding.tvTitle.setText("Промокоды и купоны");
        TextView textView = bonusesTitleItemBinding.btnCheckMore;
        textView.getClass();
        textView.setVisibility(8);
    }
}
