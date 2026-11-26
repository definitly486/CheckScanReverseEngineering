package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import com.google.android.gms.tasks.OnFailureListener;
import com.warefly.checkscan.presentation.queue.presenter.QueuePresenter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gd0 implements w08, xl3, SimpleBasePlayer.PositionSupplier, OnFailureListener, li0 {
    public final /* synthetic */ Object b;

    public /* synthetic */ gd0(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((nf1) this.b).invoke(obj);
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        ((u1) this.b).f().invoke(aVar);
    }

    @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
    public long get() {
        return ((Player) this.b).getTotalBufferedDuration();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        z22.b((ug6) this.b, pib.a("No qrs", new Exception()));
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return QueuePresenter.onFirstViewAttach$lambda$1((bm3) this.b, obj, obj2);
    }
}
