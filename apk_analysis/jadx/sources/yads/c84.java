package yads;

import androidx.media3.common.C;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class c84 implements z04, y04 {
    public final z04[] b;
    public final IdentityHashMap c;
    public final dk0 d;
    public final ArrayList e = new ArrayList();
    public final HashMap f = new HashMap();
    public y04 g;
    public g06 h;
    public z04[] i;
    public i50 j;

    public c84(dk0 dk0Var, long[] jArr, z04... z04VarArr) {
        this.d = dk0Var;
        this.b = z04VarArr;
        dk0Var.getClass();
        this.j = new i50(new ui5[0]);
        this.c = new IdentityHashMap();
        this.i = new z04[0];
        for (int i = 0; i < z04VarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.b[i] = new a84(z04VarArr[i], j);
            }
        }
    }

    @Override // yads.z04
    public final long a(er2[] er2VarArr, boolean[] zArr, mc5[] mc5VarArr, boolean[] zArr2, long j) {
        int[] iArr = new int[er2VarArr.length];
        int[] iArr2 = new int[er2VarArr.length];
        for (int i = 0; i < er2VarArr.length; i++) {
            mc5 mc5Var = mc5VarArr[i];
            Integer num = mc5Var == null ? null : (Integer) this.c.get(mc5Var);
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            er2 er2Var = er2VarArr[i];
            if (er2Var != null) {
                f06 f06Var = (f06) this.f.get(er2Var.c());
                f06Var.getClass();
                int i2 = 0;
                while (true) {
                    z04[] z04VarArr = this.b;
                    if (i2 >= z04VarArr.length) {
                        break;
                    }
                    int iIndexOf = z04VarArr[i2].getTrackGroups().c.indexOf(f06Var);
                    if (iIndexOf < 0) {
                        iIndexOf = -1;
                    }
                    if (iIndexOf != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.c.clear();
        int length = er2VarArr.length;
        mc5[] mc5VarArr2 = new mc5[length];
        mc5[] mc5VarArr3 = new mc5[er2VarArr.length];
        er2[] er2VarArr2 = new er2[er2VarArr.length];
        ArrayList arrayList = new ArrayList(this.b.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.b.length) {
            for (int i4 = 0; i4 < er2VarArr.length; i4++) {
                mc5VarArr3[i4] = iArr[i4] == i3 ? mc5VarArr[i4] : null;
                if (iArr2[i4] == i3) {
                    er2 er2Var2 = er2VarArr[i4];
                    er2Var2.getClass();
                    f06 f06Var2 = (f06) this.f.get(er2Var2.c());
                    f06Var2.getClass();
                    er2VarArr2[i4] = new z74(er2Var2, f06Var2);
                } else {
                    er2VarArr2[i4] = null;
                }
            }
            int i5 = i3;
            long jA = this.b[i3].a(er2VarArr2, zArr, mc5VarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = jA;
            } else if (jA != j2) {
                defpackage.ah.f("Children enabled at different positions.");
                return 0L;
            }
            boolean z = false;
            for (int i6 = 0; i6 < er2VarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    mc5 mc5Var2 = mc5VarArr3[i6];
                    mc5Var2.getClass();
                    mc5VarArr2[i6] = mc5VarArr3[i6];
                    this.c.put(mc5Var2, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5 && mc5VarArr3[i6] != null) {
                    defpackage.ud.g();
                    return 0L;
                }
            }
            if (z) {
                arrayList.add(this.b[i5]);
            }
            i3 = i5 + 1;
        }
        System.arraycopy(mc5VarArr2, 0, mc5VarArr, 0, length);
        z04[] z04VarArr2 = (z04[]) arrayList.toArray(new z04[0]);
        this.i = z04VarArr2;
        this.d.getClass();
        this.j = new i50(z04VarArr2);
        return j2;
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        if (this.e.isEmpty()) {
            return this.j.c(j);
        }
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            ((z04) this.e.get(i)).c(j);
        }
        return false;
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        return this.j.getBufferedPositionUs();
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        return this.j.getNextLoadPositionUs();
    }

    @Override // yads.z04
    public final g06 getTrackGroups() {
        g06 g06Var = this.h;
        g06Var.getClass();
        return g06Var;
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        return this.j.isLoading();
    }

    @Override // yads.z04
    public final void maybeThrowPrepareError() {
        for (z04 z04Var : this.b) {
            z04Var.maybeThrowPrepareError();
        }
    }

    @Override // yads.z04
    public final long readDiscontinuity() {
        long j;
        z04 z04Var;
        z04[] z04VarArr = this.i;
        int length = z04VarArr.length;
        long j2 = C.TIME_UNSET;
        long j3 = -9223372036854775807L;
        int i = 0;
        while (i < length) {
            z04 z04Var2 = z04VarArr[i];
            long discontinuity = z04Var2.readDiscontinuity();
            if (discontinuity == j2) {
                j = j2;
                if (j3 != j && z04Var2.seekToUs(j3) != j3) {
                    defpackage.ah.f("Unexpected child seekToUs result.");
                    return 0L;
                }
            } else if (j3 == j2) {
                z04[] z04VarArr2 = this.i;
                int length2 = z04VarArr2.length;
                int i2 = 0;
                while (true) {
                    j = j2;
                    if (i2 >= length2 || (z04Var = z04VarArr2[i2]) == z04Var2) {
                        break;
                    }
                    if (z04Var.seekToUs(discontinuity) != discontinuity) {
                        defpackage.ah.f("Unexpected child seekToUs result.");
                        return 0L;
                    }
                    i2++;
                    j2 = j;
                }
                j3 = discontinuity;
            } else {
                j = j2;
                if (discontinuity != j3) {
                    defpackage.ah.f("Conflicting discontinuities.");
                    return 0L;
                }
            }
            i++;
            j2 = j;
        }
        return j3;
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        this.j.reevaluateBuffer(j);
    }

    @Override // yads.z04
    public final long seekToUs(long j) {
        long jSeekToUs = this.i[0].seekToUs(j);
        int i = 1;
        while (true) {
            z04[] z04VarArr = this.i;
            if (i >= z04VarArr.length) {
                return jSeekToUs;
            }
            if (z04VarArr[i].seekToUs(jSeekToUs) != jSeekToUs) {
                defpackage.ah.f("Unexpected child seekToUs result.");
                return 0L;
            }
            i++;
        }
    }

    @Override // yads.z04
    public final void a(y04 y04Var, long j) {
        this.g = y04Var;
        Collections.addAll(this.e, this.b);
        for (z04 z04Var : this.b) {
            z04Var.a(this, j);
        }
    }

    @Override // yads.ti5
    public final void a(ui5 ui5Var) {
        y04 y04Var = this.g;
        y04Var.getClass();
        y04Var.a((ui5) this);
    }

    @Override // yads.z04
    public final void a(long j) {
        for (z04 z04Var : this.i) {
            z04Var.a(j);
        }
    }

    @Override // yads.z04
    public final long a(long j, th5 th5Var) {
        z04[] z04VarArr = this.i;
        return (z04VarArr.length > 0 ? z04VarArr[0] : this.b[0]).a(j, th5Var);
    }

    @Override // yads.y04
    public final void a(z04 z04Var) {
        this.e.remove(z04Var);
        if (!this.e.isEmpty()) {
            return;
        }
        int i = 0;
        for (z04 z04Var2 : this.b) {
            i += z04Var2.getTrackGroups().b;
        }
        f06[] f06VarArr = new f06[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            z04[] z04VarArr = this.b;
            if (i2 < z04VarArr.length) {
                g06 trackGroups = z04VarArr[i2].getTrackGroups();
                int i4 = trackGroups.b;
                int i5 = 0;
                while (i5 < i4) {
                    f06 f06VarA = trackGroups.a(i5);
                    f06 f06Var = new f06(i2 + StringUtils.PROCESS_POSTFIX_DELIMITER + f06VarA.c, f06VarA.e);
                    this.f.put(f06Var, f06VarA);
                    f06VarArr[i3] = f06Var;
                    i5++;
                    i3++;
                }
                i2++;
            } else {
                this.h = new g06(f06VarArr);
                y04 y04Var = this.g;
                y04Var.getClass();
                y04Var.a((z04) this);
                return;
            }
        }
    }
}
