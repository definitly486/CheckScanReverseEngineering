package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bw6 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ QueueFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bw6(QueueFragment queueFragment) {
        super(1);
        this.f = queueFragment;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.n().onBackPressed();
        return j59.a;
    }
}
