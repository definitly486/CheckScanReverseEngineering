package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.compose.AsyncImagePreviewHandler$Companion$Default$1", f = "LocalAsyncImagePreviewHandler.kt", l = {38}, m = "handle", v = 1)
public final class rs extends f02 {
    public b24 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ ss.a n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rs(ss.a aVar, f02 f02Var) {
        super(f02Var);
        this.n = aVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(null, null, this);
    }
}
