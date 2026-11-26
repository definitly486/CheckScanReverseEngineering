package androidx.room;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vg5;
import defpackage.y22;
import defpackage.yr;
import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1", f = "MultiInstanceInvalidationClient.android.kt", l = {87}, m = "invokeSuspend")
public final class MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ String[] $tables;
    Object L$0;
    int label;
    final /* synthetic */ MultiInstanceInvalidationClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(String[] strArr, MultiInstanceInvalidationClient multiInstanceInvalidationClient, e02<? super MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1> e02Var) {
        super(2, e02Var);
        this.$tables = strArr;
        this.this$0 = multiInstanceInvalidationClient;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(this.$tables, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Set<String> set;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            String[] strArr = this.$tables;
            Set<String> setK0 = yr.k0(Arrays.copyOf(strArr, strArr.length));
            vg5 vg5Var = this.this$0.invalidatedTables;
            this.L$0 = setK0;
            this.label = 1;
            if (vg5Var.emit(setK0, this) == a32Var) {
                return a32Var;
            }
            set = setK0;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            set = (Set) this.L$0;
            r57.b(obj);
        }
        this.this$0.getInvalidationTracker().notifyObserversByTableNames$room_runtime(set);
        return j59.a;
    }
}
