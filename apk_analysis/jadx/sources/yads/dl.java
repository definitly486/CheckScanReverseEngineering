package yads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes6.dex */
public final class dl extends Handler {
    public final /* synthetic */ fl a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dl(fl flVar, Looper looper) {
        super(looper);
        this.a = flVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.a.a(message);
    }
}
