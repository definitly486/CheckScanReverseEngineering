package defpackage;

import android.view.View;
import com.warefly.checkscan.profile.databinding.ItemRvProfileInviteCodeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ja3 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ja3(vd9 vd9Var, Object obj, int i) {
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
                ((ia3) vd9Var).b.onFilterClicked(((oa3) obj2).a);
                break;
            case 1:
                ((View) obj).getClass();
                ((lh4) vd9Var).c.onAgreementClick(((mh4) obj2).a);
                break;
            default:
                ((View) obj).getClass();
                ((nl6) vd9Var).b.onCopyClick(((ItemRvProfileInviteCodeBinding) obj2).tvInviteCode.getTag().toString());
                break;
        }
        return j59.a;
    }
}
