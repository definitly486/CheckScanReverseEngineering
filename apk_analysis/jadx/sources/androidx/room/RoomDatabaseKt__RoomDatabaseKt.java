package androidx.room;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c9;
import defpackage.ch;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.h8;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh;
import defpackage.ne4;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class RoomDatabaseKt__RoomDatabaseKt {

    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1, reason: invalid class name */
    @bd2(c = "androidx.room.RoomDatabaseKt__RoomDatabaseKt", f = "RoomDatabase.kt", l = {471, 471}, m = "useReaderConnection")
    public static final class AnonymousClass1<R> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoomDatabaseKt.useReaderConnection(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$2, reason: invalid class name */
    @bd2(c = "androidx.room.RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$2", f = "RoomDatabase.kt", l = {472}, m = "invokeSuspend")
    public static final class AnonymousClass2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ bm3<Transactor, e02<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $this_useReaderConnection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(RoomDatabase roomDatabase, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_useReaderConnection = roomDatabase;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$this_useReaderConnection, this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            RoomDatabase roomDatabase = this.$this_useReaderConnection;
            bm3<Transactor, e02<? super R>, Object> bm3Var = this.$block;
            this.label = 1;
            Object objUseConnection = roomDatabase.useConnection(true, bm3Var, this);
            return objUseConnection == a32Var ? a32Var : objUseConnection;
        }
    }

    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.RoomDatabaseKt__RoomDatabaseKt", f = "RoomDatabase.kt", l = {TypedValues.PositionType.TYPE_TRANSITION_EASING, TypedValues.PositionType.TYPE_TRANSITION_EASING}, m = "useWriterConnection")
    public static final class C07211<R> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07211(e02<? super C07211> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoomDatabaseKt.useWriterConnection(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2", f = "RoomDatabase.kt", l = {TypedValues.PositionType.TYPE_DRAWPATH}, m = "invokeSuspend")
    public static final class C07222<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ bm3<Transactor, e02<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $this_useWriterConnection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07222(RoomDatabase roomDatabase, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super C07222> e02Var) {
            super(2, e02Var);
            this.$this_useWriterConnection = roomDatabase;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07222(this.$this_useWriterConnection, this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((C07222) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            RoomDatabase roomDatabase = this.$this_useWriterConnection;
            bm3<Transactor, e02<? super R>, Object> bm3Var = this.$block;
            this.label = 1;
            Object objUseConnection = roomDatabase.useConnection(false, bm3Var, this);
            return objUseConnection == a32Var ? a32Var : objUseConnection;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <R> Object useReaderConnection(RoomDatabase roomDatabase, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object coroutineContext = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(coroutineContext);
            anonymousClass1.L$0 = roomDatabase;
            anonymousClass1.L$1 = bm3Var;
            anonymousClass1.label = 1;
            coroutineContext = DBUtil.getCoroutineContext(roomDatabase, false, anonymousClass1);
            if (coroutineContext != a32Var) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                r57.b(coroutineContext);
                return coroutineContext;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        bm3Var = (bm3) anonymousClass1.L$1;
        roomDatabase = (RoomDatabase) anonymousClass1.L$0;
        r57.b(coroutineContext);
        o22 o22VarPlus = ((o22) coroutineContext).plus(RoomExternalOperationElement.INSTANCE);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(roomDatabase, bm3Var, null);
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.label = 2;
        Object objD = av0.d(o22VarPlus, anonymousClass2, anonymousClass1);
        return objD == a32Var ? a32Var : objD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        if (r8 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object useWriterConnection(androidx.room.RoomDatabase r6, defpackage.bm3<? super androidx.room.Transactor, ? super defpackage.e02<? super R>, ? extends java.lang.Object> r7, defpackage.e02<? super R> r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof androidx.room.RoomDatabaseKt__RoomDatabaseKt.C07211
            if (r0 == 0) goto L13
            r0 = r8
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1 r0 = (androidx.room.RoomDatabaseKt__RoomDatabaseKt.C07211) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1 r0 = new androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L42
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r6 = r0.L$0
            androidx.room.RoomDatabase r6 = (androidx.room.RoomDatabase) r6
            defpackage.r57.b(r8)
            goto L6d
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r3
        L35:
            java.lang.Object r6 = r0.L$1
            r7 = r6
            bm3 r7 = (defpackage.bm3) r7
            java.lang.Object r6 = r0.L$0
            androidx.room.RoomDatabase r6 = (androidx.room.RoomDatabase) r6
            defpackage.r57.b(r8)
            goto L53
        L42:
            defpackage.r57.b(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r5
            r8 = 0
            java.lang.Object r8 = androidx.room.util.DBUtil.getCoroutineContext(r6, r8, r0)
            if (r8 != r1) goto L53
            goto L6c
        L53:
            o22 r8 = (defpackage.o22) r8
            androidx.room.RoomExternalOperationElement r2 = androidx.room.RoomExternalOperationElement.INSTANCE
            o22 r8 = r8.plus(r2)
            androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2 r2 = new androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2
            r2.<init>(r6, r7, r3)
            r0.L$0 = r6
            r0.L$1 = r3
            r0.label = r4
            java.lang.Object r8 = defpackage.av0.d(r8, r2, r0)
            if (r8 != r1) goto L6d
        L6c:
            return r1
        L6d:
            androidx.room.InvalidationTracker r6 = r6.getInvalidationTracker()
            r6.refreshAsync()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt__RoomDatabaseKt.useWriterConnection(androidx.room.RoomDatabase, bm3, e02):java.lang.Object");
    }

    public static final void validateAutoMigrations(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        roomDatabase.getClass();
        databaseConfiguration.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set<ne4<? extends AutoMigrationSpec>> requiredAutoMigrationSpecClasses = roomDatabase.getRequiredAutoMigrationSpecClasses();
        int size = databaseConfiguration.autoMigrationSpecs.size();
        boolean[] zArr = new boolean[size];
        Iterator<ne4<? extends AutoMigrationSpec>> it = requiredAutoMigrationSpecClasses.iterator();
        while (true) {
            int i = -1;
            if (!it.hasNext()) {
                int size2 = databaseConfiguration.autoMigrationSpecs.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i2 = size2 - 1;
                        if (size2 >= size || !zArr[size2]) {
                            fg.c("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                            return;
                        } else if (i2 < 0) {
                            break;
                        } else {
                            size2 = i2;
                        }
                    }
                }
                for (Migration migration : roomDatabase.createAutoMigrations(linkedHashMap)) {
                    if (!databaseConfiguration.migrationContainer.contains(migration.startVersion, migration.endVersion)) {
                        databaseConfiguration.migrationContainer.addMigration(migration);
                    }
                }
                return;
            }
            ne4<? extends AutoMigrationSpec> next = it.next();
            int size3 = databaseConfiguration.autoMigrationSpecs.size() - 1;
            if (size3 >= 0) {
                while (true) {
                    int i3 = size3 - 1;
                    if (next.e(databaseConfiguration.autoMigrationSpecs.get(size3))) {
                        zArr[size3] = true;
                        i = size3;
                        break;
                    } else if (i3 < 0) {
                        break;
                    } else {
                        size3 = i3;
                    }
                }
            }
            if (i < 0) {
                h8.f(next.a(), "A required auto migration spec (", ") is missing in the database configuration.");
                return;
            }
            linkedHashMap.put(next, databaseConfiguration.autoMigrationSpecs.get(i));
        }
    }

    public static final void validateMigrationsNotRequired(Set<Integer> set, Set<Integer> set2) {
        set.getClass();
        set2.getClass();
        if (set.isEmpty()) {
            return;
        }
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if (set2.contains(Integer.valueOf(iIntValue))) {
                c9.f(jh.b(iIntValue, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "));
                return;
            }
        }
    }

    public static final void validateTypeConverters(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        roomDatabase.getClass();
        databaseConfiguration.getClass();
        Map<ne4<?>, List<ne4<?>>> requiredTypeConverterClassesMap$room_runtime = roomDatabase.getRequiredTypeConverterClassesMap$room_runtime();
        boolean[] zArr = new boolean[databaseConfiguration.typeConverters.size()];
        for (Map.Entry<ne4<?>, List<ne4<?>>> entry : requiredTypeConverterClassesMap$room_runtime.entrySet()) {
            ne4<?> key = entry.getKey();
            for (ne4<?> ne4Var : entry.getValue()) {
                int size = databaseConfiguration.typeConverters.size() - 1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                while (true) {
                    int i = size - 1;
                    if (ne4Var.e(databaseConfiguration.typeConverters.get(size))) {
                        zArr[size] = true;
                        break;
                    } else {
                        if (i < 0) {
                            size = -1;
                            break;
                        }
                        size = i;
                    }
                }
                if (size < 0) {
                    jg.e("A required type converter (", ne4Var.a(), ") for ", key.a(), " is missing in the database configuration.");
                    return;
                }
                roomDatabase.addTypeConverter$room_runtime(ne4Var, databaseConfiguration.typeConverters.get(size));
            }
        }
        int size2 = databaseConfiguration.typeConverters.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i2 = size2 - 1;
            if (!zArr[size2]) {
                fg.c(ch.c(databaseConfiguration.typeConverters.get(size2), "Unexpected type converter ", ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."));
                return;
            } else if (i2 < 0) {
                return;
            } else {
                size2 = i2;
            }
        }
    }
}
