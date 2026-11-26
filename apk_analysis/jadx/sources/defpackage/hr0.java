package defpackage;

import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;
import com.warefly.checkscan.tasks.databinding.ItemBonusesPointsBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class hr0 extends vd9<ir0, ItemBonusesPointsBinding> {
    public final TasksPresenter b;
    public final TasksFragment.c c;
    public final y22 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hr0(TasksPresenter tasksPresenter, TasksFragment.c cVar, LifecycleCoroutineScope lifecycleCoroutineScope) {
        super(fr0.c);
        lifecycleCoroutineScope.getClass();
        this.b = tasksPresenter;
        this.c = cVar;
        this.d = lifecycleCoroutineScope;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ir0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ir0 ir0Var) {
        ItemBonusesPointsBinding itemBonusesPointsBinding = (ItemBonusesPointsBinding) viewBinding;
        ir0 ir0Var2 = ir0Var;
        itemBonusesPointsBinding.getClass();
        RecyclerView.Adapter adapter = itemBonusesPointsBinding.rvBonuses.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(ir0Var2.b);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemBonusesPointsBinding itemBonusesPointsBinding = (ItemBonusesPointsBinding) viewBinding;
        itemBonusesPointsBinding.getClass();
        RecyclerView recyclerView = itemBonusesPointsBinding.rvBonuses;
        recyclerView.setAdapter(new eu1(new eo0(this.b, this.c, this.d)));
        recyclerView.addItemDecoration(new gr0());
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 2));
        recyclerView.setItemAnimator(null);
    }
}
