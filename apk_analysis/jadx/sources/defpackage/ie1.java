package defpackage;

import android.view.View;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ie1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ie1(ts5 ts5Var, ms5 ms5Var) {
        super(1);
        this.f = 1;
        this.g = ms5Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((j59) obj).getClass();
                mz7<hc> mz7VarD = ((xd1) obj2).a.d();
                x90 x90Var = new x90(he1.g, 1);
                mz7VarD.getClass();
                p08 p08Var = new p08(mz7VarD, x90Var);
                return p08Var instanceof vm3 ? ((vm3) p08Var).a() : new i18(p08Var);
            case 1:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                return ts5.b((ms5) obj2, a57Var);
            default:
                ((View) obj).getClass();
                ((SelectionsFragment) obj2).o().refreshContent();
                return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ie1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }
}
