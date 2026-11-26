package defpackage;

import androidx.compose.material3.internal.CalendarModelKt;
import androidx.work.WorkRequest;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class oe7 implements ws6 {
    @Override // defpackage.ws6
    public final Object get() {
        vp2 vp2Var = new vp2();
        HashMap map = new HashMap();
        ig6 ig6Var = ig6.DEFAULT;
        Set set = Collections.EMPTY_SET;
        if (set == null) {
            o2.d("Null flags");
            return null;
        }
        map.put(ig6Var, new fz(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, CalendarModelKt.MillisecondsIn24Hours, set));
        ig6 ig6Var2 = ig6.HIGHEST;
        if (set == null) {
            o2.d("Null flags");
            return null;
        }
        map.put(ig6Var2, new fz(1000L, CalendarModelKt.MillisecondsIn24Hours, set));
        ig6 ig6Var3 = ig6.VERY_LOW;
        if (set == null) {
            o2.d("Null flags");
            return null;
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(je7.b.DEVICE_IDLE)));
        if (setUnmodifiableSet == null) {
            o2.d("Null flags");
            return null;
        }
        map.put(ig6Var3, new fz(CalendarModelKt.MillisecondsIn24Hours, CalendarModelKt.MillisecondsIn24Hours, setUnmodifiableSet));
        if (map.keySet().size() >= ig6.values().length) {
            new HashMap();
            return new ez(vp2Var, map);
        }
        ah.f("Not all priorities have been configured");
        return null;
    }
}
