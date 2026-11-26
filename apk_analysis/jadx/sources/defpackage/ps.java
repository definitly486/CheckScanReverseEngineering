package defpackage;

import android.os.Trace;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes3.dex */
public final class ps extends Painter implements RememberObserver {
    public static final os s = new os(0);
    public ColorFilter d;
    public boolean e;
    public mb4 f;
    public zs7 g;
    public y22 i;
    public nl3<? super b, j59> k;
    public ss n;
    public a o;
    public final z68 p;
    public final z68 q;
    public final gy6 r;
    public final MutableState b = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    public float c = 1.0f;
    public long h = Size.Companion.m6064getUnspecifiedNHjbRc();
    public nl3<? super b, ? extends b> j = s;
    public ContentScale l = ContentScale.Companion.getFit();
    public int m = DrawScope.Companion.m6809getDefaultFilterQualityfv9h1I();

    public static final class a {
        public final r14 a;
        public final b24 b;
        public final ns c;

        public a(r14 r14Var, b24 b24Var, ns nsVar) {
            this.a = r14Var;
            this.b = b24Var;
            this.c = nsVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aa4.e(this.a, aVar.a)) {
                return false;
            }
            ns nsVar = aVar.c;
            ns nsVar2 = this.c;
            return aa4.e(nsVar2, nsVar) && nsVar2.equals(this.b, aVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            ns nsVar = this.c;
            return nsVar.hashCode(this.b) + ((nsVar.hashCode() + iHashCode) * 31);
        }

        public final String toString() {
            return "Input(imageLoader=" + this.a + ", request=" + this.b + ", modelEqualityDelegate=" + this.c + ")";
        }
    }

    public interface b {

        public static final class a implements b {
            public static final a a = new a();

            @Override // ps.b
            public final Painter a() {
                return null;
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof a);
            }

            public final int hashCode() {
                return -1625786264;
            }

            public final String toString() {
                return "Empty";
            }
        }

        /* JADX INFO: renamed from: ps$b$b, reason: collision with other inner class name */
        public static final class C0316b implements b {
            public final Painter a;
            public final u03 b;

            public C0316b(Painter painter, u03 u03Var) {
                this.a = painter;
                this.b = u03Var;
            }

