package yads;

import androidx.media3.common.C;
import defpackage.l0a;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class k14 {
    public final int a;
    public final h14 b;
    public final CopyOnWriteArrayList c;
    public final long d;

    public k14() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, yads.l14] */
    public final void a(final cu3 cu3Var, final r04 r04Var, final IOException iOException, final boolean z) {
        for (j14 j14Var : this.c) {
            final ?? r4 = j14Var.b;
            u56.a(j14Var.a, new Runnable() { // from class: j0a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(r4, cu3Var, r04Var, iOException, z);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, yads.l14] */
    public final void b(final r04 r04Var) {
        final h14 h14Var = this.b;
        h14Var.getClass();
        for (j14 j14Var : this.c) {
            final ?? r3 = j14Var.b;
            u56.a(j14Var.a, new Runnable() { // from class: i0a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(r3, h14Var, r04Var);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, yads.l14] */
    public final void c(final cu3 cu3Var, final r04 r04Var) {
        for (j14 j14Var : this.c) {
            final ?? r2 = j14Var.b;
            u56.a(j14Var.a, new Runnable() { // from class: n0a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.c(r2, cu3Var, r04Var);
                }
            });
        }
    }

    public k14(CopyOnWriteArrayList copyOnWriteArrayList, int i, h14 h14Var, long j) {
        this.c = copyOnWriteArrayList;
        this.a = i;
        this.b = h14Var;
        this.d = j;
    }

    public final /* synthetic */ void c(l14 l14Var, cu3 cu3Var, r04 r04Var) {
        l14Var.b(this.a, this.b, cu3Var, r04Var);
    }

    public final /* synthetic */ void a(l14 l14Var, cu3 cu3Var, r04 r04Var) {
        l14Var.c(this.a, this.b, cu3Var, r04Var);
    }

    public final /* synthetic */ void b(l14 l14Var, cu3 cu3Var, r04 r04Var) {
        l14Var.a(this.a, this.b, cu3Var, r04Var);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, yads.l14] */
    public final void a(final cu3 cu3Var, final r04 r04Var) {
        for (j14 j14Var : this.c) {
            final ?? r2 = j14Var.b;
            u56.a(j14Var.a, new Runnable() { // from class: k0a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(r2, cu3Var, r04Var);
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, yads.l14] */
    public final void b(final cu3 cu3Var, final r04 r04Var) {
        for (j14 j14Var : this.c) {
            final ?? r2 = j14Var.b;
            u56.a(j14Var.a, new Runnable() { // from class: m0a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.b(r2, cu3Var, r04Var);
                }
            });
        }
    }

    public final /* synthetic */ void a(l14 l14Var, cu3 cu3Var, r04 r04Var, IOException iOException, boolean z) {
        l14Var.a(this.a, this.b, cu3Var, r04Var, iOException, z);
    }

    public final /* synthetic */ void a(l14 l14Var, h14 h14Var, r04 r04Var) {
        l14Var.a(this.a, h14Var, r04Var);
    }

    public final void a(r04 r04Var) {
        for (j14 j14Var : this.c) {
            u56.a(j14Var.a, (Runnable) new l0a(this, j14Var.b, r04Var, 0));
        }
    }

    public final /* synthetic */ void a(l14 l14Var, r04 r04Var) {
        l14Var.b(this.a, this.b, r04Var);
    }

    public final long a(long j) {
        long jB = u56.b(j);
        return jB == C.TIME_UNSET ? C.TIME_UNSET : this.d + jB;
    }
}
