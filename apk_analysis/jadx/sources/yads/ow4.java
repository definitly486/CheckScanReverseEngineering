package yads;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.C;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ow4 implements Handler.Callback {
    public final aj0 b;
    public final com.monetization.ads.exo.source.dash.c c;
    public kc0 g;
    public boolean h;
    public boolean i;
    public boolean j;
    public final TreeMap f = new TreeMap();
    public final Handler e = u56.a(this);
    public final fp2 d = new fp2();

    public ow4(kc0 kc0Var, com.monetization.ads.exo.source.dash.c cVar, aj0 aj0Var) {
        this.g = kc0Var;
        this.c = cVar;
        this.b = aj0Var;
    }

    public final boolean a(long j) {
        boolean z;
        kc0 kc0Var = this.g;
        if (!kc0Var.d) {
            return false;
        }
        if (this.i) {
            return true;
        }
        Map.Entry entryCeilingEntry = this.f.ceilingEntry(Long.valueOf(kc0Var.h));
        if (entryCeilingEntry == null || ((Long) entryCeilingEntry.getValue()).longValue() >= j) {
            z = false;
        } else {
            long jLongValue = ((Long) entryCeilingEntry.getKey()).longValue();
            com.monetization.ads.exo.source.dash.i iVar = this.c.a;
            long j2 = iVar.N;
            if (j2 == C.TIME_UNSET || j2 < jLongValue) {
                iVar.N = jLongValue;
            }
            z = true;
        }
        if (z && this.h) {
            this.i = true;
            this.h = false;
            com.monetization.ads.exo.source.dash.i iVar2 = this.c.a;
            iVar2.D.removeCallbacks(iVar2.w);
            iVar2.h();
        }
        return z;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (this.j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        mw4 mw4Var = (mw4) message.obj;
        long j = mw4Var.a;
        long j2 = mw4Var.b;
        Long l = (Long) this.f.get(Long.valueOf(j2));
        if (l == null || l.longValue() > j) {
            this.f.put(Long.valueOf(j2), Long.valueOf(j));
        }
        return true;
    }
}
