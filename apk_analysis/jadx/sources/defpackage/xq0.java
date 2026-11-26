package defpackage;

import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class xq0 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ BaseFragment g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xq0(BaseFragment baseFragment, int i) {
        super(1);
        this.f = i;
        this.g = baseFragment;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        BaseFragment baseFragment = this.g;
        switch (i) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) obj;
                recyclerView.getClass();
                BonusesMainNewFragment bonusesMainNewFragment = (BonusesMainNewFragment) baseFragment;
                ze4<Object>[] ze4VarArr = BonusesMainNewFragment.v;
                k07 k07Var = new k07(recyclerView, new ar0(recyclerView), new v8(bonusesMainNewFragment, 1), 1.0f);
                k07Var.b(bonusesMainNewFragment.isHidden());
                LifecycleOwner viewLifecycleOwner = bonusesMainNewFragment.getViewLifecycleOwner();
                viewLifecycleOwner.getClass();
                k07Var.a(viewLifecycleOwner);
                bonusesMainNewFragment.o = k07Var;
                break;
            default:
                ((View) obj).getClass();
                ((SupportFormFragment) baseFragment).o().onBackClicked();
                break;
        }
        return j59.a;
    }
}
