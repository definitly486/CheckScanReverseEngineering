package androidx.activity.contextaware;

import android.content.Context;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.zya;

/* JADX INFO: loaded from: classes.dex */
public final class ContextAwareKt {
    public static final <R> Object withContextAvailable(ContextAware contextAware, nl3<Context, R> nl3Var, e02<R> e02Var) throws Throwable {
        Context contextPeekAvailableContext = contextAware.peekAvailableContext();
        if (contextPeekAvailableContext != null) {
            return nl3Var.invoke(contextPeekAvailableContext);
        }
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(c31Var, nl3Var);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        c31Var.n(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    private static final <R> Object withContextAvailable$$forInline(ContextAware contextAware, nl3<Context, R> nl3Var, e02<R> e02Var) throws Throwable {
        Context contextPeekAvailableContext = contextAware.peekAvailableContext();
        if (contextPeekAvailableContext != null) {
            return nl3Var.invoke(contextPeekAvailableContext);
        }
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(c31Var, nl3Var);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        c31Var.n(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        j59 j59Var = j59.a;
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
