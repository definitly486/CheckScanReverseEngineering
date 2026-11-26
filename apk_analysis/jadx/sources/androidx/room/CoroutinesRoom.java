package androidx.room;

import android.os.CancellationSignal;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.c31;
import defpackage.e02;
import defpackage.e32;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.o22;
import defpackage.r57;
import defpackage.s68;
import defpackage.ul2;
import defpackage.zya;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutinesRoom {
    public static final Companion Companion = new Companion(null);

    private CoroutinesRoom() {
    }

    @ul2
    public static final <R> hd3<R> createFlow(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<R> callable) {
        return Companion.createFlow(roomDatabase, z, strArr, callable);
    }

    @ul2
    public static final <R> Object execute(RoomDatabase roomDatabase, boolean z, CancellationSignal cancellationSignal, Callable<R> callable, e02<? super R> e02Var) {
        return Companion.execute(roomDatabase, z, cancellationSignal, callable, e02Var);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object createFlow$lambda$1(Callable callable, SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            return callable.call();
        }

        @ul2
        public final <R> hd3<R> createFlow(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<R> callable) {
            roomDatabase.getClass();
            strArr.getClass();
            callable.getClass();
            return FlowUtil.createFlow(roomDatabase, z, strArr, new e32(callable, 0));
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @ul2
        public final <R> Object execute(RoomDatabase roomDatabase, boolean z, final CancellationSignal cancellationSignal, Callable<R> callable, e02<? super R> e02Var) throws Throwable {
            CoroutinesRoom$Companion$execute$3 coroutinesRoom$Companion$execute$3;
            if (e02Var instanceof CoroutinesRoom$Companion$execute$3) {
                coroutinesRoom$Companion$execute$3 = (CoroutinesRoom$Companion$execute$3) e02Var;
                int i = coroutinesRoom$Companion$execute$3.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    coroutinesRoom$Companion$execute$3.label = i - Integer.MIN_VALUE;
                } else {
                    coroutinesRoom$Companion$execute$3 = new CoroutinesRoom$Companion$execute$3(this, e02Var);
                }
            } else {
                coroutinesRoom$Companion$execute$3 = new CoroutinesRoom$Companion$execute$3(this, e02Var);
            }
            Object coroutineContext = coroutinesRoom$Companion$execute$3.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = coroutinesRoom$Companion$execute$3.label;
            if (i2 == 0) {
                r57.b(coroutineContext);
                if (roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                    return callable.call();
                }
                coroutinesRoom$Companion$execute$3.L$0 = roomDatabase;
                coroutinesRoom$Companion$execute$3.L$1 = cancellationSignal;
                coroutinesRoom$Companion$execute$3.L$2 = callable;
                coroutinesRoom$Companion$execute$3.label = 1;
                coroutineContext = DBUtil.getCoroutineContext(roomDatabase, z, coroutinesRoom$Companion$execute$3);
                if (coroutineContext != a32Var) {
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(coroutineContext);
                return coroutineContext;
            }
            callable = (Callable) coroutinesRoom$Companion$execute$3.L$2;
            cancellationSignal = (CancellationSignal) coroutinesRoom$Companion$execute$3.L$1;
            roomDatabase = (RoomDatabase) coroutinesRoom$Companion$execute$3.L$0;
            r57.b(coroutineContext);
            o22 o22Var = (o22) coroutineContext;
            coroutinesRoom$Companion$execute$3.L$0 = roomDatabase;
            coroutinesRoom$Companion$execute$3.L$1 = cancellationSignal;
            coroutinesRoom$Companion$execute$3.L$2 = callable;
            coroutinesRoom$Companion$execute$3.L$3 = o22Var;
            coroutinesRoom$Companion$execute$3.label = 2;
            c31 c31Var = new c31(1, zya.b(coroutinesRoom$Companion$execute$3));
            c31Var.u();
            final s68 s68VarC = av0.c(roomDatabase.getCoroutineScope(), o22Var, null, new CoroutinesRoom$Companion$execute$4$job$1(callable, c31Var, null), 2);
            c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.room.CoroutinesRoom$Companion$execute$4$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    CancellationSignal cancellationSignal2 = cancellationSignal;
                    if (cancellationSignal2 != null) {
                        cancellationSignal2.cancel();
                    }
                    s68VarC.cancel(null);
                }

                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                    invoke2(th);
                    return j59.a;
                }
            });
            Object objS = c31Var.s();
            return objS == a32Var ? a32Var : objS;
        }

        private Companion() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @ul2
        public final <R> Object execute(RoomDatabase roomDatabase, boolean z, Callable<R> callable, e02<? super R> e02Var) throws Throwable {
            CoroutinesRoom$Companion$execute$1 coroutinesRoom$Companion$execute$1;
            if (e02Var instanceof CoroutinesRoom$Companion$execute$1) {
                coroutinesRoom$Companion$execute$1 = (CoroutinesRoom$Companion$execute$1) e02Var;
                int i = coroutinesRoom$Companion$execute$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    coroutinesRoom$Companion$execute$1.label = i - Integer.MIN_VALUE;
                } else {
                    coroutinesRoom$Companion$execute$1 = new CoroutinesRoom$Companion$execute$1(this, e02Var);
                }
            } else {
                coroutinesRoom$Companion$execute$1 = new CoroutinesRoom$Companion$execute$1(this, e02Var);
            }
            Object coroutineContext = coroutinesRoom$Companion$execute$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = coroutinesRoom$Companion$execute$1.label;
            if (i2 == 0) {
                r57.b(coroutineContext);
                if (roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                    return callable.call();
                }
                coroutinesRoom$Companion$execute$1.L$0 = callable;
                coroutinesRoom$Companion$execute$1.label = 1;
                coroutineContext = DBUtil.getCoroutineContext(roomDatabase, z, coroutinesRoom$Companion$execute$1);
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
            callable = (Callable) coroutinesRoom$Companion$execute$1.L$0;
            r57.b(coroutineContext);
            CoroutinesRoom$Companion$execute$2 coroutinesRoom$Companion$execute$2 = new CoroutinesRoom$Companion$execute$2(callable, null);
            coroutinesRoom$Companion$execute$1.L$0 = null;
            coroutinesRoom$Companion$execute$1.label = 2;
            Object objD = av0.d((o22) coroutineContext, coroutinesRoom$Companion$execute$2, coroutinesRoom$Companion$execute$1);
            return objD == a32Var ? a32Var : objD;
        }
    }

    @ul2
    public static final <R> Object execute(RoomDatabase roomDatabase, boolean z, Callable<R> callable, e02<? super R> e02Var) {
        return Companion.execute(roomDatabase, z, callable, e02Var);
    }
}
