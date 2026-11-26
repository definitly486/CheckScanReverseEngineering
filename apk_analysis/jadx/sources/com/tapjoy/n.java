package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class n implements TJTaskHandler {
    public final /* synthetic */ o a;

    public n(o oVar) {
        this.a = oVar;
    }

    @Override // com.tapjoy.TJTaskHandler
    public final void onComplete(Object obj) {
        o oVar = this.a;
        oVar.b.invokeJSCallback(oVar.a, (Float) obj);
    }
}
