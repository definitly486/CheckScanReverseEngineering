package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.lgc;
import defpackage.qdc;

/* JADX INFO: loaded from: classes4.dex */
public class TaskCompletionSource<TResult> {
    public final lgc a = new lgc();

    public TaskCompletionSource(CancellationToken cancellationToken) {
        cancellationToken.onCanceledRequested(new qdc(this));
    }

    public Task<TResult> getTask() {
        return this.a;
    }

    public void setException(Exception exc) {
        this.a.c(exc);
    }

    public void setResult(TResult tresult) {
        this.a.a(tresult);
    }

    public boolean trySetException(Exception exc) {
        lgc lgcVar = this.a;
        lgcVar.getClass();
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (lgcVar.a) {
            try {
                if (lgcVar.c) {
                    return false;
                }
                lgcVar.c = true;
                lgcVar.f = exc;
                lgcVar.b.b(lgcVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean trySetResult(TResult tresult) {
        return this.a.b(tresult);
    }

    public TaskCompletionSource() {
    }
}
