package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemRvFilterCategoryBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class br1 extends gh4 implements nl3 {
    public final /* synthetic */ int f = 0;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public br1(ar1 ar1Var) {
        super(1);
        this.g = ar1Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ar1) obj2).b.onCompletedTasksClicked();
                return j59.a;
            default:
                ((View) obj).getClass();
                ((ItemRvFilterCategoryBinding) obj2).checkboxSub.getClass();
                throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public br1(ItemRvFilterCategoryBinding itemRvFilterCategoryBinding, ob8 ob8Var, nb8 nb8Var) {
        super(1);
        this.g = itemRvFilterCategoryBinding;
    }
}
