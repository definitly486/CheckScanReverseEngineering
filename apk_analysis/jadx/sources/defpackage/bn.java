package defpackage;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class bn extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bn(Object obj, int i) {
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
                ((View) obj).getClass();
                ((an) obj2).b.onAnonDisclaimerClicked();
                break;
            case 1:
                hl3 hl3Var = (hl3) obj;
                uv2 uv2Var = (uv2) obj2;
                uv2Var.getClass();
                ArrayList arrayList = uv2Var.e;
                hl3Var.getClass();
                arrayList.add(hl3Var);
                break;
            default:
                ((View) obj).getClass();
                ((cl6) obj2).b.onDeleteAccountClicked();
                break;
        }
        return j59.a;
    }
}
