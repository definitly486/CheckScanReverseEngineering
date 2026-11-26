package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class vb1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vb1(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ub1) obj3).b.onCheckboxClicked((fc1) obj2);
                break;
            default:
                ((View) obj).getClass();
                String str = ((hl6) obj3).g.e;
                if (str != null) {
                    ((fl6) obj2).b.onExpiredSubscriptionClicked(str);
                }
                break;
        }
        return j59.a;
    }
}
