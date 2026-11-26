package defpackage;

import com.tapjoy.TJSetUserIDListener;

/* JADX INFO: loaded from: classes.dex */
public final class vk8 implements TJSetUserIDListener {
    public final /* synthetic */ gj4 a;

    public vk8(gj4 gj4Var) {
        this.a = gj4Var;
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDFailure(int i, String str) {
        this.a.invoke(Boolean.FALSE);
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDSuccess() {
        this.a.invoke(Boolean.TRUE);
    }
}
