package defpackage;

import android.view.View;
import com.warefly.checkscan.profile.presentation.main.dialogs.ProfilePromocodeErrorBottomSheet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hh1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ hh1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                ih1 ih1Var = (ih1) obj2;
                mz7<List<sd1>> mz7VarB = ih1Var.b.b();
                eh1 eh1Var = new eh1(new gh1(0, ih1Var, list));
                mz7VarB.getClass();
                return new h08(mz7VarB, eh1Var);
            default:
                ((View) obj).getClass();
                ((ProfilePromocodeErrorBottomSheet) obj2).dismiss();
                return j59.a;
        }
    }
}
