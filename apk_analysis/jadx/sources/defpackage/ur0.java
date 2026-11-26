package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ur0 extends GridLayoutManager.SpanSizeLookup {
    public final /* synthetic */ BonusesSearchFragment a;

    public ur0(BonusesSearchFragment bonusesSearchFragment) {
        this.a = bonusesSearchFragment;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public final int getSpanSize(int i) {
        i58 i58Var = this.a.j;
        pz3 pz3VarE = i58Var != null ? i58Var.i.e(i) : null;
        if (pz3VarE instanceof er6) {
            return 3;
        }
        return pz3VarE instanceof zu7 ? 2 : 6;
    }
}
