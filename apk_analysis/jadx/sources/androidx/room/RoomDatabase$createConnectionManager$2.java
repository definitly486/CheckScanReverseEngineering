package androidx.room;

import defpackage.bm3;
import defpackage.e02;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class RoomDatabase$createConnectionManager$2 extends qm3 implements bm3<nl3<? super e02<? super Object>, ? extends Object>, e02<? super Object>, Object> {
    public RoomDatabase$createConnectionManager$2(Object obj) {
        super(2, obj, RoomDatabaseKt__RoomDatabase_androidKt.class, "compatTransactionCoroutineExecute", "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(nl3<? super e02<Object>, ? extends Object> nl3Var, e02<Object> e02Var) {
        return RoomDatabaseKt.compatTransactionCoroutineExecute((RoomDatabase) this.receiver, nl3Var, e02Var);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(nl3<? super e02<? super Object>, ? extends Object> nl3Var, e02<? super Object> e02Var) {
        return invoke2((nl3<? super e02<Object>, ? extends Object>) nl3Var, (e02<Object>) e02Var);
    }
}
