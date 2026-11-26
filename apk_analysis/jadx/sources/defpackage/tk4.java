package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDailyBannerBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class tk4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ tk4(vd9 vd9Var, Object obj, int i) {
        super(1);
        this.f = i;
        this.g = vd9Var;
        this.h = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        vd9 vd9Var = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((uk4) vd9Var).b.onUnselectedFieldClick(((vk4) obj2).a);
                break;
            default:
                ((View) obj).getClass();
                TasksPresenter tasksPresenter = ((mm8) vd9Var).b;
                Object tag = ((ItemRvTaskDailyBannerBinding) obj2).getRoot().getTag();
                tag.getClass();
                tasksPresenter.onDailyBannerClicked(((Integer) tag).intValue());
                break;
        }
        return j59.a;
    }
}
