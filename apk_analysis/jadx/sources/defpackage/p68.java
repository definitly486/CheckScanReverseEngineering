package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p68 {
    public static final /* synthetic */ int a = 0;

    static {
        Object aVar;
        Object aVar2;
        Exception exc = new Exception();
        String simpleName = pm9.class.getSimpleName();
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        new StackTraceElement("_COROUTINE.".concat(simpleName), "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            aVar = cd0.class.getCanonicalName();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            aVar2 = p68.class.getCanonicalName();
        } catch (Throwable th2) {
            aVar2 = new k57.a(th2);
        }
        if (k57.a(aVar2) != null) {
            aVar2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
