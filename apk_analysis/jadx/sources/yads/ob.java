package yads;

import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ob extends ls {
    public final vn g;
    public final long h;
    public final long i;
    public final long j;
    public final int k;
    public final int l;
    public final float m;
    public final float n;
    public final oe3 o;
    public final du5 p;
    public float q;
    public int r;
    public int s;
    public long t;
    public zr u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ob(f06 f06Var, int[] iArr, vn vnVar, long j, long j2, long j3, oe3 oe3Var) {
        super(f06Var, iArr);
        du5 du5Var = x00.a;
        if (j3 < j) {
            sv3.d("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j3 = j;
        }
        this.g = vnVar;
        this.h = j * 1000;
        this.i = j2 * 1000;
        this.j = j3 * 1000;
        this.k = AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD;
        this.l = AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD;
        this.m = 0.7f;
        this.n = 0.75f;
        this.o = oe3.a(oe3Var);
        this.p = du5Var;
        this.q = 1.0f;
        this.s = 0;
        this.t = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005d A[EDGE_INSN: B:22:0x005d->B:23:0x005e BREAK  A[LOOP:0: B:9:0x002b->B:13:0x003e]] */
    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    /* JADX WARN: Code duplicated, block: B:27:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    /* JADX WARN: Code duplicated, block: B:30:0x0077  */
    /* JADX WARN: Code duplicated, block: B:32:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x0098  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cc  */
    @Override // yads.er2
    public final void a(long j, long j2, long j3, List list, ly3[] ly3VarArr) {
        long j4;
        long jA;
        long jB;
        int i;
        int i2;
        int iA;
        int iA2;
        long jMin;
        int i3;
        int i4;
        this.p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i5 = this.r;
        if (i5 >= ly3VarArr.length || !ly3VarArr[i5].next()) {
            int length = ly3VarArr.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    if (!list.isEmpty()) {
                        zr zrVar = (zr) dq3.a(list);
                        long j5 = zrVar.g;
                        if (j5 == C.TIME_UNSET) {
                            j4 = -9223372036854775807L;
                            break;
                        }
                        long j6 = zrVar.h;
                        if (j6 == C.TIME_UNSET) {
                            j4 = -9223372036854775807L;
                            break;
                        } else {
                            j4 = j6 - j5;
                            break;
                        }
                    }
                    j4 = -9223372036854775807L;
                    break;
                }
                ly3 ly3Var = ly3VarArr[i6];
                if (ly3Var.next()) {
                    jA = ly3Var.a();
                    jB = ly3Var.b();
                } else {
                    i6++;
                }
            }
            i = this.s;
            if (i == 0) {
                this.s = 1;
                this.r = a(jElapsedRealtime);
                return;
            }
            i2 = this.r;
            if (list.isEmpty()) {
                iA = -1;
            } else {
                iA = a(((zr) dq3.a(list)).d);
            }
            if (iA != -1) {
                i = ((zr) dq3.a(list)).e;
                i2 = iA;
            }
            iA2 = a(jElapsedRealtime);
            if (!b(i2, jElapsedRealtime)) {
                vz2[] vz2VarArr = this.d;
                vz2 vz2Var = vz2VarArr[i2];
                vz2 vz2Var2 = vz2VarArr[iA2];
                if (j3 == C.TIME_UNSET) {
                    jMin = this.h;
                } else {
                    if (j4 != C.TIME_UNSET) {
                        j3 -= j4;
                    }
                    jMin = Math.min((long) (j3 * this.n), this.h);
                }
                i3 = vz2Var2.i;
                i4 = vz2Var.i;
                if ((i3 <= i4 && j2 < jMin) || (i3 < i4 && j2 >= this.i)) {
                }
            }
            if (iA2 != i2) {
                i = 3;
            }
            this.s = i;
            this.r = iA2;
        }
        ly3 ly3Var2 = ly3VarArr[this.r];
        jA = ly3Var2.a();
        jB = ly3Var2.b();
        j4 = jA - jB;
        i = this.s;
        if (i == 0) {
            this.s = 1;
            this.r = a(jElapsedRealtime);
            return;
        }
        i2 = this.r;
        if (list.isEmpty()) {
            iA = -1;
        } else {
            iA = a(((zr) dq3.a(list)).d);
        }
        if (iA != -1) {
            i = ((zr) dq3.a(list)).e;
            i2 = iA;
        }
        iA2 = a(jElapsedRealtime);
        if (!b(i2, jElapsedRealtime)) {
            vz2[] vz2VarArr2 = this.d;
            vz2 vz2Var3 = vz2VarArr2[i2];
            vz2 vz2Var4 = vz2VarArr2[iA2];
            if (j3 == C.TIME_UNSET) {
                jMin = this.h;
            } else {
                if (j4 != C.TIME_UNSET) {
                    j3 -= j4;
                }
                jMin = Math.min((long) (j3 * this.n), this.h);
            }
            i3 = vz2Var4.i;
            i4 = vz2Var3.i;
            iA2 = i3 <= i4 ? i2 : i2;
        }
        if (iA2 != i2) {
            i = 3;
        }
        this.s = i;
        this.r = iA2;
    }

    @Override // yads.ls, yads.er2
    public final void b() {
        this.u = null;
    }

    @Override // yads.er2
    public final int e() {
        return this.s;
    }

    @Override // yads.er2
    public final int f() {
        return this.r;
    }

    @Override // yads.er2
    public final Object g() {
        return null;
    }

    @Override // yads.ls, yads.er2
    public final void a(float f) {
        this.q = f;
    }

    @Override // yads.ls, yads.er2
    public final void a() {
        this.t = C.TIME_UNSET;
        this.u = null;
    }

    @Override // yads.ls, yads.er2
    public final int a(long j, List list) {
        int i;
        int i2;
        this.p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = this.t;
        if (j2 != C.TIME_UNSET && jElapsedRealtime - j2 < 1000 && (list.isEmpty() || ((zr) dq3.a(list)).equals(this.u))) {
            return list.size();
        }
        this.t = jElapsedRealtime;
        this.u = list.isEmpty() ? null : (zr) dq3.a(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jRound = ((zr) list.get(size - 1)).g - j;
        float f = this.q;
        int i3 = u56.a;
        if (f != 1.0f) {
            jRound = Math.round(jRound / ((double) f));
        }
        long j3 = this.j;
        if (jRound >= j3) {
            if (!list.isEmpty()) {
                long j4 = ((zr) dq3.a(list)).g;
            }
            vz2 vz2Var = this.d[a(jElapsedRealtime)];
            for (int i4 = 0; i4 < size; i4++) {
                zr zrVar = (zr) list.get(i4);
                vz2 vz2Var2 = zrVar.d;
                long jRound2 = zrVar.g - j;
                float f2 = this.q;
                if (f2 != 1.0f) {
                    jRound2 = Math.round(jRound2 / ((double) f2));
                }
                if (jRound2 >= j3 && vz2Var2.i < vz2Var.i && (i = vz2Var2.s) != -1 && i <= this.l && (i2 = vz2Var2.r) != -1 && i2 <= this.k && i < vz2Var.s) {
                    return i4;
                }
            }
        }
        return size;
    }

    public final int a(long j) {
        long j2;
        zj0 zj0Var = (zj0) this.g;
        synchronized (zj0Var) {
            j2 = zj0Var.l;
        }
        long j3 = (long) (j2 * this.m);
        this.g.getClass();
        long j4 = (long) (j3 / this.q);
        if (!this.o.isEmpty()) {
            int i = 1;
            while (i < this.o.size() - 1 && ((mb) this.o.get(i)).a < j4) {
                i++;
            }
            mb mbVar = (mb) this.o.get(i - 1);
            mb mbVar2 = (mb) this.o.get(i);
            long j5 = mbVar.a;
            float f = (j4 - j5) / (mbVar2.a - j5);
            long j6 = mbVar.b;
            j4 = j6 + ((long) (f * (mbVar2.b - j6)));
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.b; i3++) {
            if (j == Long.MIN_VALUE || !b(i3, j)) {
                if (a(i3).i <= j4) {
                    return i3;
                }
                i2 = i3;
            }
        }
        return i2;
    }

    public static void a(ArrayList arrayList, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            ke3 ke3Var = (ke3) arrayList.get(i);
            if (ke3Var != null) {
                ke3Var.a(new mb(j, jArr[i]));
            }
        }
    }
}
