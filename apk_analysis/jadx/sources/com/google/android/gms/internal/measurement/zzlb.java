package com.google.android.gms.internal.measurement;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.d1c;
import defpackage.jn2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlb {
    public static ListenableFuture zza(Task task, CancellationTokenSource cancellationTokenSource) {
        final d1c d1cVar = new d1c();
        d1cVar.i = task;
        task.addOnCompleteListener(jn2.INSTANCE, new OnCompleteListener() { // from class: q1c
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task2) {
                boolean zIsCanceled = task2.isCanceled();
                d1c d1cVar2 = d1cVar;
                if (zIsCanceled) {
                    d1cVar2.cancel(false);
                    return;
                }
                if (task2.isSuccessful()) {
                    d1cVar2.l(task2.getResult());
                    return;
                }
                Exception exception = task2.getException();
                if (exception != null) {
                    d1cVar2.m(exception);
                } else {
                    ud.g();
                }
            }
        });
        return d1cVar;
    }
}
