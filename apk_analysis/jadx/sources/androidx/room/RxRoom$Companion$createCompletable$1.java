package androidx.room;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.RxRoom$Companion$createCompletable$1", f = "RxRoom.kt", l = {96}, m = "invokeSuspend")
public final class RxRoom$Companion$createCompletable$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ nl3<SQLiteConnection, j59> $block;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RxRoom$Companion$createCompletable$1(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, j59> nl3Var, e02<? super RxRoom$Companion$createCompletable$1> e02Var) {
        super(2, e02Var);
        this.$db = roomDatabase;
        this.$isReadOnly = z;
        this.$inTransaction = z2;
        this.$block = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new RxRoom$Companion$createCompletable$1(this.$db, this.$isReadOnly, this.$inTransaction, this.$block, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((RxRoom$Companion$createCompletable$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            RoomDatabase roomDatabase = this.$db;
            boolean z = this.$isReadOnly;
            boolean z2 = this.$inTransaction;
            nl3<SQLiteConnection, j59> nl3Var = this.$block;
            this.label = 1;
            if (DBUtil.performSuspending(roomDatabase, z, z2, nl3Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
