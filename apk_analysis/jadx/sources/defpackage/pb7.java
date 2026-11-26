package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pb7<T> extends f02 implements id3<T> {
    public final id3<T> l;
    public final o22 m;
    public final int n;
    public o22 o;
    public e02<? super j59> p;

    /* JADX WARN: Multi-variable type inference failed */
    public pb7(id3<? super T> id3Var, o22 o22Var) {
        super(vn5.b, gx2.b);
        this.l = id3Var;
        this.m = o22Var;
        this.n = ((Number) o22Var.fold(0, new ob7())).intValue();
    }

    @Override // defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) {
        try {
            Object objG = g(e02Var, t);
            return objG == a32.COROUTINE_SUSPENDED ? objG : j59.a;
        } catch (Throwable th) {
            this.o = new wq2(e02Var.getContext(), th);
            throw th;
        }
    }

    public final Object g(e02<? super j59> e02Var, T t) {
        o22 context = e02Var.getContext();
        qb4.e(context);
        o22 o22Var = this.o;
        if (o22Var != context) {
            if (o22Var instanceof wq2) {
                throw new IllegalStateException(na8.i("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((wq2) o22Var).c + ", but then emission attempt of value '" + t + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) context.fold(0, new bm3() { // from class: rb7
                /* JADX WARN: Code duplicated, block: B:6:0x001d  */
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj).intValue();
                    o22.a aVar = (o22.a) obj2;
                    o22.b<?> key = aVar.getKey();
                    o22.a aVar2 = this.b.m.get(key);
                    if (key == mb4.a.b) {
                        mb4 mb4Var = (mb4) aVar2;
                        mb4 parent = (mb4) aVar;
                        while (true) {
                            if (parent != null) {
                                if (parent == mb4Var || !(parent instanceof af7)) {
                                    break;
                                }
                                gi1 gi1Var = (gi1) pz0.a.getObjectVolatile((af7) parent, sb4.b);
                                parent = gi1Var != null ? gi1Var.getParent() : null;
                            } else {
                                parent = null;
                                break;
                            }
                        }
                        if (parent != mb4Var) {
                            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + parent + ", expected child of " + mb4Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                        }
                        if (mb4Var != null) {
                            iIntValue++;
                        }
                    } else if (aVar != aVar2) {
                        iIntValue = Integer.MIN_VALUE;
                    } else {
                        iIntValue++;
                    }
                    return Integer.valueOf(iIntValue);
                }
            })).intValue() != this.n) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.m + ",\n\t\tbut emission happened in " + context + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.o = context;
        }
        this.p = e02Var;
        dm3<id3<Object>, Object, e02<? super j59>, Object> dm3Var = qb7.a;
        id3<T> id3Var = this.l;
        id3Var.getClass();
        Object objInvoke = dm3Var.invoke(id3Var, t, this);
        if (!aa4.e(objInvoke, a32.COROUTINE_SUSPENDED)) {
            this.p = null;
        }
        return objInvoke;
    }

    @Override // defpackage.cd0, defpackage.b32
    public final b32 getCallerFrame() {
        e02<? super j59> e02Var = this.p;
        if (e02Var instanceof b32) {
            return (b32) e02Var;
        }
        return null;
    }

    @Override // defpackage.f02, defpackage.e02
    public final o22 getContext() {
        o22 o22Var = this.o;
        return o22Var == null ? gx2.b : o22Var;
    }

    @Override // defpackage.cd0
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Throwable thA = k57.a(obj);
        if (thA != null) {
            this.o = new wq2(getContext(), thA);
        }
        e02<? super j59> e02Var = this.p;
        if (e02Var != null) {
            e02Var.resumeWith(obj);
        }
        return a32.COROUTINE_SUSPENDED;
    }
}