            @Override // ps.b
            public final Painter a() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0316b)) {
                    return false;
                }
                C0316b c0316b = (C0316b) obj;
                return aa4.e(this.a, c0316b.a) && this.b.equals(c0316b.b);
            }

            public final int hashCode() {
                Painter painter = this.a;
                return this.b.hashCode() + ((painter == null ? 0 : painter.hashCode()) * 31);
            }

            public final String toString() {
                return "Error(painter=" + this.a + ", result=" + this.b + ")";
            }
        }

        public static final class c implements b {
            public final Painter a;

            public c(Painter painter) {
                this.a = painter;
            }

            @Override // ps.b
            public final Painter a() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof c) && aa4.e(this.a, ((c) obj).a);
            }

            public final int hashCode() {
                Painter painter = this.a;
                if (painter == null) {
                    return 0;
                }
                return painter.hashCode();
            }

            public final String toString() {
                return "Loading(painter=" + this.a + ")";
            }
        }

        public static final class d implements b {
            public final Painter a;
            public final zc8 b;

            public d(Painter painter, zc8 zc8Var) {
                this.a = painter;
                this.b = zc8Var;
            }

            @Override // ps.b
            public final Painter a() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                return aa4.e(this.a, dVar.a) && this.b.equals(dVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return "Success(painter=" + this.a + ", result=" + this.b + ")";
            }
        }

        Painter a();
    }

    @bd2(c = "coil3.compose.AsyncImagePainter$launchJob$1", f = "AsyncImagePainter.kt", l = {234, WebmConstants.MkvEbmlElement.BLOCK_ADD_ID}, m = "invokeSuspend", v = 1)
    public static final class c extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public ps l;
        public int m;
        public final /* synthetic */ a o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(a aVar, e02<? super c> e02Var) {
            super(2, e02Var);
            this.o = aVar;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ps.this.new c(this.o, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((c) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x005a  */
        /* JADX WARN: Code duplicated, block: B:24:0x006f  */
        /* JADX WARN: Code duplicated, block: B:26:0x0073  */
        /* JADX WARN: Code duplicated, block: B:28:0x007b  */
        /* JADX WARN: Code duplicated, block: B:32:0x008f  */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        
            if (r7 == r0) goto L18;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.m
                r2 = 0
                r3 = 2
                ps r4 = defpackage.ps.this
                r5 = 1
                if (r1 == 0) goto L1f
                if (r1 == r5) goto L1b
                if (r1 != r3) goto L15
                ps r6 = r6.l
                defpackage.r57.b(r7)
                goto L51
            L15:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r2
            L1b:
                defpackage.r57.b(r7)
                goto L39
            L1f:
                defpackage.r57.b(r7)
                ss r7 = r4.n
                ps$a r1 = r6.o
                if (r7 == 0) goto L3c
                b24 r2 = r1.b
                b24 r2 = r4.d(r2, r5)
                r14 r1 = r1.a
                r6.m = r5
                java.lang.Object r7 = r7.a(r1, r2, r6)
                if (r7 != r0) goto L39
                goto L4f
            L39:
                ps$b r7 = (ps.b) r7
                goto L89
            L3c:
                b24 r7 = r1.b
                r5 = 0
                b24 r7 = r4.d(r7, r5)
                r14 r1 = r1.a
                r6.l = r4
                r6.m = r3
                java.lang.Object r7 = r1.a(r7, r6)
                if (r7 != r0) goto L50
            L4f:
                return r0
            L50:
                r6 = r4
            L51:
                g24 r7 = (defpackage.g24) r7
                r6.getClass()
                boolean r0 = r7 instanceof defpackage.zc8
                if (r0 == 0) goto L6f
                ps$b$d r0 = new ps$b$d
                zc8 r7 = (defpackage.zc8) r7
                x04 r1 = r7.a
                b24 r2 = r7.b
                android.content.Context r2 = r2.a
                int r6 = r6.m
                androidx.compose.ui.graphics.painter.Painter r6 = defpackage.v14.a(r1, r2, r6)
                r0.<init>(r6, r7)
            L6d:
                r7 = r0
                goto L89
            L6f:
                boolean r0 = r7 instanceof defpackage.u03
                if (r0 == 0) goto L8f
                ps$b$b r0 = new ps$b$b
                u03 r7 = (defpackage.u03) r7
                x04 r1 = r7.a
                if (r1 == 0) goto L85
                b24 r2 = r7.b
                android.content.Context r2 = r2.a
                int r6 = r6.m
                androidx.compose.ui.graphics.painter.Painter r2 = defpackage.v14.a(r1, r2, r6)
            L85:
                r0.<init>(r2, r7)
                goto L6d
            L89:
                r4.e(r7)
                j59 r6 = defpackage.j59.a
                return r6
            L8f:
                defpackage.me0.e()
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: ps.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class d implements xk8 {
        public final /* synthetic */ b24 a;
        public final /* synthetic */ ps b;

        public d(b24 b24Var, ps psVar) {
            this.a = b24Var;
            this.b = psVar;
        }

        @Override // defpackage.xk8
        public final void a(x04 x04Var) {
            Painter painterA;
            b24 b24Var = this.a;
            ps psVar = this.b;
            Painter painterA2 = x04Var != null ? v14.a(x04Var, b24Var.a, psVar.m) : null;
            if (painterA2 == null && ((Boolean) c53.a(b24Var, e24.a)).booleanValue() && (painterA = psVar.a()) != null) {
                painterA2 = painterA;
            }
            psVar.e(new b.c(painterA2));
        }
    }

    public ps(a aVar) {
        this.o = aVar;
        this.p = px.a(aVar);
        z68 z68VarA = px.a(b.a.a);
        this.q = z68VarA;
        this.r = bf3.b(z68VarA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Painter a() {
        return (Painter) this.b.getValue();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.c = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.d = colorFilter;
        return true;
    }

    public final void b() {
        a aVar = this.o;
        if (aVar == null) {
            return;
        }
        y22 y22Var = this.i;
        if (y22Var == null) {
            aa4.j("scope");
            throw null;
        }
        c cVar = new c(aVar, null);
        o22 coroutineContext = y22Var.getCoroutineContext();
        int i = nb9.b;
        r22 r22Var = (r22) coroutineContext.get(r22.Key);
        s68 s68VarB = (r22Var == null || r22Var.equals(qo2.b)) ? av0.b(y22Var, qo2.b, c32.UNDISPATCHED, cVar) : av0.b(z22.a(new ok2(y22Var.getCoroutineContext())), new pk2(r22Var), c32.UNDISPATCHED, cVar);
        mb4 mb4Var = this.f;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.f = s68VarB;
    }

    public final void c(a aVar) {
        if (aa4.e(this.o, aVar)) {
            return;
        }
        this.o = aVar;
        if (aVar == null) {
            mb4 mb4Var = this.f;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.f = null;
        } else if (this.e) {
            b();
        }
        if (aVar != null) {
            z68 z68Var = this.p;
            z68Var.getClass();
            z68Var.k(null, aVar);
        }
    }

    public final b24 d(b24 b24Var, boolean z) {
        w18 w18Var = b24Var.o;
        b24.c cVar = b24Var.s;
        if (w18Var instanceof as2) {
            as2 as2Var = (as2) w18Var;
            if (this.g == null) {
                zs7 zs7VarB = bt7.b(1, 0, cu0.DROP_OLDEST, 2);
                long j = this.h;
                if (j != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    zs7VarB.e(Size.m6044boximpl(j));
                }
                this.g = zs7VarB;
            }
            as2Var.b();
        }
        b24.a aVarA = b24.a(b24Var);
        aVarA.d = new d(b24Var, this);
        if (cVar.d == null) {
            aVarA.i = w18.u1;
        }
        if (cVar.e == null) {
            ContentScale contentScale = this.l;
            int i = nb9.b;
            ContentScale.Companion companion = ContentScale.Companion;
            aVarA.j = (aa4.e(contentScale, companion.getFit()) || aa4.e(contentScale, companion.getInside())) ? md7.FIT : md7.FILL;
        }
        if (cVar.f == null) {
            aVarA.k = re6.INEXACT;
        }
        if (z) {
            gx2 gx2Var = gx2.b;
            aVarA.f = gx2Var;
            aVarA.g = gx2Var;
            aVarA.h = gx2Var;
        }
        return aVarA.a();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x004b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0053  */
    /* JADX WARN: Code duplicated, block: B:14:0x0056  */
    /* JADX WARN: Code duplicated, block: B:16:0x0059  */
    /* JADX WARN: Code duplicated, block: B:19:0x0064  */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x0070  */
    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    public final void e(b bVar) {
        g24 g24Var;
        nl3<? super b, j59> nl3Var;
        Object objA;
        RememberObserver rememberObserver;
        RememberObserver rememberObserver2;
        z68 z68Var = this.q;
        b bVar2 = (b) z68Var.getValue();
        b bVarInvoke = this.j.invoke(bVar);
        z68Var.setValue(bVarInvoke);
        if (!(bVarInvoke instanceof b.d)) {
            if (bVarInvoke instanceof b.C0316b) {
                g24Var = ((b.C0316b) bVarInvoke).b;
            }
            this.b.setValue(bVarInvoke.a());
            if (bVar2.a() != bVarInvoke.a()) {
                objA = bVar2.a();
                if (objA instanceof RememberObserver) {
                    rememberObserver = (RememberObserver) objA;
                } else {
                    rememberObserver = null;
                }
                if (rememberObserver != null) {
                    rememberObserver.onForgotten();
                }
                Object objA2 = bVarInvoke.a();
                rememberObserver2 = objA2 instanceof RememberObserver ? (RememberObserver) objA2 : null;
                if (rememberObserver2 != null) {
                    rememberObserver2.onRemembered();
                }
            }
            nl3Var = this.k;
            if (nl3Var != null) {
                nl3Var.invoke(bVarInvoke);
            }
        }
        g24Var = ((b.d) bVarInvoke).b;
        ((j29) c53.a(g24Var.getRequest(), f24.a)).a(qs.a, g24Var);
        this.b.setValue(bVarInvoke.a());
        if (bVar2.a() != bVarInvoke.a()) {
            objA = bVar2.a();
            if (objA instanceof RememberObserver) {
                rememberObserver = (RememberObserver) objA;
            } else {
                rememberObserver = null;
            }
            if (rememberObserver != null) {
                rememberObserver.onForgotten();
            }
            Object objA3 = bVarInvoke.a();
            if (objA3 instanceof RememberObserver) {
            }
            if (rememberObserver2 != null) {
                rememberObserver2.onRemembered();
            }
        }
        nl3Var = this.k;
        if (nl3Var != null) {
            nl3Var.invoke(bVarInvoke);
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo6926getIntrinsicSizeNHjbRc() {
        Painter painterA = a();
        return painterA != null ? painterA.mo6926getIntrinsicSizeNHjbRc() : Size.Companion.m6064getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        mb4 mb4Var = this.f;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.f = null;
        Object objA = a();
        RememberObserver rememberObserver = objA instanceof RememberObserver ? (RememberObserver) objA : null;
        if (rememberObserver != null) {
            rememberObserver.onAbandoned();
        }
        this.e = false;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        long jMo6806getSizeNHjbRc = drawScope.mo6806getSizeNHjbRc();
        if (!Size.m6052equalsimpl0(this.h, jMo6806getSizeNHjbRc)) {
            this.h = jMo6806getSizeNHjbRc;
            zs7 zs7Var = this.g;
            if (zs7Var != null) {
                zs7Var.e(Size.m6044boximpl(jMo6806getSizeNHjbRc));
            }
        }
        Painter painterA = a();
        if (painterA != null) {
            painterA.m6932drawx_KDEd0(drawScope, drawScope.mo6806getSizeNHjbRc(), this.c, this.d);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        mb4 mb4Var = this.f;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.f = null;
        Object objA = a();
        RememberObserver rememberObserver = objA instanceof RememberObserver ? (RememberObserver) objA : null;
        if (rememberObserver != null) {
            rememberObserver.onForgotten();
        }
        this.e = false;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        Trace.beginSection("AsyncImagePainter.onRemembered");
        try {
            Object objA = a();
            RememberObserver rememberObserver = objA instanceof RememberObserver ? (RememberObserver) objA : null;
            if (rememberObserver != null) {
                rememberObserver.onRemembered();
            }
            b();
            this.e = true;
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }
}
