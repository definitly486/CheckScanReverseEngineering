package androidx.room.coroutines;

import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.coroutines.Pool$acquireWithTimeout$2", f = "ConnectionPoolImpl.kt", l = {WebmConstants.MkvEbmlElement.TIMESTAMP}, m = "invokeSuspend")
public final class Pool$acquireWithTimeout$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ r07<ConnectionWithLock> $connection;
    Object L$0;
    int label;
    final /* synthetic */ Pool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pool$acquireWithTimeout$2(r07<ConnectionWithLock> r07Var, Pool pool, e02<? super Pool$acquireWithTimeout$2> e02Var) {
        super(2, e02Var);
        this.$connection = r07Var;
        this.this$0 = pool;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Pool$acquireWithTimeout$2(this.$connection, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Pool$acquireWithTimeout$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        T t;
        r07<ConnectionWithLock> r07Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            r07<ConnectionWithLock> r07Var2 = this.$connection;
            Pool pool = this.this$0;
            this.L$0 = r07Var2;
            this.label = 1;
            Object objAcquire = pool.acquire(this);
            if (objAcquire == a32Var) {
                return a32Var;
            }
            t = objAcquire;
            r07Var = r07Var2;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = (r07) this.L$0;
            r57.b(obj);
            t = obj;
        }
        r07Var.b = t;
        return j59.a;
    }
}
