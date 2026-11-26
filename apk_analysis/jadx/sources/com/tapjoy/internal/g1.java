package com.tapjoy.internal;

import com.tapjoy.TJConnectListener;
import com.tapjoy.TJSetUserIDListener;

/* JADX INFO: loaded from: classes4.dex */
public final class g1 implements TJSetUserIDListener {
    public final /* synthetic */ TJConnectListener a;

    public g1(TJConnectListener tJConnectListener) {
        this.a = tJConnectListener;
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDFailure(int i, String str) {
        this.a.onConnectWarning(i, str);
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDSuccess() {
        this.a.onConnectSuccess();
    }
}
