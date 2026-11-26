package androidx.room;

import androidx.room.RxRoom;
import androidx.room.coroutines.FlowUtil;
import androidx.sqlite.SQLiteConnection;
import defpackage.a75;
import defpackage.b08;
import defpackage.c75;
import defpackage.cf3;
import defpackage.cr5;
import defpackage.cs5;
import defpackage.eg;
import defpackage.gg3;
import defpackage.h6;
import defpackage.he7;
import defpackage.i6;
import defpackage.ip2;
import defpackage.ir5;
import defpackage.j59;
import defpackage.jf2;
import defpackage.jh2;
import defpackage.jh3;
import defpackage.kg3;
import defpackage.kp7;
import defpackage.m75;
import defpackage.mb4;
import defpackage.mz7;
import defpackage.n00;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.o22;
import defpackage.oz7;
import defpackage.q01;
import defpackage.qg3;
import defpackage.qp1;
import defpackage.rr5;
import defpackage.rv1;
import defpackage.tf2;
import defpackage.tq5;
import defpackage.ul2;
import defpackage.vp1;
import defpackage.w13;
import defpackage.wh3;
import defpackage.wp0;
import defpackage.x75;
import defpackage.xq5;
import defpackage.yp0;
import defpackage.z87;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class RxRoom {
    public static final Companion Companion = new Companion(null);
    public static final Object NOTHING = new Object();

    @ul2
    public RxRoom() {
    }

    public static final qp1 createCompletable(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, j59> nl3Var) {
        return Companion.createCompletable(roomDatabase, z, z2, nl3Var);
    }

    public static final <T> gg3<T> createFlowable(RoomDatabase roomDatabase, boolean z, String[] strArr, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        return Companion.createFlowable(roomDatabase, z, strArr, nl3Var);
    }

    public static final <T> a75<T> createMaybe(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        return Companion.createMaybe(roomDatabase, z, z2, nl3Var);
    }

    public static final <T> tq5<T> createObservable(RoomDatabase roomDatabase, boolean z, String[] strArr, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        return Companion.createObservable(roomDatabase, z, strArr, nl3Var);
    }

    public static final <T> mz7<T> createSingle(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        return Companion.createSingle(roomDatabase, z, z2, nl3Var);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.InvalidationTracker$Observer, androidx.room.RxRoom$Companion$createFlowable$1$observer$1] */
        public static final void createFlowable$lambda$1(final RoomDatabase roomDatabase, final String[] strArr, final qg3 qg3Var) {
            qg3Var.getClass();
            final ?? r0 = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.RxRoom$Companion$createFlowable$1$observer$1
                @Override // androidx.room.InvalidationTracker.Observer
                public void onInvalidated(Set<String> set) {
                    set.getClass();
                    if (((kg3.b) qg3Var).c.isDisposed()) {
                        return;
                    }
                    qg3Var.onNext(RxRoom.NOTHING);
                }
            };
            kp7 kp7Var = ((kg3.b) qg3Var).c;
            if (!kp7Var.isDisposed()) {
                roomDatabase.getInvalidationTracker().addObserver(r0);
                ip2.f(kp7Var, new i6(new h6() { // from class: h97
                    @Override // defpackage.h6
                    public final void run() {
                        RxRoom.Companion.createFlowable$lambda$1$lambda$0(roomDatabase, r0);
                    }
                }));
            }
            if (kp7Var.isDisposed()) {
                return;
            }
            qg3Var.onNext(RxRoom.NOTHING);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createFlowable$lambda$1$lambda$0(RoomDatabase roomDatabase, RxRoom$Companion$createFlowable$1$observer$1 rxRoom$Companion$createFlowable$1$observer$1) {
            roomDatabase.getInvalidationTracker().removeObserver(rxRoom$Companion$createFlowable$1$observer$1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final x75 createFlowable$lambda$2(a75 a75Var, Object obj) {
            obj.getClass();
            return a75Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.InvalidationTracker$Observer, androidx.room.RxRoom$Companion$createObservable$1$observer$1] */
        public static final void createObservable$lambda$4(final RoomDatabase roomDatabase, final String[] strArr, final cr5 cr5Var) {
            cr5Var.getClass();
            final ?? r0 = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.RxRoom$Companion$createObservable$1$observer$1
                @Override // androidx.room.InvalidationTracker.Observer
                public void onInvalidated(Set<String> set) {
                    set.getClass();
                    ((xq5.a) cr5Var).onNext(RxRoom.NOTHING);
                }
            };
            roomDatabase.getInvalidationTracker().addObserver(r0);
            xq5.a aVar = (xq5.a) cr5Var;
            ip2.f(aVar, new i6(new h6() { // from class: g97
                @Override // defpackage.h6
                public final void run() {
                    RxRoom.Companion.createObservable$lambda$4$lambda$3(roomDatabase, r0);
                }
            }));
            aVar.onNext(RxRoom.NOTHING);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createObservable$lambda$4$lambda$3(RoomDatabase roomDatabase, RxRoom$Companion$createObservable$1$observer$1 rxRoom$Companion$createObservable$1$observer$1) {
            roomDatabase.getInvalidationTracker().removeObserver(rxRoom$Companion$createObservable$1$observer$1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final x75 createObservable$lambda$5(a75 a75Var, Object obj) {
            obj.getClass();
            return a75Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createSingle$lambda$6(Callable callable, b08 b08Var) throws Exception {
            b08Var.getClass();
            try {
                Object objCall = callable.call();
                if (objCall == null) {
                    throw new EmptyResultSetException("Query returned empty result set.");
                }
                b08Var.onSuccess(objCall);
            } catch (EmptyResultSetException e) {
                b08Var.a(e);
            }
        }

        private final Executor getExecutor(RoomDatabase roomDatabase, boolean z) {
            return z ? roomDatabase.getTransactionExecutor() : roomDatabase.getQueryExecutor();
        }

        public final qp1 createCompletable(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, j59> nl3Var) {
            roomDatabase.getClass();
            nl3Var.getClass();
            o22 queryContext = roomDatabase.getQueryContext();
            mb4.a aVar = mb4.a.b;
            o22 o22VarMinusKey = queryContext.minusKey(aVar);
            RxRoom$Companion$createCompletable$1 rxRoom$Companion$createCompletable$1 = new RxRoom$Companion$createCompletable$1(roomDatabase, z, z2, nl3Var, null);
            if (o22VarMinusKey.get(aVar) == null) {
                return new vp1(new z87(o22VarMinusKey, rxRoom$Companion$createCompletable$1));
            }
            eg.d(o22VarMinusKey, "Completable context cannot contain job in it. Its lifecycle should be managed via Disposable handle. Had ");
            return null;
        }

        @ul2
        public final <T> gg3<T> createFlowable(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<? extends T> callable) {
            roomDatabase.getClass();
            strArr.getClass();
            callable.getClass();
            Executor executor = getExecutor(roomDatabase, z);
            he7 he7Var = ne7.a;
            w13 w13Var = new w13(executor);
            return new wh3(createFlowable(roomDatabase, (String[]) Arrays.copyOf(strArr, strArr.length)).h(w13Var), w13Var).c(w13Var).b(new yp0(new m75(callable), 3));
        }

        public final <T> a75<T> createMaybe(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
            roomDatabase.getClass();
            nl3Var.getClass();
            o22 queryContext = roomDatabase.getQueryContext();
            mb4.a aVar = mb4.a.b;
            o22 o22VarMinusKey = queryContext.minusKey(aVar);
            RxRoom$Companion$createMaybe$1 rxRoom$Companion$createMaybe$1 = new RxRoom$Companion$createMaybe$1(roomDatabase, z, z2, nl3Var, null);
            if (o22VarMinusKey.get(aVar) == null) {
                return new c75(new rv1(o22VarMinusKey, rxRoom$Companion$createMaybe$1));
            }
            eg.d(o22VarMinusKey, "Maybe context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ");
            return null;
        }

        @ul2
        public final <T> tq5<T> createObservable(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<? extends T> callable) {
            roomDatabase.getClass();
            strArr.getClass();
            callable.getClass();
            Executor executor = getExecutor(roomDatabase, z);
            he7 he7Var = ne7.a;
            w13 w13Var = new w13(executor);
            return new ir5(new cs5(createObservable(roomDatabase, (String[]) Arrays.copyOf(strArr, strArr.length)).g(w13Var), w13Var).e(w13Var), new q01(new m75(callable), 2));
        }

        public final <T> mz7<T> createSingle(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
            roomDatabase.getClass();
            nl3Var.getClass();
            o22 queryContext = roomDatabase.getQueryContext();
            mb4.a aVar = mb4.a.b;
            o22 o22VarMinusKey = queryContext.minusKey(aVar);
            RxRoom$Companion$createSingle$1 rxRoom$Companion$createSingle$1 = new RxRoom$Companion$createSingle$1(roomDatabase, z, z2, nl3Var, null);
            if (o22VarMinusKey.get(aVar) == null) {
                return new oz7(new tf2(o22VarMinusKey, rxRoom$Companion$createSingle$1));
            }
            eg.d(o22VarMinusKey, "Single context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ");
            return null;
        }

        private Companion() {
        }

        public final <T> mz7<T> createSingle(Callable<? extends T> callable) {
            callable.getClass();
            return new oz7(new wp0(callable, 3));
        }

        public final gg3<Object> createFlowable(final RoomDatabase roomDatabase, final String... strArr) {
            roomDatabase.getClass();
            strArr.getClass();
            jh3 jh3Var = new jh3() { // from class: i97
                @Override // defpackage.jh3
                public final void subscribe(qg3 qg3Var) {
                    RxRoom.Companion.createFlowable$lambda$1(roomDatabase, strArr, (kg3.b) qg3Var);
                }
            };
            n00 n00Var = n00.LATEST;
            int i = gg3.b;
            nq5.a(n00Var, "mode is null");
            return new kg3(jh3Var, n00Var);
        }

        public final tq5<Object> createObservable(final RoomDatabase roomDatabase, final String... strArr) {
            roomDatabase.getClass();
            strArr.getClass();
            return new xq5(new rr5() { // from class: f97
                @Override // defpackage.rr5
                public final void a(xq5.a aVar) {
                    RxRoom.Companion.createObservable$lambda$4(roomDatabase, strArr, aVar);
                }
            });
        }

        @ul2
        public final <T> tq5<T> createObservable(RoomDatabase roomDatabase, String[] strArr, Callable<? extends T> callable) {
            roomDatabase.getClass();
            strArr.getClass();
            callable.getClass();
            return createObservable(roomDatabase, false, strArr, (Callable) callable);
        }

        public final <T> tq5<T> createObservable(RoomDatabase roomDatabase, boolean z, String[] strArr, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
            roomDatabase.getClass();
            strArr.getClass();
            nl3Var.getClass();
            return new xq5(new jf2(roomDatabase.getQueryContext(), new cf3(FlowUtil.createFlow(roomDatabase, z, strArr, nl3Var))));
        }

        @ul2
        public final <T> gg3<T> createFlowable(RoomDatabase roomDatabase, String[] strArr, Callable<? extends T> callable) {
            roomDatabase.getClass();
            strArr.getClass();
            callable.getClass();
            return createFlowable(roomDatabase, false, strArr, (Callable) callable);
        }

        public final <T> gg3<T> createFlowable(RoomDatabase roomDatabase, boolean z, String[] strArr, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
            roomDatabase.getClass();
            strArr.getClass();
            nl3Var.getClass();
            return createObservable(roomDatabase, z, strArr, nl3Var).h(n00.LATEST);
        }
    }

    @ul2
    public static final <T> gg3<T> createFlowable(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<? extends T> callable) {
        return Companion.createFlowable(roomDatabase, z, strArr, callable);
    }

    @ul2
    public static final <T> tq5<T> createObservable(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<? extends T> callable) {
        return Companion.createObservable(roomDatabase, z, strArr, callable);
    }

    public static final <T> mz7<T> createSingle(Callable<? extends T> callable) {
        return Companion.createSingle(callable);
    }

    public static final gg3<Object> createFlowable(RoomDatabase roomDatabase, String... strArr) {
        return Companion.createFlowable(roomDatabase, strArr);
    }

    public static final tq5<Object> createObservable(RoomDatabase roomDatabase, String... strArr) {
        return Companion.createObservable(roomDatabase, strArr);
    }

    @ul2
    public static final <T> gg3<T> createFlowable(RoomDatabase roomDatabase, String[] strArr, Callable<? extends T> callable) {
        return Companion.createFlowable(roomDatabase, strArr, callable);
    }

    @ul2
    public static final <T> tq5<T> createObservable(RoomDatabase roomDatabase, String[] strArr, Callable<? extends T> callable) {
        return Companion.createObservable(roomDatabase, strArr, callable);
    }
}
