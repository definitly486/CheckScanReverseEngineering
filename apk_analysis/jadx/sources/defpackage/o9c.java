package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes4.dex */
public final class o9c {
    public final Clock a;
    public long b;

    public o9c(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.a = clock;
    }
}
