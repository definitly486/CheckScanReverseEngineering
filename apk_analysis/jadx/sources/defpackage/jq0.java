package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemPlainOperationBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class jq0 extends gh4 implements nl3 {
    public static final jq0 g;
    public static final jq0 h;
    public static final jq0 i;
    public final /* synthetic */ int f;

    static {
        int i2 = 1;
        g = new jq0(i2, 0);
        h = new jq0(i2, 1);
        i = new jq0(i2, 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ jq0(int i2, int i3) {
        super(i2);
        this.f = i3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                j26 j26Var = (j26) obj;
                j26Var.getClass();
                return new b36(Integer.valueOf(j26Var.c()), j26Var.a());
            case 1:
                kg1 kg1Var = (kg1) obj;
                kg1Var.getClass();
                return kg1Var.a();
            default:
                View view = (View) obj;
                view.getClass();
                return ItemPlainOperationBinding.bind(view);
        }
    }
}
