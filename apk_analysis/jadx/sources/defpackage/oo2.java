package defpackage;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public final class oo2 implements jo2 {
    public final /* synthetic */ Handler a;

    public oo2(Handler handler) {
        this.a = handler;
    }

    @Override // defpackage.jo2
    public final void a(f18.a aVar) {
        this.a.post(new no2(aVar, 0));
    }
}
