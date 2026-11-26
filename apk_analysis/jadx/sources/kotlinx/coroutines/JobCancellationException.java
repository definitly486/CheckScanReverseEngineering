package kotlinx.coroutines;

import defpackage.aa4;
import defpackage.eo5;
import defpackage.sb4;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class JobCancellationException extends CancellationException {
    public final transient sb4 b;

    public JobCancellationException(String str, Throwable th, sb4 sb4Var) {
        super(str);
        this.b = sb4Var;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JobCancellationException)) {
            return false;
        }
        JobCancellationException jobCancellationException = (JobCancellationException) obj;
        if (!aa4.e(jobCancellationException.getMessage(), getMessage())) {
            return false;
        }
        Object obj2 = jobCancellationException.b;
        if (obj2 == null) {
            obj2 = eo5.c;
        }
        Object obj3 = this.b;
        if (obj3 == null) {
            obj3 = eo5.c;
        }
        return aa4.e(obj2, obj3) && aa4.e(jobCancellationException.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        message.getClass();
        int iHashCode = message.hashCode() * 31;
        Object obj = this.b;
        if (obj == null) {
            obj = eo5.c;
        }
        int iHashCode2 = (obj.hashCode() + iHashCode) * 31;
        Throwable cause = getCause();
        return iHashCode2 + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; job=");
        Object obj = this.b;
        if (obj == null) {
            obj = eo5.c;
        }
        sb.append(obj);
        return sb.toString();
    }
}
