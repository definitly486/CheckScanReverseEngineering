package com.tapjoy.internal;

import com.tapjoy.TJConnectListener;

/* JADX INFO: loaded from: classes4.dex */
public final class k2 extends TJConnectListener {
    public final /* synthetic */ p2 a;

    public k2(g2 g2Var) {
        this.a = g2Var;
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        this.a.c(i, str);
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        this.a.a(5);
        this.a.c();
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectWarning(int i, String str) {
        this.a.a(6);
        this.a.b(i, str);
    }
}
