package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes3.dex */
public final class mf6<Z> extends j72<Z> {
    public static final Handler c = new Handler(Looper.getMainLooper(), new a());
    public final p37 b;

    public class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            mf6 mf6Var = (mf6) message.obj;
            mf6Var.b.c(mf6Var);
            return true;
        }
    }

    public mf6(p37 p37Var) {
        super(Integer.MIN_VALUE, Integer.MIN_VALUE);
        this.b = p37Var;
    }

    @Override // defpackage.wk8
    public final void onLoadCleared(Drawable drawable) {
    }

    @Override // defpackage.wk8
    public final void onResourceReady(Z z, k29<? super Z> k29Var) {
        c37 request = getRequest();
        if (request == null || !request.isComplete()) {
            return;
        }
        c.obtainMessage(1, this).sendToTarget();
    }
}
