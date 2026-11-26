package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import coil3.request.NullRequestDataException;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes3.dex */
public final class sy6 implements r14 {
    public static final /* synthetic */ int f = 0;
    public final a a;
    public final kz1 b = z22.a(o22.a.C0306a.d(rm9.b(), new zy6(s22.a.b)));
    public final nj c;
    public final fs1 d;
    public volatile /* synthetic */ int e;

    public static final class a {
        public final Context a;
        public final b24.b b;
        public final fh8 c;
        public final fh8 d;
        public final fh8 e;
        public final fs1 f;

        public a(Context context, b24.b bVar, fh8 fh8Var, fh8 fh8Var2, fh8 fh8Var3, fs1 fs1Var) {
            this.a = context;
            this.b = bVar;
            this.c = fh8Var;
            this.d = fh8Var2;
            this.e = fh8Var3;
            this.f = fs1Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return aa4.e(this.a, aVar.a) && this.b.equals(aVar.b) && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.f == aVar.f;
            }
            return false;
        }

        public final int hashCode() {
            return (this.f.hashCode() + ((a13.b.t1.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        }

        public final String toString() {
            return "Options(application=" + this.a + ", defaults=" + this.b + ", mainCoroutineContextLazy=" + this.c + ", memoryCacheLazy=" + this.d + ", diskCacheLazy=" + this.e + ", eventListenerFactory=" + a13.b.t1 + ", componentRegistry=" + this.f + ", logger=null)";
        }
    }

    static {
        AtomicIntegerFieldUpdater.newUpdater(sy6.class, "e");
    }

    public sy6(a aVar) {
        this.a = aVar;
        gk gkVar = new gk(this);
        nj njVar = new nj(gkVar, this);
        this.c = njVar;
        fs1.a aVar2 = new fs1.a(aVar.f);
        b24.b bVar = aVar.b;
        Object obj = bVar.n.a.get(s14.a);
        boolean zBooleanValue = ((Boolean) (obj == null ? Boolean.TRUE : obj)).booleanValue();
        ArrayList arrayList = aVar2.d;
        ArrayList arrayList2 = aVar2.e;
        if (zBooleanValue) {
            arrayList.add(new xy6(0));
            arrayList2.add(new yy6());
        }
        aVar2.b(new zk(), x07.a(Uri.class));
        aVar2.b(new p47(), x07.a(Integer.class));
        b36 b36Var = new b36(new pj(), x07.a(b99.class));
        ArrayList arrayList3 = aVar2.c;
        arrayList3.add(b36Var);
        aVar2.a(new fs.a(), x07.a(b99.class));
        aVar2.a(new jy1.a(), x07.a(b99.class));
        aVar2.a(new w47.a(), x07.a(b99.class));
        aVar2.a(new fs2.a(), x07.a(Drawable.class));
        b53.b<Integer> bVar2 = t14.a;
        Object obj2 = bVar.n.a.get(t14.a);
        int iIntValue = ((Number) (obj2 == null ? 4 : obj2)).intValue();
        int i = jo7.a;
        io7 io7Var = new io7(iIntValue);
        int i2 = Build.VERSION.SDK_INT;
        int i3 = 1;
        Object obj3 = k23.a;
        if (i2 >= 29) {
            Object obj4 = bVar.n.a.get(t14.c);
            if (((Boolean) (obj4 == null ? Boolean.TRUE : obj4)).booleanValue()) {
                Object obj5 = bVar.n.a.get(t14.b);
                if (((k23) (obj5 == null ? obj3 : obj5)).equals(obj3)) {
                    arrayList2.add(new k51(new e78.a(io7Var), i3));
                }
            }
        }
        Object obj6 = bVar.n.a.get(t14.b);
        arrayList2.add(new k51(new aj0.b(io7Var, (k23) (obj6 != null ? obj6 : obj3)), i3));
        aVar2.b(new r93(), x07.a(File.class));
        aVar2.a(new eb4.a(), x07.a(b99.class));
        aVar2.a(new uw0.a(), x07.a(ByteBuffer.class));
        aVar2.b(new y98(), x07.a(String.class));
        aVar2.b(new o46(), x07.a(j46.class));
        arrayList3.add(new b36(new aa3(), x07.a(b99.class)));
        arrayList3.add(new b36(new c99(), x07.a(b99.class)));
        aVar2.a(new z93.a(), x07.a(b99.class));
        aVar2.a(new pw0.a(), x07.a(byte[].class));
        aVar2.a(new e92.a(), x07.a(b99.class));
        aVar2.a(new cj0.a(), x07.a(Bitmap.class));
        lz2 lz2Var = new lz2(this, gkVar, njVar);
        ArrayList arrayList4 = aVar2.a;
        arrayList4.add(lz2Var);
        this.d = new fs1(rn1.a(arrayList4), rn1.a(aVar2.b), rn1.a(arrayList3), rn1.a(arrayList), rn1.a(arrayList2));
    }

    @Override // defpackage.r14
    public final Object a(b24 b24Var, f02 f02Var) {
        return ((b24Var.c instanceof re9) || (b24Var.o instanceof oe9) || ((Lifecycle) c53.a(b24Var, f24.e)) != null) ? z22.c(new uy6(this, b24Var, null), f02Var) : b(b24Var, 1, f02Var);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x017e  */
    /* JADX WARN: Code duplicated, block: B:128:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:131:0x0206 A[Catch: all -> 0x003d, TryCatch #3 {all -> 0x003d, blocks: (B:15:0x0038, B:129:0x0200, B:131:0x0206, B:135:0x021f, B:134:0x0212, B:136:0x0223, B:138:0x0227, B:141:0x0233, B:142:0x0238, B:27:0x0063, B:115:0x01a6, B:117:0x01ad, B:119:0x01b7, B:120:0x01c1, B:121:0x01c4, B:108:0x0188, B:110:0x0192, B:112:0x0197, B:145:0x023e, B:146:0x0243), top: B:163:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0211  */
    /* JADX WARN: Code duplicated, block: B:134:0x0212 A[Catch: all -> 0x003d, TryCatch #3 {all -> 0x003d, blocks: (B:15:0x0038, B:129:0x0200, B:131:0x0206, B:135:0x021f, B:134:0x0212, B:136:0x0223, B:138:0x0227, B:141:0x0233, B:142:0x0238, B:27:0x0063, B:115:0x01a6, B:117:0x01ad, B:119:0x01b7, B:120:0x01c1, B:121:0x01c4, B:108:0x0188, B:110:0x0192, B:112:0x0197, B:145:0x023e, B:146:0x0243), top: B:163:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0223 A[Catch: all -> 0x003d, TryCatch #3 {all -> 0x003d, blocks: (B:15:0x0038, B:129:0x0200, B:131:0x0206, B:135:0x021f, B:134:0x0212, B:136:0x0223, B:138:0x0227, B:141:0x0233, B:142:0x0238, B:27:0x0063, B:115:0x01a6, B:117:0x01ad, B:119:0x01b7, B:120:0x01c1, B:121:0x01c4, B:108:0x0188, B:110:0x0192, B:112:0x0197, B:145:0x023e, B:146:0x0243), top: B:163:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0227 A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #3 {all -> 0x003d, blocks: (B:15:0x0038, B:129:0x0200, B:131:0x0206, B:135:0x021f, B:134:0x0212, B:136:0x0223, B:138:0x0227, B:141:0x0233, B:142:0x0238, B:27:0x0063, B:115:0x01a6, B:117:0x01ad, B:119:0x01b7, B:120:0x01c1, B:121:0x01c4, B:108:0x0188, B:110:0x0192, B:112:0x0197, B:145:0x023e, B:146:0x0243), top: B:163:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0233 A[Catch: all -> 0x003d, TRY_ENTER, TryCatch #3 {all -> 0x003d, blocks: (B:15:0x0038, B:129:0x0200, B:131:0x0206, B:135:0x021f, B:134:0x0212, B:136:0x0223, B:138:0x0227, B:141:0x0233, B:142:0x0238, B:27:0x0063, B:115:0x01a6, B:117:0x01ad, B:119:0x01b7, B:120:0x01c1, B:121:0x01c4, B:108:0x0188, B:110:0x0192, B:112:0x0197, B:145:0x023e, B:146:0x0243), top: B:163:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:149:0x0248 A[Catch: all -> 0x0255, TRY_LEAVE, TryCatch #0 {all -> 0x0255, blocks: (B:147:0x0244, B:149:0x0248, B:154:0x0257, B:155:0x025d), top: B:158:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:154:0x0257 A[Catch: all -> 0x0255, TRY_ENTER, TryCatch #0 {all -> 0x0255, blocks: (B:147:0x0244, B:149:0x0248, B:154:0x0257, B:155:0x025d), top: B:158:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [sy6] */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v4, types: [a13, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v2, types: [b24, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2, types: [l37] */
    public final Object b(b24 b24Var, int i, f02 f02Var) {
        vy6 vy6Var;
        ?? r3;
        ?? r4;
        l37 vp4Var;
        w18 kz6Var;
        b24 b24VarA;
        a13 a13Var;
        re6 re6Var;
        md7 md7Var;
        ImageView.ScaleType scaleType;
        l37 l37Var;
        x04 x04Var;
        a13 a13Var2;
        b24 b24Var2;
        b24 b24Var3;
        a13 a13Var3;
        l37 l37Var2;
        g24 g24Var;
        zc8 zc8Var;
        xk8 xk8Var;
        b24 b24Var4;
        int i2;
        if (f02Var instanceof vy6) {
            vy6Var = (vy6) f02Var;
            i2 = vy6Var.r;
            r4 = -2147483648;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                int i3 = i2 - Integer.MIN_VALUE;
                vy6Var.r = i3;
                r3 = i3;
            } else {
                vy6Var = new vy6(this, f02Var);
                r3 = i2;
            }
        } else {
            vy6Var = new vy6(this, f02Var);
            r3 = i2;
        }
        vy6 vy6Var2 = vy6Var;
        Object objA = vy6Var2.p;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        ?? r1 = vy6Var2.r;
        try {
            if (r1 == 0) {
                r57.b(objA);
                mb4 mb4VarF = qb4.f(vy6Var2.getContext());
                boolean z = i == 0;
                nj njVar = this.c;
                njVar.getClass();
                xk8 xk8Var2 = b24Var.c;
                if (xk8Var2 instanceof re9) {
                    Lifecycle lifecycleA = (Lifecycle) c53.a(b24Var, f24.e);
                    if (lifecycleA == null) {
                        lifecycleA = nj.a(b24Var);
                    }
                    vp4Var = new te9(njVar.a, b24Var, (re9) xk8Var2, lifecycleA, mb4VarF);
                } else {
                    Lifecycle lifecycleA2 = (Lifecycle) c53.a(b24Var, f24.e);
                    if (lifecycleA2 == null) {
                        lifecycleA2 = z ? nj.a(b24Var) : null;
                    }
                    vp4Var = lifecycleA2 != null ? new vp4(lifecycleA2, mb4VarF) : new de0(mb4VarF);
                }
                vp4Var.a();
                njVar.getClass();
                b24.a aVarA = b24.a(b24Var);
                xk8 xk8Var3 = b24Var.c;
                aVarA.b = njVar.a.a.b;
                b24.c cVar = b24Var.s;
                w18 w18Var = cVar.d;
                if (w18Var == null) {
                    if (xk8Var3 instanceof re9) {
                        View view = ((re9) xk8Var3).getView();
                        kz6Var = ((view instanceof ImageView) && ((scaleType = ((ImageView) view).getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) ? w18.u1 : new kz6(view);
                    } else {
                        kz6Var = w18.u1;
                    }
                    aVarA.i = kz6Var;
                } else {
                    kz6Var = w18Var;
                }
                if (cVar.e == null) {
                    re9 re9Var = xk8Var3 instanceof re9 ? (re9) xk8Var3 : null;
                    View view2 = re9Var != null ? re9Var.getView() : null;
                    ImageView imageView = view2 instanceof ImageView ? (ImageView) view2 : null;
                    if (imageView != null) {
                        Bitmap.Config[] configArr = sb9.a;
                        ImageView.ScaleType scaleType2 = imageView.getScaleType();
                        int i4 = scaleType2 == null ? -1 : sb9.a.a[scaleType2.ordinal()];
                        md7Var = (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) ? md7.FIT : md7.FILL;
                    } else {
                        md7Var = b24Var.p;
                    }
                    aVarA.j = md7Var;
                }
                if (cVar.f == null) {
                    if (w18Var == null && aa4.e(kz6Var, w18.u1)) {
                        re6Var = re6.INEXACT;
                    } else if ((xk8Var3 instanceof re9) && (kz6Var instanceof oe9)) {
                        re9 re9Var2 = (re9) xk8Var3;
                        if ((re9Var2.getView() instanceof ImageView) && re9Var2.getView() == ((oe9) kz6Var).getView()) {
                            re6Var = re6.INEXACT;
                        } else {
                            re6Var = re6.EXACT;
                        }
                    } else {
                        re6Var = re6.EXACT;
                    }
                    aVarA.k = re6Var;
                }
                b24VarA = aVarA.a();
                a13Var = a13.a;
                if (aa4.e(b24VarA.b, zp5.a)) {
                    throw new NullRequestDataException();
                }
                vp4Var.start();
                if (i == 0) {
                    vy6Var2.l = vp4Var;
                    vy6Var2.m = b24VarA;
                    vy6Var2.n = a13Var;
                    vy6Var2.r = 1;
                    if (vp4Var.b(vy6Var2) == a32Var) {
                    }
                }
                return a32Var;
            }
            if (r1 != 1) {
                if (r1 == 2) {
                    x04 x04Var2 = vy6Var2.o;
                    a13 a13Var4 = vy6Var2.n;
                    b24 b24Var5 = vy6Var2.m;
                    l37 l37Var3 = vy6Var2.l;
                    try {
                        r57.b(objA);
                        l37Var = l37Var3;
                        x04Var = x04Var2;
                        b24Var2 = b24Var5;
                        a13Var2 = a13Var4;
                        try {
                            a13Var2.getClass();
                            o22 o22Var = b24Var2.f;
                            wy6 wy6Var = new wy6(b24Var2, this, (t18) objA, a13Var2, x04Var, null);
                            vy6Var2.l = l37Var;
                            vy6Var2.m = b24Var2;
                            vy6Var2.n = a13Var2;
                            vy6Var2.o = null;
                            vy6Var2.r = 3;
                            objA = av0.d(o22Var, wy6Var, vy6Var2);
                            if (objA != a32Var) {
                                b24Var3 = b24Var2;
                                a13Var3 = a13Var2;
                                l37Var2 = l37Var;
                            }
                            return a32Var;
                        } catch (Throwable th) {
                            th = th;
                            r3 = b24Var2;
                            r1 = a13Var2;
                            r4 = l37Var;
                            try {
                                if (!(th instanceof CancellationException)) {
                                    r1.getClass();
                                    r3.getClass();
                                    throw th;
                                }
                                u03 u03VarA = rb9.a(r3, th);
                                d(u03VarA, r3.c, r1);
                                r4.complete();
                                return u03VarA;
                            } catch (Throwable th2) {
                                r4.complete();
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        r1 = a13Var4;
                        r3 = b24Var5;
                        r4 = l37Var3;
                        if (!(th instanceof CancellationException)) {
                            r1.getClass();
                            r3.getClass();
                            throw th;
                        }
                        u03 u03VarA2 = rb9.a(r3, th);
                        d(u03VarA2, r3.c, r1);
                        r4.complete();
                        return u03VarA2;
                    }
                }
                if (r1 != 3) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                a13Var3 = vy6Var2.n;
                b24Var3 = vy6Var2.m;
                l37Var2 = vy6Var2.l;
                r57.b(objA);
                g24Var = (g24) objA;
                if (g24Var instanceof zc8) {
                    zc8Var = (zc8) g24Var;
                    xk8Var = b24Var3.c;
                    b24Var4 = zc8Var.b;
                    if (!(xk8Var instanceof p29)) {
                        ((j29) c53.a(b24Var4, f24.a)).a((p29) xk8Var, zc8Var);
                    }
                    a13Var3.getClass();
                } else {
                    if (g24Var instanceof u03) {
                        throw new NoWhenBranchMatchedException();
                    }
                    d((u03) g24Var, b24Var3.c, a13Var3);
                }
                l37Var2.complete();
                return g24Var;
            }
            a13Var = vy6Var2.n;
            b24VarA = vy6Var2.m;
            vp4Var = vy6Var2.l;
            r57.b(objA);
            b24VarA.getClass();
            xk8 xk8Var4 = b24VarA.c;
            if (xk8Var4 != null) {
                x04 x04VarInvoke = b24VarA.l.invoke(b24VarA);
                if (x04VarInvoke == null) {
                    x04VarInvoke = b24VarA.t.h.invoke(b24VarA);
                }
                xk8Var4.a(x04VarInvoke);
            }
            a13Var.getClass();
            w18 w18Var2 = b24VarA.o;
            vy6Var2.l = vp4Var;
            vy6Var2.m = b24VarA;
            vy6Var2.n = a13Var;
            vy6Var2.o = null;
            vy6Var2.r = 2;
            objA = w18Var2.a(vy6Var2);
            if (objA != a32Var) {
                l37Var = vp4Var;
                x04Var = null;
                a13Var2 = a13Var;
                b24Var2 = b24VarA;
                a13Var2.getClass();
                o22 o22Var2 = b24Var2.f;
                wy6 wy6Var2 = new wy6(b24Var2, this, (t18) objA, a13Var2, x04Var, null);
                vy6Var2.l = l37Var;
                vy6Var2.m = b24Var2;
                vy6Var2.n = a13Var2;
                vy6Var2.o = null;
                vy6Var2.r = 3;
                objA = av0.d(o22Var2, wy6Var2, vy6Var2);
                if (objA != a32Var) {
                    b24Var3 = b24Var2;
                    a13Var3 = a13Var2;
                    l37Var2 = l37Var;
                    g24Var = (g24) objA;
                    if (g24Var instanceof zc8) {
                        zc8Var = (zc8) g24Var;
                        xk8Var = b24Var3.c;
                        b24Var4 = zc8Var.b;
                        if (!(xk8Var instanceof p29)) {
                            ((j29) c53.a(b24Var4, f24.a)).a((p29) xk8Var, zc8Var);
                        }
                        a13Var3.getClass();
                    } else {
                        if (g24Var instanceof u03) {
                            throw new NoWhenBranchMatchedException();
                        }
                        d((u03) g24Var, b24Var3.c, a13Var3);
                    }
                    l37Var2.complete();
                    return g24Var;
                }
            }
            return a32Var;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final o95 c() {
        return (o95) this.a.d.getValue();
    }

    public final void d(u03 u03Var, xk8 xk8Var, a13 a13Var) {
        b24 b24Var = u03Var.b;
        if (xk8Var instanceof p29) {
            ((j29) c53.a(b24Var, f24.a)).a((p29) xk8Var, u03Var);
        }
        a13Var.getClass();
        b24Var.getClass();
    }
}
