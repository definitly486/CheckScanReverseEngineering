package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class fe3<T> implements id3 {
    public final /* synthetic */ id3<T> b;
    public final /* synthetic */ r07<Throwable> c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {WebmConstants.MkvEbmlElement.FLAG_INTERLACED}, m = "emit", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public final /* synthetic */ fe3<T> m;
        public int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(fe3<? super T> fe3Var, e02<? super a> e02Var) {
            super(e02Var);
            this.m = fe3Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.n |= Integer.MIN_VALUE;
            return this.m.emit(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public fe3(id3<? super T> id3Var, r07<Throwable> r07Var) {
        this.b = id3Var;
        this.c = r07Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, java.lang.Throwable] */
    @Override // defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) {
        a aVar;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.n = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(this, e02Var);
            }
        } else {
            aVar = new a(this, e02Var);
        }
        Object obj = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.n;
        try {
            if (i2 == 0) {
                r57.b(obj);
                id3<T> id3Var = this.b;
                aVar.n = 1;
                if (id3Var.emit(t, aVar) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this = (fe3<T>) j59.a;
            return this;
        } catch (Throwable 
        /*  JADX ERROR: Method code generation error
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
            	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
            */
        /*
            this = this;
            boolean r0 = r6 instanceof fe3.a
            if (r0 == 0) goto L13
            r0 = r6
            fe3$a r0 = (fe3.a) r0
            int r1 = r0.n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.n = r1
            goto L18
        L13:
            fe3$a r0 = new fe3$a
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.n
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            defpackage.r57.b(r6)     // Catch: java.lang.Throwable -> L27
            goto L3e
        L27:
            r5 = move-exception
            goto L41
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L30:
            defpackage.r57.b(r6)
            id3<T> r6 = r4.b     // Catch: java.lang.Throwable -> L27
            r0.n = r3     // Catch: java.lang.Throwable -> L27
            java.lang.Object r4 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L27
            if (r4 != r1) goto L3e
            return r1
        L3e:
            j59 r4 = defpackage.j59.a
            return r4
        L41:
            r07<java.lang.Throwable> r4 = r4.c
            r4.b = r5
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fe3.emit(java.lang.Object, e02):java.lang.Object");
    }
}
