package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.coroutines.FlowShortcutsKt$tickerFlow$1", f = "FlowShortcuts.kt", l = {}, m = "invokeSuspend")
public final class dg3 extends pg8 implements nl3<e02<? super j59>, Object> {
    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new dg3(1, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((dg3) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        return j59.a;
    }
}
