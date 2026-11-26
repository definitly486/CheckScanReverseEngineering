package defpackage;

import android.os.Handler;
import android.os.Message;
import androidx.media3.exoplayer.source.ConcatenatingMediaSource2;
import yads.wt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zu1 implements Handler.Callback {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zu1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ((ConcatenatingMediaSource2) obj).handleMessage(message);
            default:
                return ((wt3) obj).a(message);
        }
    }
}
