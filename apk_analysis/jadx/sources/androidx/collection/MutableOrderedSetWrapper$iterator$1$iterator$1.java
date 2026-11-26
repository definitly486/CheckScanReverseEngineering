package androidx.collection;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1", f = "OrderedScatterSet.kt", l = {1489}, m = "invokeSuspend")
public final class MutableOrderedSetWrapper$iterator$1$iterator$1<E> extends f57 implements bm3<bp7<? super E>, e02<? super j59>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutableOrderedSetWrapper<E> this$0;
    final /* synthetic */ MutableOrderedSetWrapper.AnonymousClass1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper<E> mutableOrderedSetWrapper, MutableOrderedSetWrapper.AnonymousClass1 anonymousClass1, e02<? super MutableOrderedSetWrapper$iterator$1$iterator$1> e02Var) {
        super(2, e02Var);
        this.this$0 = mutableOrderedSetWrapper;
        this.this$1 = anonymousClass1;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        MutableOrderedSetWrapper$iterator$1$iterator$1 mutableOrderedSetWrapper$iterator$1$iterator$1 = new MutableOrderedSetWrapper$iterator$1$iterator$1(this.this$0, this.this$1, e02Var);
        mutableOrderedSetWrapper$iterator$1$iterator$1.L$0 = obj;
        return mutableOrderedSetWrapper$iterator$1$iterator$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(bp7<? super E> bp7Var, e02<? super j59> e02Var) {
        return ((MutableOrderedSetWrapper$iterator$1$iterator$1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        MutableOrderedSetWrapper<E> mutableOrderedSetWrapper;
        int i;
        MutableOrderedSetWrapper.AnonymousClass1 anonymousClass1;
        long[] jArr;
        bp7 bp7Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 == 0) {
            r57.b(obj);
            bp7 bp7Var2 = (bp7) this.L$0;
            MutableOrderedScatterSet mutableOrderedScatterSet = ((MutableOrderedSetWrapper) this.this$0).parent;
            MutableOrderedSetWrapper.AnonymousClass1 anonymousClass2 = this.this$1;
            mutableOrderedSetWrapper = this.this$0;
            long[] jArr2 = mutableOrderedScatterSet.nodes;
            i = mutableOrderedScatterSet.tail;
            anonymousClass1 = anonymousClass2;
            jArr = jArr2;
            bp7Var = bp7Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.I$0;
            jArr = (long[]) this.L$3;
            mutableOrderedSetWrapper = (MutableOrderedSetWrapper) this.L$2;
            anonymousClass1 = (MutableOrderedSetWrapper.AnonymousClass1) this.L$1;
            bp7Var = (bp7) this.L$0;
            r57.b(obj);
        }
        while (i != Integer.MAX_VALUE) {
            int i3 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            anonymousClass1.setCurrent(i);
            Object obj2 = ((MutableOrderedSetWrapper) mutableOrderedSetWrapper).parent.elements[i];
            this.L$0 = bp7Var;
            this.L$1 = anonymousClass1;
            this.L$2 = mutableOrderedSetWrapper;
            this.L$3 = jArr;
            this.I$0 = i3;
            this.label = 1;
            if (bp7Var.a(this, obj2) == a32Var) {
                return a32Var;
            }
            i = i3;
        }
        return j59.a;
    }
}
