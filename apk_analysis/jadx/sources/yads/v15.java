package yads;

import android.net.Uri;
import android.os.Handler;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import defpackage.wea;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class v15 implements z04, zs2, ku3, ou3 {
    public static final Map N;
    public static final vz2 O;
    public boolean B;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public long H;
    public boolean J;
    public int K;
    public boolean L;
    public boolean M;
    public final Uri b;
    public final wc0 c;
    public final xl2 d;
    public final ll0 e;
    public final k14 f;
    public final tl2 g;
    public final y15 h;
    public final aj0 i;
    public final String j;
    public final long k;
    public final ov m;
    public y04 r;
    public hb3 s;
    public boolean v;
    public boolean w;
    public boolean x;
    public u15 y;
    public sh5 z;
    public final ru3 l = new ru3("ProgressiveMediaPeriod");
    public final m50 n = new m50();
    public final Runnable o = new wea(this, 0);
    public final Runnable p = new defpackage.oh5(this, 2);
    public final Handler q = u56.a((Handler.Callback) null);
    public t15[] u = new t15[0];
    public lc5[] t = new lc5[0];
    public long I = C.TIME_UNSET;
    public long A = C.TIME_UNSET;
    public int C = 1;

    static {
        HashMap map = new HashMap();
        map.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        N = Collections.unmodifiableMap(map);
        uz2 uz2Var = new uz2();
        uz2Var.a = "icy";
        uz2Var.k = MimeTypes.APPLICATION_ICY;
        O = new vz2(uz2Var);
    }

    public v15(Uri uri, wc0 wc0Var, ov ovVar, xl2 xl2Var, tl2 tl2Var, ll0 ll0Var, k14 k14Var, y15 y15Var, aj0 aj0Var, String str, int i) {
        this.b = uri;
        this.c = wc0Var;
        this.d = xl2Var;
        this.g = tl2Var;
        this.e = ll0Var;
        this.f = k14Var;
        this.h = y15Var;
        this.i = aj0Var;
        this.j = str;
        this.k = i;
        this.m = ovVar;
    }

    @Override // yads.z04
    public final long a(er2[] er2VarArr, boolean[] zArr, mc5[] mc5VarArr, boolean[] zArr2, long j) {
        er2 er2Var;
        long jSeekToUs = j;
        c();
        u15 u15Var = this.y;
        g06 g06Var = u15Var.a;
        boolean[] zArr3 = u15Var.c;
        int i = this.F;
        for (int i2 = 0; i2 < er2VarArr.length; i2++) {
            mc5 mc5Var = mc5VarArr[i2];
            if (mc5Var != null && (er2VarArr[i2] == null || !zArr[i2])) {
                int i3 = ((s15) mc5Var).b;
                if (!zArr3[i3]) {
                    defpackage.ud.g();
                    return 0L;
                }
                this.F--;
                zArr3[i3] = false;
                mc5VarArr[i2] = null;
            }
        }
        boolean z = !this.D ? jSeekToUs == 0 : i != 0;
        for (int i4 = 0; i4 < er2VarArr.length; i4++) {
            if (mc5VarArr[i4] == null && (er2Var = er2VarArr[i4]) != null) {
                if (er2Var.length() != 1) {
                    defpackage.ud.g();
                    return 0L;
                }
                if (er2Var.b(0) != 0) {
                    defpackage.ud.g();
                    return 0L;
                }
                int iIndexOf = g06Var.c.indexOf(er2Var.c());
                if (iIndexOf < 0) {
                    iIndexOf = -1;
                }
                if (zArr3[iIndexOf]) {
                    defpackage.ud.g();
                    return 0L;
                }
                this.F++;
                zArr3[iIndexOf] = true;
                mc5VarArr[i4] = new s15(this, iIndexOf);
                zArr2[i4] = true;
                if (!z) {
                    lc5 lc5Var = this.t[iIndexOf];
                    z = (lc5Var.c(jSeekToUs, true) || lc5Var.q + lc5Var.s == 0) ? false : true;
                }
            }
        }
        if (this.F == 0) {
            this.J = false;
            this.E = false;
            boolean zB = this.l.b();
            lc5[] lc5VarArr = this.t;
            if (zB) {
                for (lc5 lc5Var2 : lc5VarArr) {
                    lc5Var2.a();
                }
                mu3 mu3Var = this.l.b;
                if (mu3Var == null) {
                    defpackage.ud.g();
                    return 0L;
                }
                mu3Var.a(false);
            } else {
                for (lc5 lc5Var3 : lc5VarArr) {
                    lc5Var3.b(false);
                }
            }
        } else if (z) {
            jSeekToUs = seekToUs(jSeekToUs);
            for (int i5 = 0; i5 < mc5VarArr.length; i5++) {
                if (mc5VarArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.D = true;
        return jSeekToUs;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(sh5 sh5Var) {
        this.z = this.s == null ? sh5Var : new rh5(C.TIME_UNSET, 0L);
        this.A = sh5Var.c();
        boolean z = !this.G && sh5Var.c() == C.TIME_UNSET;
        this.B = z;
        this.C = z ? 7 : 1;
        y15 y15Var = this.h;
        long j = this.A;
        boolean zB = sh5Var.b();
        boolean z2 = this.B;
        if (j == C.TIME_UNSET) {
            j = y15Var.p;
        }
        if (y15Var.o || y15Var.p != j || y15Var.q != zB || y15Var.r != z2) {
            y15Var.p = j;
            y15Var.q = zB;
            y15Var.r = z2;
            y15Var.o = false;
            jl5 jl5Var = new jl5(y15Var.p, y15Var.q, y15Var.r, y15Var.h);
            kx5 w15Var = jl5Var;
            if (y15Var.o) {
                w15Var = new w15(jl5Var);
            }
            y15Var.a(w15Var);
        }
        if (this.w) {
            return;
        }
        g();
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        if (this.L || this.l.c != null || this.J) {
            return false;
        }
        if (this.w && this.F == 0) {
            return false;
        }
        boolean zD = this.n.d();
        if (this.l.b()) {
            return zD;
        }
        i();
        return true;
    }

    public final int d() {
        int i = 0;
        for (lc5 lc5Var : this.t) {
            i += lc5Var.q + lc5Var.p;
        }
        return i;
    }

    public final void e() {
        if (this.M) {
            return;
        }
        y04 y04Var = this.r;
        y04Var.getClass();
        y04Var.a((ui5) this);
    }

    public final /* synthetic */ void f() {
        this.G = true;
    }

    public final void g() {
        if (this.M || this.w || !this.v || this.z == null) {
            return;
        }
        for (lc5 lc5Var : this.t) {
            if (lc5Var.c() == null) {
                return;
            }
        }
        m50 m50Var = this.n;
        synchronized (m50Var) {
            m50Var.a = false;
        }
        int length = this.t.length;
        f06[] f06VarArr = new f06[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            vz2 vz2VarC = this.t[i].c();
            vz2VarC.getClass();
            String str = vz2VarC.m;
            boolean zEquals = MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str));
            boolean z = zEquals || MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str));
            zArr[i] = z;
            this.x = z | this.x;
            hb3 hb3Var = this.s;
            if (hb3Var != null) {
                if (zEquals || this.u[i].b) {
                    h84 h84Var = vz2VarC.k;
                    h84 h84Var2 = h84Var == null ? new h84(hb3Var) : new h84((g84[]) u56.a((Object[]) h84Var.b, (Object[]) new g84[]{hb3Var}));
                    uz2 uz2Var = new uz2(vz2VarC);
                    uz2Var.i = h84Var2;
                    vz2VarC = new vz2(uz2Var);
                }
                if (zEquals && vz2VarC.g == -1 && vz2VarC.h == -1 && hb3Var.b != -1) {
                    uz2 uz2Var2 = new uz2(vz2VarC);
                    uz2Var2.f = hb3Var.b;
                    vz2VarC = new vz2(uz2Var2);
                }
            }
            int iA = this.d.a(vz2VarC);
            uz2 uz2Var3 = new uz2(vz2VarC);
            uz2Var3.D = iA;
            f06VarArr[i] = new f06(Integer.toString(i), new vz2(uz2Var3));
        }
        this.y = new u15(new g06(f06VarArr), zArr);
        this.w = true;
        y04 y04Var = this.r;
        y04Var.getClass();
        y04Var.a((z04) this);
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        long jA;
        boolean z;
        c();
        if (this.L || this.F == 0) {
            return Long.MIN_VALUE;
        }
        long j = this.I;
        if (j != C.TIME_UNSET) {
            return j;
        }
        if (this.x) {
            int length = this.t.length;
            jA = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                u15 u15Var = this.y;
                if (u15Var.b[i] && u15Var.c[i]) {
                    lc5 lc5Var = this.t[i];
                    synchronized (lc5Var) {
                        z = lc5Var.w;
                    }
                    if (!z) {
                        jA = Math.min(jA, this.t[i].b());
                    }
                }
            }
        } else {
            jA = Long.MAX_VALUE;
        }
        if (jA == Long.MAX_VALUE) {
            jA = a(false);
        }
        return jA == Long.MIN_VALUE ? this.H : jA;
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // yads.z04
    public final g06 getTrackGroups() {
        c();
        return this.y.a;
    }

    public final void h() {
        this.q.post(new defpackage.ou(this, 3));
    }

    public final void i() {
        r15 r15Var = new r15(this, this.b, this.c, this.m, this, this.n);
        if (this.w) {
            long j = this.I;
            if (j == C.TIME_UNSET) {
                defpackage.ud.g();
                return;
            }
            long j2 = this.A;
            if (j2 != C.TIME_UNSET && j > j2) {
                this.L = true;
                this.I = C.TIME_UNSET;
                return;
            }
            sh5 sh5Var = this.z;
            sh5Var.getClass();
            long j3 = sh5Var.b(this.I).a.b;
            long j4 = this.I;
            r15Var.f.a = j3;
            r15Var.i = j4;
            r15Var.h = true;
            r15Var.l = false;
            for (lc5 lc5Var : this.t) {
                lc5Var.t = this.I;
            }
            this.I = C.TIME_UNSET;
        }
        this.K = d();
        this.l.a(r15Var, this, this.e.a(this.C));
        bd0 bd0Var = r15Var.j;
        k14 k14Var = this.f;
        k14Var.c(new cu3(bd0Var), new r04(1, -1, null, 0, null, k14Var.a(r15Var.i), k14Var.a(this.A)));
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        boolean z;
        if (!this.l.b()) {
            return false;
        }
        m50 m50Var = this.n;
        synchronized (m50Var) {
            z = m50Var.a;
        }
        return z;
    }

    @Override // yads.z04
    public final void maybeThrowPrepareError() throws IOException {
        this.l.a(this.e.a(this.C));
        if (!this.L || this.w) {
            return;
        }
        defpackage.e2.h("Loading finished before preparation is complete.", null);
    }

    @Override // yads.z04
    public final long readDiscontinuity() {
        if (!this.E) {
            return C.TIME_UNSET;
        }
        if (!this.L && d() <= this.K) {
            return C.TIME_UNSET;
        }
        this.E = false;
        return this.H;
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    /* JADX WARN: Code duplicated, block: B:26:0x005b A[LOOP:1: B:25:0x0059->B:26:0x005b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0069  */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0071  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c A[LOOP:2: B:34:0x007a->B:35:0x007c, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x0055, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x0071, please report this as an issue */
    @Override // yads.z04
    public final long seekToUs(long j) {
        int i;
        int i2;
        mu3 mu3Var;
        c();
        boolean[] zArr = this.y.b;
        if (!this.z.b()) {
            j = 0;
        }
        this.E = false;
        this.H = j;
        if (this.I != C.TIME_UNSET) {
            this.I = j;
            return j;
        }
        if (this.C == 7) {
            this.J = false;
            this.I = j;
            this.L = false;
            if (this.l.b()) {
                this.l.c = null;
                for (lc5 lc5Var : this.t) {
                    lc5Var.b(false);
                }
                break;
                break;
            }
            for (lc5 lc5Var2 : this.t) {
                lc5Var2.a();
            }
            mu3Var = this.l.b;
            if (mu3Var != null) {
                mu3Var.a(false);
                return j;
            }
            defpackage.ud.g();
            return 0L;
        }
        int length = this.t.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (!this.t[i3].c(j, false) && (zArr[i3] || !this.x)) {
                this.J = false;
                this.I = j;
                this.L = false;
                if (this.l.b()) {
                    this.l.c = null;
                    while (i < r0) {
                        lc5Var.b(false);
                    }
                    break;
                }
                while (i2 < r4) {
                    lc5Var2.a();
                }
                mu3Var = this.l.b;
                if (mu3Var != null) {
                    mu3Var.a(false);
                    return j;
                }
                defpackage.ud.g();
                return 0L;
            }
        }
        return j;
    }

    public final void c() {
        if (this.w) {
            this.y.getClass();
            this.z.getClass();
        } else {
            defpackage.ud.g();
        }
    }

    @Override // yads.ou3
    public final void b() {
        for (lc5 lc5Var : this.t) {
            lc5Var.b(true);
            lc5Var.d();
        }
        ov ovVar = this.m;
        ws2 ws2Var = ovVar.b;
        if (ws2Var != null) {
            ws2Var.release();
            ovVar.b = null;
        }
        ovVar.c = null;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2) {
        sh5 sh5Var;
        r15 r15Var = (r15) nu3Var;
        if (this.A == C.TIME_UNSET && (sh5Var = this.z) != null) {
            boolean zB = sh5Var.b();
            long jA = a(true);
            long j3 = jA == Long.MIN_VALUE ? 0L : jA + 10000;
            this.A = j3;
            y15 y15Var = this.h;
            boolean z = this.B;
            if (j3 == C.TIME_UNSET) {
                j3 = y15Var.p;
            }
            if (y15Var.o || y15Var.p != j3 || y15Var.q != zB || y15Var.r != z) {
                y15Var.p = j3;
                y15Var.q = zB;
                y15Var.r = z;
                y15Var.o = false;
                jl5 jl5Var = new jl5(y15Var.p, y15Var.q, y15Var.r, y15Var.h);
                kx5 w15Var = jl5Var;
                if (y15Var.o) {
                    w15Var = new w15(jl5Var);
                }
                y15Var.a(w15Var);
            }
        }
        Uri uri = r15Var.b.c;
        cu3 cu3Var = new cu3();
        this.e.getClass();
        k14 k14Var = this.f;
        k14Var.b(cu3Var, new r04(1, -1, null, 0, null, k14Var.a(r15Var.i), k14Var.a(this.A)));
        this.L = true;
        y04 y04Var = this.r;
        y04Var.getClass();
        y04Var.a((ui5) this);
    }

    @Override // yads.ku3
    public final lu3 a(nu3 nu3Var, long j, long j2, IOException iOException, int i) {
        long jMin;
        lu3 lu3Var;
        sh5 sh5Var;
        r15 r15Var = (r15) nu3Var;
        Uri uri = r15Var.b.c;
        cu3 cu3Var = new cu3();
        int i2 = u56.a;
        this.e.getClass();
        boolean z = true;
        if (!(iOException instanceof xs4) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof ia3) && !(iOException instanceof qu3)) {
            Throwable cause = iOException;
            while (true) {
                if (cause != null) {
                    if ((cause instanceof xc0) && ((xc0) cause).b == 2008) {
                        jMin = -9223372036854775807L;
                        break;
                    }
                    cause = cause.getCause();
                } else {
                    jMin = Math.min((i - 1) * 1000, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
                    break;
                }
            }
        } else {
            jMin = -9223372036854775807L;
            break;
        }
        if (jMin == C.TIME_UNSET) {
            lu3Var = ru3.e;
        } else {
            int iD = d();
            int i3 = iD > this.K ? 1 : 0;
            if (!this.G && ((sh5Var = this.z) == null || sh5Var.c() == C.TIME_UNSET)) {
                boolean z2 = this.w;
                if (z2 && !this.E && this.I == C.TIME_UNSET) {
                    this.J = true;
                    lu3Var = ru3.d;
                } else {
                    this.E = z2;
                    this.H = 0L;
                    this.K = 0;
                    for (lc5 lc5Var : this.t) {
                        lc5Var.b(false);
                    }
                    r15Var.f.a = 0L;
                    r15Var.i = 0L;
                    r15Var.h = true;
                    r15Var.l = false;
                }
            } else {
                this.K = iD;
            }
            lu3Var = new lu3(i3, jMin);
        }
        int i4 = lu3Var.a;
        if (i4 != 0 && i4 != 1) {
            z = false;
        }
        k14 k14Var = this.f;
        k14Var.a(cu3Var, new r04(1, -1, null, 0, null, k14Var.a(r15Var.i), k14Var.a(this.A)), iOException, !z);
        if (!z) {
            this.e.getClass();
        }
        return lu3Var;
    }

    @Override // yads.z04
    public final void a(y04 y04Var, long j) {
        this.r = y04Var;
        this.n.d();
        i();
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2, boolean z) {
        r15 r15Var = (r15) nu3Var;
        Uri uri = r15Var.b.c;
        cu3 cu3Var = new cu3();
        this.e.getClass();
        k14 k14Var = this.f;
        k14Var.a(cu3Var, new r04(1, -1, null, 0, null, k14Var.a(r15Var.i), k14Var.a(this.A)));
        if (z) {
            return;
        }
        for (lc5 lc5Var : this.t) {
            lc5Var.b(false);
        }
        if (this.F > 0) {
            y04 y04Var = this.r;
            y04Var.getClass();
            y04Var.a((ui5) this);
        }
    }

    @Override // yads.z04
    public final void a(long j) throws Throwable {
        c();
        if (this.I != C.TIME_UNSET) {
            return;
        }
        boolean[] zArr = this.y.c;
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            this.t[i].a(j, zArr[i]);
        }
    }

    @Override // yads.z04
    public final long a(long j, th5 th5Var) {
        c();
        if (!this.z.b()) {
            return 0L;
        }
        qh5 qh5VarB = this.z.b(j);
        return th5Var.a(j, qh5VarB.a.a, qh5VarB.b.a);
    }

    public final void a(int i) {
        c();
        boolean[] zArr = this.y.b;
        if (this.J && zArr[i] && !this.t[i].a(false)) {
            this.I = 0L;
            this.J = false;
            this.E = true;
            this.H = 0L;
            this.K = 0;
            for (lc5 lc5Var : this.t) {
                lc5Var.b(false);
            }
            y04 y04Var = this.r;
            y04Var.getClass();
            y04Var.a((ui5) this);
        }
    }

    @Override // yads.zs2
    public final k06 a(int i, int i2) {
        return a(new t15(i, false));
    }

    @Override // yads.zs2
    public final void a() {
        this.v = true;
        this.q.post(this.o);
    }

    @Override // yads.zs2
    public final void a(sh5 sh5Var) {
        this.q.post(new defpackage.nu(4, this, sh5Var));
    }

    public final lc5 a(t15 t15Var) {
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (t15Var.equals(this.u[i])) {
                return this.t[i];
            }
        }
        aj0 aj0Var = this.i;
        xl2 xl2Var = this.d;
        tl2 tl2Var = this.g;
        xl2Var.getClass();
        lc5 lc5Var = new lc5(aj0Var, xl2Var, tl2Var);
        lc5Var.f = this;
        int i2 = length + 1;
        t15[] t15VarArr = (t15[]) Arrays.copyOf(this.u, i2);
        t15VarArr[length] = t15Var;
        this.u = t15VarArr;
        lc5[] lc5VarArr = (lc5[]) Arrays.copyOf(this.t, i2);
        lc5VarArr[length] = lc5Var;
        this.t = lc5VarArr;
        return lc5Var;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x001a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public final long a(boolean z) {
        lc5 lc5Var;
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.t.length; i++) {
            if (!z) {
                u15 u15Var = this.y;
                u15Var.getClass();
                if (u15Var.c[i]) {
                    lc5Var = this.t[i];
                    synchronized (lc5Var) {
                        long j = lc5Var.v;
                    }
                    jMax = Math.max(jMax, j);
                } else {
                    continue;
                }
            } else {
                lc5Var = this.t[i];
                synchronized (lc5Var) {
                    long j2 = lc5Var.v;
                    jMax = Math.max(jMax, j2);
                }
            }
        }
        return jMax;
    }
}
