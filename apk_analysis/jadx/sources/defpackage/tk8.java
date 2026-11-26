package defpackage;

import com.tapjoy.TJConnectListener;

/* JADX INFO: loaded from: classes.dex */
public final class tk8 extends TJConnectListener {
    public final /* synthetic */ v59.a b;

    public tk8(v59.a aVar) {
        this.b = aVar;
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        this.b.invoke(Boolean.FALSE);
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        this.b.invoke(Boolean.TRUE);
    }
}
