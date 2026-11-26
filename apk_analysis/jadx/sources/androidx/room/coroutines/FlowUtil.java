package androidx.room.coroutines;

import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import defpackage.a32;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ud3;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class FlowUtil {
    public static final <R> hd3<R> createFlow(final RoomDatabase roomDatabase, final boolean z, String[] strArr, final nl3<? super SQLiteConnection, ? extends R> nl3Var) {
        roomDatabase.getClass();
        strArr.getClass();
        nl3Var.getClass();
        final hd3 hd3VarA = ud3.a(roomDatabase.getInvalidationTracker().createFlow((String[]) Arrays.copyOf(strArr, strArr.length), true), -1);
        return new hd3<R>() { // from class: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1

            /* JADX INFO: renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ nl3 $block$inlined;
                final /* synthetic */ RoomDatabase $db$inlined;
                final /* synthetic */ boolean $inTransaction$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2", f = "FlowBuilder.kt", l = {220, 219}, m = "emit")
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var, RoomDatabase roomDatabase, boolean z, nl3 nl3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$db$inlined = roomDatabase;
                    this.$inTransaction$inlined = z;
                    this.$block$inlined = nl3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
                
                    if (r7.emit(r9, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = (androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = new androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r9)
                        goto L5f
                    L2b:
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r7)
                        return r3
                    L31:
                        java.lang.Object r7 = r0.L$0
                        id3 r7 = (defpackage.id3) r7
                        defpackage.r57.b(r9)
                        goto L54
                    L39:
                        defpackage.r57.b(r9)
                        id3 r9 = r7.$this_unsafeFlow
                        java.util.Set r8 = (java.util.Set) r8
                        androidx.room.RoomDatabase r8 = r7.$db$inlined
                        boolean r2 = r7.$inTransaction$inlined
                        nl3 r7 = r7.$block$inlined
                        r0.L$0 = r9
                        r0.label = r5
                        java.lang.Object r7 = androidx.room.util.DBUtil.performSuspending(r8, r5, r2, r7, r0)
                        if (r7 != r1) goto L51
                        goto L5e
                    L51:
                        r6 = r9
                        r9 = r7
                        r7 = r6
                    L54:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r7 = r7.emit(r9, r0)
                        if (r7 != r1) goto L5f
                    L5e:
                        return r1
                    L5f:
                        j59 r7 = defpackage.j59.a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = hd3VarA.collect(new AnonymousClass2(id3Var, roomDatabase, z, nl3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        };
    }
}
