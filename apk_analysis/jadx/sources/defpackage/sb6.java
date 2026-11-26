package defpackage;

import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final class sb6 implements qb6 {
    @Override // defpackage.qb6
    public final Date a(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(13, i);
        Date time = calendar.getTime();
        time.getClass();
        return time;
    }

    @Override // defpackage.qb6
    public final Date b() {
        Date time = Calendar.getInstance().getTime();
        time.getClass();
        return time;
    }

    @Override // defpackage.qb6
    public final long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // defpackage.qb6
    public final long nanoTime() {
        return System.nanoTime();
    }
}
