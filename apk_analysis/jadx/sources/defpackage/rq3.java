package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import kotlinx.coroutines.internal.UndeliveredElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class rq3 implements Continuation {
    public static final /* synthetic */ rq3 b = new rq3();

    public static final void a(nl3 nl3Var, Object obj, o22 o22Var) {
        UndeliveredElementException undeliveredElementExceptionB = b(nl3Var, obj, null);
        if (undeliveredElementExceptionB != null) {
            v22.a(o22Var, undeliveredElementExceptionB);
        }
    }

    public static final UndeliveredElementException b(nl3 nl3Var, Object obj, UndeliveredElementException undeliveredElementException) {
        try {
            nl3Var.invoke(obj);
            return undeliveredElementException;
        } catch (Throwable th) {
            if (undeliveredElementException != null && undeliveredElementException.getCause() != th) {
                sj0.c(undeliveredElementException, th);
                return undeliveredElementException;
            }
            return new UndeliveredElementException("Exception in undelivered element handler for " + obj, th);
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        Api.ClientKey clientKey = zzcg.a;
        return null;
    }
}
