package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class v68 implements eu7 {

    public static final class a implements hd3<cu7> {
        public final /* synthetic */ y68 b;

        /* JADX INFO: renamed from: v68$a$a, reason: collision with other inner class name */
        @bd2(c = "kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1", f = "SharingStarted.kt", l = {113}, m = "collect", v = 1)
        public static final class C0343a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0343a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.collect(null, this);
            }
        }

        public a(y68 y68Var) {
            this.b = y68Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // defpackage.hd3
        public final Object collect(id3<? super cu7> id3Var, e02<? super j59> e02Var) {
            C0343a c0343a;
            if (e02Var instanceof C0343a) {
                c0343a = (C0343a) e02Var;
                int i = c0343a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0343a.m = i - Integer.MIN_VALUE;
                } else {
                    c0343a = new C0343a(e02Var);
                }
            } else {
                c0343a = new C0343a(e02Var);
            }
            Object obj = c0343a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0343a.m;
            if (i2 == 0) {
                r57.b(obj);
                b bVar = new b(new n07(), id3Var);
                c0343a.m = 1;
                if (this.b.collect(bVar, c0343a) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    public static final class b<T> implements id3 {
        public final /* synthetic */ n07 b;
        public final /* synthetic */ id3<cu7> c;

        @bd2(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_DURATION}, m = "emit", v = 1)
        public static final class a extends f02 {
            public /* synthetic */ Object l;
            public final /* synthetic */ b<T> m;
            public int n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(b<? super T> bVar, e02<? super a> e02Var) {
                super(e02Var);
                this.m = bVar;
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.n |= Integer.MIN_VALUE;
                return this.m.c(0, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(n07 n07Var, id3<? super cu7> id3Var) {
            this.b = n07Var;
            this.c = id3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object c(int i, e02<? super j59> e02Var) {
            a aVar;
            if (e02Var instanceof a) {
                aVar = (a) e02Var;
                int i2 = aVar.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    aVar.n = i2 - Integer.MIN_VALUE;
                } else {
                    aVar = new a(this, e02Var);
                }
            } else {
                aVar = new a(this, e02Var);
            }
            Object obj = aVar.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i3 = aVar.n;
            if (i3 == 0) {
                r57.b(obj);
                if (i > 0) {
                    n07 n07Var = this.b;
                    if (!n07Var.b) {
                        n07Var.b = true;
                        cu7 cu7Var = cu7.START;
                        aVar.n = 1;
                        if (this.c.emit(cu7Var, aVar) == a32Var) {
                            return a32Var;
                        }
                    }
                }
                return j59.a;
            }
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            return j59.a;
        }

        @Override // defpackage.id3
        public final /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
            return c(((Number) obj).intValue(), e02Var);
        }
    }

    @Override // defpackage.eu7
    public final hd3<cu7> b(y68<Integer> y68Var) {
        return new a(y68Var);
    }

    public final String toString() {
        return "SharingStarted.Lazily";
    }
}
