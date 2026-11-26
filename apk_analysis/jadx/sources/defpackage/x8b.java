package defpackage;

import com.google.android.gms.internal.play_billing.zzo;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes4.dex */
public final class x8b {
    public static final x8b b;
    public static final x8b c;
    public final Throwable a;

    static {
        if (zzo.e) {
            c = null;
            b = null;
        } else {
            c = new x8b(null);
            b = new x8b(null);
        }
    }

    public x8b(CancellationException cancellationException) {
        this.a = cancellationException;
    }
}
