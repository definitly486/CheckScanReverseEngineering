package defpackage;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class va6 extends qm3 implements ll3<Long> {
    public static final va6 c = new va6(0, SystemClock.class, "elapsedRealtime", "elapsedRealtime()J", 0);

    @Override // defpackage.ll3
    public final Long invoke() {
        return Long.valueOf(SystemClock.elapsedRealtime());
    }
}
