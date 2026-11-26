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

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.RxRoom$Companion$createMaybe$1", f = "RxRoom.kt", l = {83}, m = "invokeSuspend")
public final class RxRoom$Companion$createMaybe$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ nl3<SQLiteConnection, T> $block;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RxRoom$Companion$createMaybe$1(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends T> nl3Var, e02<? super RxRoom$Companion$createMaybe$1> e02Var) {
        super(2, e02Var);
        this.$db = roomDatabase;
        this.$isReadOnly = z;
        this.$inTransaction = z2;
        this.$block = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new RxRoom$Companion$createMaybe$1(this.$db, this.$isReadOnly, this.$inTransaction, this.$block, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((RxRoom$Companion$createMaybe$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        RoomDatabase roomDatabase = this.$db;
        boolean z = this.$isReadOnly;
        boolean z2 = this.$inTransaction;
        nl3<SQLiteConnection, T> nl3Var = this.$block;
        this.label = 1;
        Object objPerformSuspending = DBUtil.performSuspending(roomDatabase, z, z2, nl3Var, this);
        return objPerformSuspending == a32Var ? a32Var : objPerformSuspending;
    }
}
