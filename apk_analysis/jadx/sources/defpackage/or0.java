package defpackage;

import android.view.View;
import com.warefly.checkscan.bonuses.databinding.ItemRvBalancePromocodeBlockBinding;

/* JADX INFO: loaded from: classes.dex */
public final class or0 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ or0(vd9 vd9Var, Object obj, int i) {
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
                ((mr0) vd9Var).b.onPromocodeButtonActivate(String.valueOf(((ItemRvBalancePromocodeBlockBinding) obj2).etField.getText()));
                break;
            default:
                ((View) obj).getClass();
                ((e77) vd9Var).b.onBadgeQuestionClicked(((f77) obj2).b);
                break;
        }
        return j59.a;
    }
}
