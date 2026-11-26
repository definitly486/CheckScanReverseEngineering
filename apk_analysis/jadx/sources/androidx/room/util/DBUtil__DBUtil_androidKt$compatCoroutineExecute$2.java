package androidx.room.util;

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

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt$compatCoroutineExecute$2", f = "DBUtil.android.kt", l = {118}, m = "invokeSuspend")
public final class DBUtil__DBUtil_androidKt$compatCoroutineExecute$2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
    final /* synthetic */ nl3<e02<? super R>, Object> $block;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super DBUtil__DBUtil_androidKt$compatCoroutineExecute$2> e02Var) {
        super(2, e02Var);
        this.$block = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(this.$block, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
        return ((DBUtil__DBUtil_androidKt$compatCoroutineExecute$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        nl3<e02<? super R>, Object> nl3Var = this.$block;
        this.label = 1;
        Object objInvoke = nl3Var.invoke(this);
        return objInvoke == a32Var ? a32Var : objInvoke;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        return this.$block.invoke(this);
    }
}
