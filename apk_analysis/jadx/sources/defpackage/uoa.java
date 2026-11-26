package defpackage;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class uoa<T> implements OnSuccessListener, OnFailureListener, OnCanceledListener {
    public final CountDownLatch b = new CountDownLatch(1);

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.b.countDown();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.b.countDown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t) {
        this.b.countDown();
    }
}
