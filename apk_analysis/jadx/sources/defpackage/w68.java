package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class w68 implements eu7 {
    public final long b;
    public final long c;

    @bd2(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {175, 177, WebmConstants.MkvEbmlElement.CUE_TIME, 180, 182}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements dm3<id3<? super cu7>, Integer, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ id3 m;
        public /* synthetic */ int n;

        public a(e02<? super a> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super cu7> id3Var, Integer num, e02<? super j59> e02Var) {
            int iIntValue = num.intValue();
            a aVar = w68.this.new a(e02Var);
            aVar.m = id3Var;
            aVar.n = iIntValue;
            return aVar.invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x005e  */
        /* JADX WARN: Code duplicated, block: B:29:0x006d  */
        /* JADX WARN: Code duplicated, block: B:32:0x007a  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
        
            if (r3.emit(r15, r14) == r5) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
        
            if (r3.emit(r15, r14) == r5) goto L34;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                r14 = this;
                w68 r0 = defpackage.w68.this
                long r1 = r0.c
                id3 r3 = r14.m
                int r4 = r14.n
                a32 r5 = defpackage.a32.COROUTINE_SUSPENDED
                int r6 = r14.l
                r7 = 0
                r8 = 5
                r9 = 4
                r10 = 3
                r11 = 2
                r12 = 1
                if (r6 == 0) goto L35
                if (r6 == r12) goto L31
                if (r6 == r11) goto L2d
                if (r6 == r10) goto L29
                if (r6 == r9) goto L25
                if (r6 != r8) goto L1f
                goto L31
            L1f:
                java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r14)
                return r7
            L25:
                defpackage.r57.b(r15)
                goto L7a
            L29:
                defpackage.r57.b(r15)
                goto L6d
            L2d:
                defpackage.r57.b(r15)
                goto L58
            L31:
                defpackage.r57.b(r15)
                goto L89
            L35:
                defpackage.r57.b(r15)
                if (r4 <= 0) goto L49
                cu7 r15 = defpackage.cu7.START
                r14.m = r7
                r14.n = r4
                r14.l = r12
                java.lang.Object r14 = r3.emit(r15, r14)
                if (r14 != r5) goto L89
                goto L88
            L49:
                long r12 = r0.b
                r14.m = r3
                r14.n = r4
                r14.l = r11
                java.lang.Object r15 = defpackage.yk2.b(r12, r14)
                if (r15 != r5) goto L58
                goto L88
            L58:
                r11 = 0
                int r15 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
                if (r15 <= 0) goto L7a
                cu7 r15 = defpackage.cu7.STOP
                r14.m = r3
                r14.n = r4
                r14.l = r10
                java.lang.Object r15 = r3.emit(r15, r14)
                if (r15 != r5) goto L6d
                goto L88
            L6d:
                r14.m = r3
                r14.n = r4
                r14.l = r9
                java.lang.Object r15 = defpackage.yk2.b(r1, r14)
                if (r15 != r5) goto L7a
                goto L88
            L7a:
                cu7 r15 = defpackage.cu7.STOP_AND_RESET_REPLAY_CACHE
                r14.m = r7
                r14.n = r4
                r14.l = r8
                java.lang.Object r14 = r3.emit(r15, r14)
                if (r14 != r5) goto L89
            L88:
                return r5
            L89:
                j59 r14 = defpackage.j59.a
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: w68.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class b extends pg8 implements bm3<cu7, e02<? super Boolean>, Object> {
        public /* synthetic */ Object l;

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = new b(2, e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(cu7 cu7Var, e02<? super Boolean> e02Var) {
            return ((b) create(cu7Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            cu7 cu7Var = (cu7) this.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            return Boolean.valueOf(cu7Var != cu7.START);
        }
    }

    public w68(long j, long j2) {
        this.b = j;
        this.c = j2;
        if (j < 0) {
            c9.f(bg.d(j, "stopTimeout(", " ms) cannot be negative"));
            throw null;
        }
        if (j2 >= 0) {
            return;
        }
        c9.f(bg.d(j2, "replayExpiration(", " ms) cannot be negative"));
        throw null;
    }

    @Override // defpackage.eu7
    public final hd3<cu7> b(y68<Integer> y68Var) {
        a aVar = new a(null);
        int i = se3.a;
        return zd3.c(new ke3(new j91(aVar, y68Var, gx2.b, -2, cu0.SUSPEND), new b(2, null)));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof w68)) {
            return false;
        }
        w68 w68Var = (w68) obj;
        return this.b == w68Var.b && this.c == w68Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + (Long.hashCode(this.b) * 31);
    }

    public final String toString() {
        ar4 ar4Var = new ar4(2);
        long j = this.b;
        if (j > 0) {
            ar4Var.add("stopTimeout=" + j + "ms");
        }
        long j2 = this.c;
        if (j2 < Long.MAX_VALUE) {
            ar4Var.add("replayExpiration=" + j2 + "ms");
        }
        return xp.e(new StringBuilder("SharingStarted.WhileSubscribed("), qn1.a0(u96.d(ar4Var), null, null, null, 0, null, 63), ')');
    }
}
