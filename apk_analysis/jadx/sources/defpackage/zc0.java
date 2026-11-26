package defpackage;

import android.content.Context;
import com.my.target.t0;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zc0 {
    public final z2a a;
    public final t0.a b;
    public final AtomicBoolean c = new AtomicBoolean();
    public final String d = UUID.randomUUID().toString();

    public zc0(int i, Context context) {
        this.a = new z2a(i, "fullscreen");
        this.b = new t0.a(i);
        if (rh5.a.get()) {
            return;
        }
        rh5.a(context);
    }
}
