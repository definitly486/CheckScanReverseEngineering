package androidx.datastore.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.r07;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DataMigrationInitializer<T> {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:27:0x006e  */
        /* JADX WARN: Code duplicated, block: B:37:0x0097  */
        /* JADX WARN: Code duplicated, block: B:39:0x009a  */
        /* JADX WARN: Code duplicated, block: B:43:0x0080 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:25:0x0068->B:45:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Throwable] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0085 -> B:25:0x0068). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0088 -> B:25:0x0068). Please report as a decompilation issue!!! */
        public final <T> Object runMigrations(List<? extends DataMigration<T>> list, InitializerApi<T> initializerApi, e02<? super j59> e02Var) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            Iterator<T> it;
            r07 r07Var;
            Throwable th;
            nl3 nl3Var;
            if (e02Var instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) e02Var;
                int i = dataMigrationInitializer$Companion$runMigrations$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.label = i - Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, e02Var);
                }
            } else {
                dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, e02Var);
            }
            Object obj = dataMigrationInitializer$Companion$runMigrations$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = dataMigrationInitializer$Companion$runMigrations$1.label;
            if (i2 == 0) {
                r57.b(obj);
                ArrayList arrayList = new ArrayList();
                bm3<? super T, ? super e02<? super T>, ? extends Object> dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2<>(list, arrayList, null);
                dataMigrationInitializer$Companion$runMigrations$1.L$0 = arrayList;
                dataMigrationInitializer$Companion$runMigrations$1.label = 1;
                if (initializerApi.updateData(dataMigrationInitializer$Companion$runMigrations$2, dataMigrationInitializer$Companion$runMigrations$1) != a32Var) {
                    list2 = arrayList;
                }
                return a32Var;
            }
            if (i2 == 1) {
                list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                r57.b(obj);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                it = (Iterator) dataMigrationInitializer$Companion$runMigrations$1.L$1;
                r07Var = (r07) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                try {
                    r57.b(obj);
                } catch (Throwable 
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                    	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                    */
                /*
                    this = this;
                    boolean r0 = r8 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                    if (r0 == 0) goto L13
                    r0 = r8
                    androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                    r0.<init>(r5, r8)
                L18:
                    java.lang.Object r5 = r0.result
                    a32 r8 = defpackage.a32.COROUTINE_SUSPENDED
                    int r1 = r0.label
                    r2 = 0
                    r3 = 2
                    r4 = 1
                    if (r1 == 0) goto L43
                    if (r1 == r4) goto L3b
                    if (r1 != r3) goto L35
                    java.lang.Object r6 = r0.L$1
                    java.util.Iterator r6 = (java.util.Iterator) r6
                    java.lang.Object r7 = r0.L$0
                    r07 r7 = (defpackage.r07) r7
                    defpackage.r57.b(r5)     // Catch: java.lang.Throwable -> L33
                    goto L68
                L33:
                    r5 = move-exception
                    goto L81
                L35:
                    java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r5)
                    return r2
                L3b:
                    java.lang.Object r6 = r0.L$0
                    java.util.List r6 = (java.util.List) r6
                    defpackage.r57.b(r5)
                    goto L5c
                L43:
                    defpackage.r57.b(r5)
                    java.util.ArrayList r5 = new java.util.ArrayList
                    r5.<init>()
                    androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2 r1 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2
                    r1.<init>(r6, r5, r2)
                    r0.L$0 = r5
                    r0.label = r4
                    java.lang.Object r6 = r7.updateData(r1, r0)
                    if (r6 != r8) goto L5b
                    goto L80
                L5b:
                    r6 = r5
                L5c:
                    r07 r5 = new r07
                    r5.<init>()
                    java.lang.Iterable r6 = (java.lang.Iterable) r6
                    java.util.Iterator r6 = r6.iterator()
                    r7 = r5
                L68:
                    boolean r5 = r6.hasNext()
                    if (r5 == 0) goto L91
                    java.lang.Object r5 = r6.next()
                    nl3 r5 = (defpackage.nl3) r5
                    r0.L$0 = r7     // Catch: java.lang.Throwable -> L33
                    r0.L$1 = r6     // Catch: java.lang.Throwable -> L33
                    r0.label = r3     // Catch: java.lang.Throwable -> L33
                    java.lang.Object r5 = r5.invoke(r0)     // Catch: java.lang.Throwable -> L33
                    if (r5 != r8) goto L68
                L80:
                    return r8
                L81:
                    T r1 = r7.b
                    if (r1 != 0) goto L88
                    r7.b = r5
                    goto L68
                L88:
                    r1.getClass()
                    java.lang.Throwable r1 = (java.lang.Throwable) r1
                    defpackage.sj0.c(r1, r5)
                    goto L68
                L91:
                    T r5 = r7.b
                    java.lang.Throwable r5 = (java.lang.Throwable) r5
                    if (r5 != 0) goto L9a
                    j59 r5 = defpackage.j59.a
                    return r5
                L9a:
                    throw r5
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer.Companion.runMigrations(java.util.List, androidx.datastore.core.InitializerApi, e02):java.lang.Object");
            }

            public final <T> bm3<InitializerApi<T>, e02<? super j59>, Object> getInitializer(List<? extends DataMigration<T>> list) {
                list.getClass();
                return new DataMigrationInitializer$Companion$getInitializer$1(list, null);
            }

            private Companion() {
            }
        }
    }
