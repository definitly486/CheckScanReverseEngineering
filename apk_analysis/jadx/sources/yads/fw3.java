package yads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class fw3 {
    public final Context a;
    public final AtomicBoolean b = new AtomicBoolean();

    public fw3(Context context) {
        this.a = context.getApplicationContext();
    }

    public final void a() {
        if (!za.a(this.a) || rw5.a() || this.b.getAndSet(true)) {
            return;
        }
        jn3.c("SDK API usage from a background thread detected. Please, use SDK API only from the main thread.", new Object[0]);
    }
}
