package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.tasks.databinding.ItemCompletedTasksButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ar1 extends vd9<cr1, ItemCompletedTasksButtonBinding> {
    public final TasksPresenter b;

    public interface a {
        void onCompletedTasksClicked();
    }

    public ar1(TasksPresenter tasksPresenter) {
        super(zq1.c);
        this.b = tasksPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof cr1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, cr1 cr1Var) {
        ((ItemCompletedTasksButtonBinding) viewBinding).getClass();
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemCompletedTasksButtonBinding itemCompletedTasksButtonBinding = (ItemCompletedTasksButtonBinding) viewBinding;
        itemCompletedTasksButtonBinding.getClass();
        ConstraintLayout root = itemCompletedTasksButtonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new br1(this)));
    }
}
