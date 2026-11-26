package defpackage;

import android.view.ViewConfiguration;
import androidx.core.util.Supplier;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u52 implements Continuation, Supplier {
    public final /* synthetic */ Object b;

    public /* synthetic */ u52(Object obj) {
        this.b = obj;
    }

    @Override // androidx.core.util.Supplier
    public Object get() {
        return Integer.valueOf(((ViewConfiguration) this.b).getScaledMaximumFlingVelocity());
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return CrashlyticsWorker.lambda$submit$1((Runnable) this.b, task);
    }
}
