package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes5.dex */
public final class G4 implements InterfaceC1272t4 {
    public final Context a;
    public final I4 b;
    public final ResultReceiver c;

    public G4(Context context, I4 i4, B4 b4) {
        this.a = context;
        this.b = i4;
        this.c = b4.c;
        i4.a(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1272t4
    public final void a(C0783a6 c0783a6, B4 b4) {
        this.b.a(b4.b);
        this.b.a(c0783a6, this);
    }

    public final I4 b() {
        return this.b;
    }

    public final Context c() {
        return this.a;
    }

    public final ResultReceiver d() {
        return this.c;
    }

    public final void a(C0936g4 c0936g4) {
        P6.a(this.c, c0936g4);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1272t4
    public final void a() {
        this.b.b(this);
    }
}
