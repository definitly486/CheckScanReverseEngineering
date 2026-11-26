package com.tapjoy;

import android.graphics.Color;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJTaskHandler b;
    public final /* synthetic */ k c;

    public h(k kVar, String str, TJTaskHandler tJTaskHandler) {
        this.c = kVar;
        this.a = str;
        this.b = tJTaskHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            TapjoyLog.d("setBackgroundColor: " + this.a);
            this.c.a.d.setBackgroundColor(Color.parseColor(this.a));
            this.b.onComplete(Boolean.TRUE);
        } catch (Exception unused) {
            TapjoyLog.d("Error setting background color. backgroundView: " + this.c.a.d + ", hexColor: " + this.a);
            this.b.onComplete(Boolean.FALSE);
        }
    }
}
