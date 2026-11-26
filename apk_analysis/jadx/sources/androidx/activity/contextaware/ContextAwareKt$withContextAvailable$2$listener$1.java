package androidx.activity.contextaware;

import android.content.Context;
import defpackage.a31;
import defpackage.e02;
import defpackage.k57;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final /* synthetic */ a31<R> $co;
    final /* synthetic */ nl3<Context, R> $onContextAvailable;

    public ContextAwareKt$withContextAvailable$2$listener$1(a31<R> a31Var, nl3<Context, R> nl3Var) {
        this.$co = a31Var;
        this.$onContextAvailable = nl3Var;
    }

    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public void onContextAvailable(Context context) {
        Object aVar;
        context.getClass();
        e02 e02Var = this.$co;
        try {
            aVar = this.$onContextAvailable.invoke(context);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        e02Var.resumeWith(aVar);
    }
}
