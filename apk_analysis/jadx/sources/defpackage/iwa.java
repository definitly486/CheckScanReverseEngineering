package defpackage;

import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.TaskExecutors;

/* JADX INFO: loaded from: classes4.dex */
public final class iwa extends CancellationToken {
    public final lgc a = new lgc();

    @Override // com.google.android.gms.tasks.CancellationToken
    public final boolean isCancellationRequested() {
        return this.a.isComplete();
    }

    @Override // com.google.android.gms.tasks.CancellationToken
    public final CancellationToken onCanceledRequested(OnTokenCanceledListener onTokenCanceledListener) {
        this.a.addOnSuccessListener(TaskExecutors.MAIN_THREAD, new boa(this, onTokenCanceledListener));
        return this;
    }
}
