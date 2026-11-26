package defpackage;

import androidx.activity.result.ActivityResultCallback;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i7 implements ActivityResultCallback, xl3 {
    public final /* synthetic */ nl3 b;

    public /* synthetic */ i7(nl3 nl3Var) {
        this.b = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (Boolean) this.b.invoke(obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        this.b.invoke(obj);
    }
}
