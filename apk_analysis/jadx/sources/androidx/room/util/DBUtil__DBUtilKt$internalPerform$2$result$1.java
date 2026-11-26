package androidx.room.util;

import androidx.room.PooledConnection;
import androidx.room.TransactionScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.util.DBUtil__DBUtilKt$internalPerform$2$result$1", f = "DBUtil.kt", l = {59}, m = "invokeSuspend")
public final class DBUtil__DBUtilKt$internalPerform$2$result$1<R> extends pg8 implements bm3<TransactionScope<R>, e02<? super R>, Object> {
    final /* synthetic */ bm3<PooledConnection, e02<? super R>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtilKt$internalPerform$2$result$1(bm3<? super PooledConnection, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super DBUtil__DBUtilKt$internalPerform$2$result$1> e02Var) {
        super(2, e02Var);
        this.$block = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$1 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, e02Var);
        dBUtil__DBUtilKt$internalPerform$2$result$1.L$0 = obj;
        return dBUtil__DBUtilKt$internalPerform$2$result$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(TransactionScope<R> transactionScope, e02<? super R> e02Var) {
        return ((DBUtil__DBUtilKt$internalPerform$2$result$1) create(transactionScope, e02Var)).invokeSuspend(j59.a);
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
        TransactionScope transactionScope = (TransactionScope) this.L$0;
        bm3<PooledConnection, e02<? super R>, Object> bm3Var = this.$block;
        this.label = 1;
        Object objInvoke = bm3Var.invoke(transactionScope, this);
        return objInvoke == a32Var ? a32Var : objInvoke;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        return this.$block.invoke((TransactionScope) this.L$0, this);
    }
}
