package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.atomic.AtomicReference;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class z68<T> extends p1<a78> implements xg5<T>, hd3, wm3<T> {
    public static final /* synthetic */ long g = pz0.a.objectFieldOffset(z68.class.getDeclaredField("_state$volatile"));
    private volatile /* synthetic */ Object _state$volatile;
    public int f;

    @bd2(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {389, TypedValues.CycleType.TYPE_CURVE_FIT, 406}, m = "collect", v = 1)
    public static final class a extends f02 {
        public id3 l;
        public a78 m;
        public mb4 n;
        public Object o;
        public Object p;
        public /* synthetic */ Object q;
        public final /* synthetic */ z68<T> r;
        public int s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(z68<T> z68Var, e02<? super a> e02Var) {
            super(e02Var);
            this.r = z68Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.q = obj;
            this.s |= Integer.MIN_VALUE;
            return this.r.collect(null, this);
        }
    }

    public z68(Object obj) {
        this._state$volatile = obj;
    }

    @Override // defpackage.xg5
    public final boolean a(T t, T t2) {
        bh8 bh8Var = aq5.b;
        if (t == null) {
            t = (T) bh8Var;
        }
        if (t2 == null) {
            t2 = (T) bh8Var;
        }
        return k(t, t2);
    }

    @Override // defpackage.vg5
    public final void b() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // defpackage.wm3
    public final hd3<T> c(o22 o22Var, int i, cu0 cu0Var) {
        return (((i < 0 || i >= 2) && i != -2) || cu0Var != cu0.DROP_OLDEST) ? bt7.d(this, o22Var, i, cu0Var) : this;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00ec A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:14:0x0032, B:33:0x0082, B:35:0x008c, B:38:0x0093, B:39:0x0097, B:41:0x009a, B:51:0x00bb, B:54:0x00cb, B:55:0x00e5, B:61:0x00f7, B:64:0x0100, B:58:0x00ec, B:60:0x00f2, B:43:0x00a0, B:47:0x00a7, B:21:0x0047, B:24:0x0050, B:32:0x0073, B:27:0x005e, B:29:0x0062), top: B:69:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:? A[LOOP:0: B:55:0x00e5->B:74:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00ca -> B:33:0x0082). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.hd3
    public final java.lang.Object collect(defpackage.id3<? super T> r13, defpackage.e02<?> r14) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z68.collect(id3, e02):java.lang.Object");
    }

    @Override // defpackage.vg5
    public final boolean e(T t) {
        setValue(t);
        return true;
    }

    @Override // defpackage.vg5, defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) {
        setValue(t);
        return j59.a;
    }

    @Override // defpackage.xg5, defpackage.y68
    public final T getValue() {
        bh8 bh8Var = aq5.b;
        T t = (T) pz0.a.getObjectVolatile(this, g);
        if (t == bh8Var) {
            return null;
        }
        return t;
    }

    @Override // defpackage.p1
    public final r1 h() {
        return new a78();
    }

    @Override // defpackage.p1
    public final r1[] i() {
        return new a78[2];
    }

    public final boolean k(Object obj, Object obj2) {
        int i;
        Object obj3;
        bh8 bh8Var;
        synchronized (this) {
            Unsafe unsafe = pz0.a;
            long j = g;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (obj != null && !aa4.e(objectVolatile, obj)) {
                return false;
            }
            if (aa4.e(objectVolatile, obj2)) {
                return true;
            }
            unsafe.putObjectVolatile(this, j, obj2);
            int i2 = this.f;
            if ((i2 & 1) != 0) {
                this.f = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.f = i3;
            Object obj4 = this.b;
            j59 j59Var = j59.a;
            while (true) {
                a78[] a78VarArr = (a78[]) obj4;
                if (a78VarArr != null) {
                    for (a78 a78Var : a78VarArr) {
                        if (a78Var != null) {
                            AtomicReference<Object> atomicReference = a78Var.a;
                            while (true) {
                                Object obj5 = atomicReference.get();
                                if (obj5 == null || obj5 == (bh8Var = px.f)) {
                                    break;
                                }
                                bh8 bh8Var2 = px.e;
                                if (obj5 != bh8Var2) {
                                    do {
                                        if (atomicReference.compareAndSet(obj5, bh8Var2)) {
                                            ((c31) obj5).resumeWith(j59.a);
                                            break;
                                        }
                                    } while (atomicReference.get() == obj5);
                                } else {
                                    do {
                                        if (atomicReference.compareAndSet(obj5, bh8Var)) {
                                            break;
                                        }
                                    } while (atomicReference.get() == obj5);
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.f;
                    if (i == i3) {
                        this.f = i3 + 1;
                        return true;
                    }
                    obj3 = this.b;
                    j59 j59Var2 = j59.a;
                }
                obj4 = obj3;
                i3 = i;
            }
        }
    }

    @Override // defpackage.xg5
    public final void setValue(T t) {
        if (t == null) {
            t = (T) aq5.b;
        }
        k(null, t);
    }
}
