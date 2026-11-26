package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.b0;
import defpackage.o22;
import defpackage.s22;

/* JADX INFO: loaded from: classes2.dex */
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends b0 implements s22 {
    final /* synthetic */ CompositionErrorContextImpl $traceContext$inlined;
    final /* synthetic */ RememberedCoroutineScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(s22.a aVar, CompositionErrorContextImpl compositionErrorContextImpl, RememberedCoroutineScope rememberedCoroutineScope) {
        super(aVar);
        this.$traceContext$inlined = compositionErrorContextImpl;
        this.this$0 = rememberedCoroutineScope;
    }

    @Override // defpackage.s22
    public void handleException(o22 o22Var, Throwable th) throws Throwable {
        this.$traceContext$inlined.attachComposeStackTrace(th, this.this$0);
        o22 o22Var2 = this.this$0.overlayContext;
        s22.a aVar = s22.a.b;
        s22 s22Var = (s22) o22Var2.get(aVar);
        if (s22Var != null) {
            s22Var.handleException(o22Var, th);
            return;
        }
        s22 s22Var2 = (s22) this.this$0.parentContext.get(aVar);
        if (s22Var2 == null) {
            throw th;
        }
        s22Var2.handleException(o22Var, th);
    }
}
