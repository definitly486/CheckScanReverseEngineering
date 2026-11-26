package defpackage;

import com.warefly.checkscan.presentation.notifications.view.NotificationsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ov extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ov(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((kv) obj2).f.d();
                break;
            default:
                b36 b36Var = (b36) obj;
                b36Var.getClass();
                ((NotificationsFragment) obj2).o().onItemIsSeen(((Number) b36Var.c).intValue());
                break;
        }
        return j59.a;
    }
}
