package defpackage;

import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class d82 {
    public final ap8 a;
    public final jf6 b;
    public final o22 c;
    public final kz1 d;
    public final i57.c<l82> e;
    public final z68 f;
    public final z68 g;

    public interface a {

        /* JADX INFO: renamed from: d82$a$a, reason: collision with other inner class name */
        public static final class C0178a implements a {
            public static final C0178a a = new C0178a();
        }

        public static final class b implements a {
            public final DailyTaskResult a;

            public b(DailyTaskResult dailyTaskResult) {
                dailyTaskResult.getClass();
                this.a = dailyTaskResult;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && aa4.e(this.a, ((b) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return "FinalReward(res=" + this.a + ")";
            }
        }

        public static final class c implements a {
            public static final c a = new c();
        }
    }

    @bd2(c = "com.warefly.checkscan.tasks.domain.interactor.DailyTaskInteractor$fetchDailyTaskContent$2", f = "DailyTaskInteractor.kt", l = {93}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public xg5 l;
        public d82 m;
        public Object n;
        public int o;
        public int p;
        public final /* synthetic */ int r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i, e02<? super b> e02Var) {
            super(2, e02Var);
            this.r = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return d82.this.new b(this.r, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0041 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:14:0x004d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003f -> B:12:0x0042). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0041
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r7.p
                r2 = 1
                if (r1 == 0) goto L1c
                if (r1 != r2) goto L15
                int r1 = r7.o
                java.lang.Object r3 = r7.n
                d82 r4 = r7.m
                xg5 r5 = r7.l
                defpackage.r57.b(r8)
                goto L42
            L15:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                r7 = 0
                return r7
            L1c:
                defpackage.r57.b(r8)
                d82 r8 = defpackage.d82.this
                z68 r1 = r8.g
                int r3 = r7.r
                r4 = r8
                r5 = r1
                r1 = r3
            L28:
                java.lang.Object r3 = r5.getValue()
                r8 = r3
                i57 r8 = (defpackage.i57) r8
                ap8 r8 = r4.a
                r7.l = r5
                r7.m = r4
                r7.n = r3
                r7.o = r1
                r7.p = r2
                java.lang.Object r8 = r8.a(r1, r7)
                if (r8 != r0) goto L42
                return r0
            L42:
                i57$c r6 = new i57$c
                r6.<init>(r8)
                boolean r8 = r5.a(r3, r6)
                if (r8 == 0) goto L28
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: d82.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends b0 implements s22 {
        public c() {
            super(s22.a.b);
        }

        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
            Object value;
            z68 z68Var = d82.this.g;
            do {
                value = z68Var.getValue();
            } while (!z68Var.a(value, new i57.a(th)));
        }
    }

    public d82(ap8 ap8Var, jf6 jf6Var) {
        this.a = ap8Var;
        this.b = jf6Var;
        jd8 jd8VarB = rm9.b();
        oi2 oi2Var = qo2.a;
        o22 o22VarPlus = o22.a.C0306a.d(jd8VarB, sh2.c).plus(new c());
        this.c = o22VarPlus;
        this.d = z22.a(o22VarPlus);
        int i = 0;
        l82.a aVar = new l82.a(new String(), false);
        ArrayList arrayList = new ArrayList(11);
        while (i < 11) {
            arrayList.add(i == 0 ? a82.a : j82.a);
            i++;
        }
        i57.c<l82> cVar = new i57.c<>(new l82(null, aVar, null, arrayList));
        this.e = cVar;
        this.f = px.a(Boolean.valueOf(this.b.l1()));
        this.g = px.a(cVar);
    }

    public final void a(int i) {
        z68 z68Var;
        Object value;
        do {
            z68Var = this.g;
            value = z68Var.getValue();
        } while (!z68Var.a(value, this.e));
        av0.c(this.d, null, null, new b(i, null), 3);
    }
}
