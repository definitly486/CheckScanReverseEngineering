package com.tapjoy;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes4.dex */
public final class m implements DialogInterface.OnClickListener {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJAdUnitJSBridge b;

    public m(TJAdUnitJSBridge tJAdUnitJSBridge, String str) {
        this.b = tJAdUnitJSBridge;
        this.a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        if (i != -3) {
            i2 = 0;
            if (i != -2 && i == -1) {
                i2 = 2;
            }
        } else {
            i2 = 1;
        }
        try {
            this.b.invokeJSCallback(this.a, Integer.valueOf(i2));
        } catch (Exception e) {
            TapjoyLog.w(e.getMessage());
        }
    }
}
