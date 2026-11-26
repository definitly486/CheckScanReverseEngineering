package defpackage;

import androidx.media3.muxer.WebmConstants;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ue3 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements id3<T> {
        public final /* synthetic */ bm3 b;
        public final /* synthetic */ r07 c;

        /* JADX INFO: renamed from: ue3$a$a, reason: collision with other inner class name */
        @bd2(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2", f = "Reduce.kt", l = {142}, m = "emit", v = 1)
        public static final class C0339a extends f02 {
            public /* synthetic */ Object l;
            public int m;
            public Object o;

            public C0339a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(r07 r07Var, bm3 bm3Var) {
            this.b = bm3Var;
            this.c = r07Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // defpackage.id3
        public final Object emit(T t, e02<? super j59> e02Var) {
            C0339a c0339a;
            if (e02Var instanceof C0339a) {
                c0339a = (C0339a) e02Var;
                int i = c0339a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0339a.m = i - Integer.MIN_VALUE;
                } else {
                    c0339a = new C0339a(e02Var);
                }
            } else {
                c0339a = new C0339a(e02Var);
            }
            Object objInvoke = c0339a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0339a.m;
            if (i2 == 0) {
                r57.b(objInvoke);
                c0339a.o = t;
                c0339a.m = 1;
                objInvoke = this.b.invoke(t, c0339a);
                if (objInvoke == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                t = (T) c0339a.o;
                r57.b(objInvoke);
            }
            if (!((Boolean) objInvoke).booleanValue()) {
                return j59.a;
            }
            this.c.b = t;
            throw new AbortFlowException(this);
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {WebmConstants.MkvEbmlElement.CUE_TIME}, m = "first", v = 1)
    public static final class b<T> extends f02 {
        public r07 l;
        public a m;
        public /* synthetic */ Object n;
        public int o;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.n = obj;
            this.o |= Integer.MIN_VALUE;
            return ue3.b(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class c<T> implements id3<T> {
        public final /* synthetic */ r07 b;

        public c(r07 r07Var) {
            this.b = r07Var;
        }

        @Override // defpackage.id3
        public final Object emit(T t, e02<? super j59> e02Var) {
            this.b.b = t;
            throw new AbortFlowException(this);
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {WebmConstants.MkvEbmlElement.CUE_TIME}, m = "firstOrNull", v = 1)
    public static final class d<T> extends f02 {
        public r07 l;
        public c m;
        public /* synthetic */ Object n;
        public int o;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.n = obj;
            this.o |= Integer.MIN_VALUE;
            return ue3.c(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, bh8] */
    public static final Object a(hd3 hd3Var, f02 f02Var) {
        ve3 ve3Var;
        r07 r07Var;
        AbortFlowException e;
        te3 te3Var;
        ?? r0 = aq5.b;
        if (f02Var instanceof ve3) {
            ve3Var = (ve3) f02Var;
            int i = ve3Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                ve3Var.o = i - Integer.MIN_VALUE;
            } else {
                ve3Var = new ve3(f02Var);
            }
        } else {
            ve3Var = new ve3(f02Var);
        }
        Object obj = ve3Var.n;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = ve3Var.o;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            r07Var2.b = r0;
            te3 te3Var2 = new te3(r07Var2);
            try {
                ve3Var.l = r07Var2;
                ve3Var.m = te3Var2;
                ve3Var.o = 1;
                if (hd3Var.collect(te3Var2, ve3Var) == obj2) {
                    return obj2;
                }
                r07Var = r07Var2;
            } catch (AbortFlowException e2) {
                r07Var = r07Var2;
                e = e2;
                te3Var = te3Var2;
                if (e.b == te3Var) {
                    throw e;
                }
                qb4.e(ve3Var.getContext());
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            te3Var = ve3Var.m;
            r07Var = ve3Var.l;
            try {
                r57.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                if (e.b == te3Var) {
                    throw e;
                }
                qb4.e(ve3Var.getContext());
            }
        }
        T t = r07Var.b;
        if (t != r0) {
            return t;
        }
        ag.g("Expected at least one element");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final <T> Object b(hd3<? extends T> hd3Var, bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        b bVar;
        r07 r07Var;
        AbortFlowException e;
        a aVar;
        T t = (T) aq5.b;
        if (e02Var instanceof b) {
            bVar = (b) e02Var;
            int i = bVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                bVar.o = i - Integer.MIN_VALUE;
            } else {
                bVar = new b(e02Var);
            }
        } else {
            bVar = new b(e02Var);
        }
        Object obj = bVar.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = bVar.o;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            r07Var2.b = t;
            a aVar2 = new a(r07Var2, bm3Var);
            try {
                bVar.l = r07Var2;
                bVar.m = aVar2;
                bVar.o = 1;
                if (hd3Var.collect(aVar2, bVar) == a32Var) {
                    return a32Var;
                }
                r07Var = r07Var2;
            } catch (AbortFlowException e2) {
                r07Var = r07Var2;
                e = e2;
                aVar = aVar2;
                if (e.b == aVar) {
                    throw e;
                }
                qb4.e(bVar.getContext());
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            aVar = bVar.m;
            r07Var = bVar.l;
            try {
                r57.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                if (e.b == aVar) {
                    throw e;
                }
                qb4.e(bVar.getContext());
            }
        }
        T t2 = r07Var.b;
        if (t2 != t) {
            return t2;
        }
        ag.g("Expected at least one element matching the predicate");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object c(hd3<? extends T> hd3Var, e02<? super T> e02Var) {
        d dVar;
        r07 r07Var;
        AbortFlowException e;
        c cVar;
        if (e02Var instanceof d) {
            dVar = (d) e02Var;
            int i = dVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                dVar.o = i - Integer.MIN_VALUE;
            } else {
                dVar = new d(e02Var);
            }
        } else {
            dVar = new d(e02Var);
        }
        Object obj = dVar.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = dVar.o;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            c cVar2 = new c(r07Var2);
            try {
                dVar.l = r07Var2;
                dVar.m = cVar2;
                dVar.o = 1;
                if (hd3Var.collect(cVar2, dVar) == a32Var) {
                    return a32Var;
                }
                r07Var = r07Var2;
            } catch (AbortFlowException e2) {
                r07Var = r07Var2;
                e = e2;
                cVar = cVar2;
                if (e.b == cVar) {
                    throw e;
                }
                qb4.e(dVar.getContext());
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            cVar = dVar.m;
            r07Var = dVar.l;
            try {
                r57.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                if (e.b == cVar) {
                    throw e;
                }
                qb4.e(dVar.getContext());
            }
        }
        return r07Var.b;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(hd3 hd3Var, bm3 bm3Var, f02 f02Var) {
        xe3 xe3Var;
        r07 r07Var;
        AbortFlowException e;
        we3 we3Var;
        if (f02Var instanceof xe3) {
            xe3Var = (xe3) f02Var;
            int i = xe3Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                xe3Var.o = i - Integer.MIN_VALUE;
            } else {
                xe3Var = new xe3(f02Var);
            }
        } else {
            xe3Var = new xe3(f02Var);
        }
        Object obj = xe3Var.n;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = xe3Var.o;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            we3 we3Var2 = new we3(r07Var2, bm3Var);
            try {
                xe3Var.l = r07Var2;
                xe3Var.m = we3Var2;
                xe3Var.o = 1;
                if (hd3Var.collect(we3Var2, xe3Var) == obj2) {
                    return obj2;
                }
                r07Var = r07Var2;
            } catch (AbortFlowException e2) {
                r07Var = r07Var2;
                e = e2;
                we3Var = we3Var2;
                if (e.b == we3Var) {
                    throw e;
                }
                qb4.e(xe3Var.getContext());
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            we3Var = xe3Var.m;
            r07Var = xe3Var.l;
            try {
                r57.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                if (e.b == we3Var) {
                    throw e;
                }
                qb4.e(xe3Var.getContext());
            }
        }
        return r07Var.b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, bh8] */
    public static final Object e(de3 de3Var, f02 f02Var) {
        ye3 ye3Var;
        r07 r07Var;
        ?? r0 = aq5.b;
        if (f02Var instanceof ye3) {
            ye3Var = (ye3) f02Var;
            int i = ye3Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                ye3Var.n = i - Integer.MIN_VALUE;
            } else {
                ye3Var = new ye3(f02Var);
            }
        } else {
            ye3Var = new ye3(f02Var);
        }
        Object obj = ye3Var.m;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = ye3Var.n;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            r07Var2.b = r0;
            id3<? super Object> ze3Var = new ze3<>(r07Var2);
            ye3Var.l = r07Var2;
            ye3Var.n = 1;
            if (de3Var.collect(ze3Var, ye3Var) == obj2) {
                return obj2;
            }
            r07Var = r07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = ye3Var.l;
            r57.b(obj);
        }
        T t = r07Var.b;
        if (t != r0) {
            return t;
        }
        ag.g("Expected at least one element");
        return null;
    }
}
