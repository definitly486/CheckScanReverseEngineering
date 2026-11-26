package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zq0 extends GridLayoutManager.SpanSizeLookup {
    public final /* synthetic */ BonusesMainNewFragment a;

    public zq0(BonusesMainNewFragment bonusesMainNewFragment) {
        this.a = bonusesMainNewFragment;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public final int getSpanSize(int i) {
        i58 i58Var = this.a.t;
        return (i58Var != null ? i58Var.i.e(i) : null) instanceof sv7 ? 1 : 3;
    }
}
