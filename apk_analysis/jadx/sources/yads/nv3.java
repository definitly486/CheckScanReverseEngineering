package yads;

import android.location.Location;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class nv3 {
    public final iv3 a = new iv3();

    public final Location a(List list) {
        Iterator it = list.iterator();
        Location location = null;
        while (it.hasNext()) {
            Location location2 = (Location) it.next();
            this.a.getClass();
            if (location != null) {
                long time = location2.getTime() - location.getTime();
                long j = iv3.a;
                boolean z = time > j;
                boolean z2 = time < (-j);
                boolean z3 = time > 0;
                int accuracy = (int) (location2.getAccuracy() - location.getAccuracy());
                boolean z4 = accuracy > 0;
                boolean z5 = accuracy < 0;
                boolean z6 = ((long) accuracy) > 200;
                boolean zE = defpackage.aa4.e(location2.getProvider(), location.getProvider());
                if (!z && (z2 || (!z5 && ((!z3 || z4) && (!z3 || z6 || !zE))))) {
                }
            }
            location = location2;
        }
        return location;
    }
}
