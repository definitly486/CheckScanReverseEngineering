package com.tapjoy.internal;

import com.tapjoy.TJConnectListener;

/* JADX INFO: loaded from: classes4.dex */
public final class e2 extends TJConnectListener {
    public final /* synthetic */ TJConnectListener a;

    public e2(TJConnectListener tJConnectListener) {
        this.a = tJConnectListener;
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        TJConnectListener tJConnectListener = this.a;
        if (tJConnectListener != null) {
            tJConnectListener.onConnectFailure(i, str);
        }
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        TJConnectListener tJConnectListener = this.a;
        if (tJConnectListener != null) {
            tJConnectListener.onConnectSuccess();
        }
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectWarning(int i, String str) {
        TJConnectListener tJConnectListener = this.a;
        if (tJConnectListener != null) {
            tJConnectListener.onConnectWarning(i, str);
        }
    }
}
