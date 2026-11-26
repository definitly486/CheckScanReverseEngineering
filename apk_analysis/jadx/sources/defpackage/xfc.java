package defpackage;

import androidx.media3.muxer.MuxerUtil;
import com.google.android.gms.internal.measurement.zzvm;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class xfc extends l0 {
    public zzvm i;
    public final int j;

    public /* synthetic */ xfc(zzvm zzvmVar, int i) {
        this.i = zzvmVar;
        this.j = i;
    }

    @Override // defpackage.l0
    public final void d() {
        AtomicLong atomicLong;
        long j;
        int i;
        int i2;
        boolean z;
        zzvm zzvmVar = this.i;
        this.i = null;
        if (zzvmVar == null) {
            return;
        }
        AtomicReference atomicReference = zzvmVar.c;
        do {
            atomicLong = zzvmVar.b;
            j = atomicLong.get();
            i = (int) j;
            long j2 = j >>> 32;
            if (i == Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 13);
                sb.append("Refcount is: ");
                sb.append(j);
                throw new AssertionError(sb.toString());
            }
            i2 = (int) j2;
            z = i == -2147483647;
            if (z) {
                i2++;
            }
        } while (!atomicLong.compareAndSet(j, (((long) i2) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) (i - 1)))));
        if (z) {
            while (true) {
                yfc yfcVar = (yfc) atomicReference.get();
                if (yfcVar != null) {
                    if (yfcVar.i <= this.j) {
                        yfcVar.cancel(true);
                        while (!atomicReference.compareAndSet(yfcVar, null)) {
                            if (atomicReference.get() != yfcVar) {
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    @Override // defpackage.l0
    public final String k() {
        js jsVar;
        zzvm zzvmVar = this.i;
        if (zzvmVar == null || (jsVar = zzvmVar.a.b) == null) {
            return null;
        }
        String string = jsVar.toString();
        String strC = kh.c(new StringBuilder(string.length() + 11), "callable=[", string, "]");
        yfc yfcVar = (yfc) this.i.c.get();
        if (yfcVar == null) {
            return strC;
        }
        int length = strC.length();
        String string2 = yfcVar.toString();
        return dg.c(new StringBuilder(string2.length() + length + 9 + 1), strC, ", trial=[", string2, "]");
    }
}
