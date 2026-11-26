package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d59 extends r22 {
    public static final d59 c = new d59();

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        cm9 cm9Var = (cm9) o22Var.get(cm9.d);
        if (cm9Var != null) {
            cm9Var.c = true;
        } else {
            n1.e("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
    }

    @Override // defpackage.r22
    public final boolean isDispatchNeeded(o22 o22Var) {
        return false;
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // defpackage.r22
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
