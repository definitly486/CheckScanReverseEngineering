package defpackage;

import com.warefly.checkscan.presentation.notifications.view.NotificationsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class mp5 extends gh4 implements ll3<j59> {
    public final /* synthetic */ NotificationsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mp5(NotificationsFragment notificationsFragment) {
        super(0);
        this.f = notificationsFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().onScrolledToTheBottom();
        return j59.a;
    }
}
