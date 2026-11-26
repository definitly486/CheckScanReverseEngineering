package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j44;
import defpackage.j59;
import defpackage.p07;
import defpackage.pe3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1", f = "CachedPageEventFlow.kt", l = {TypedValues.TYPE_TARGET}, m = "invokeSuspend", v = 1)
public final class CachedPageEventFlow$downstreamFlow$1<T> extends pg8 implements bm3<id3<? super PageEvent<T>>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CachedPageEventFlow<T> this$0;

    /* JADX INFO: renamed from: androidx.paging.CachedPageEventFlow$downstreamFlow$1$1, reason: invalid class name */
    @bd2(c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$1", f = "CachedPageEventFlow.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<j44<? extends PageEvent<T>>, e02<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(j44<? extends PageEvent<T>> j44Var, e02<? super Boolean> e02Var) {
            return ((AnonymousClass1) create(j44Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.valueOf(((j44) this.L$0) != null);
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPageEventFlow$downstreamFlow$1(CachedPageEventFlow<T> cachedPageEventFlow, e02<? super CachedPageEventFlow$downstreamFlow$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cachedPageEventFlow;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CachedPageEventFlow$downstreamFlow$1 cachedPageEventFlow$downstreamFlow$1 = new CachedPageEventFlow$downstreamFlow$1(this.this$0, e02Var);
        cachedPageEventFlow$downstreamFlow$1.L$0 = obj;
        return cachedPageEventFlow$downstreamFlow$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super PageEvent<T>> id3Var, e02<? super j59> e02Var) {
        return ((CachedPageEventFlow$downstreamFlow$1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = (id3) this.L$0;
            p07 p07Var = new p07();
            p07Var.b = Integer.MIN_VALUE;
            pe3 pe3Var = new pe3(((CachedPageEventFlow) this.this$0).sharedForDownstream, new AnonymousClass1(null));
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(p07Var, id3Var);
            this.label = 1;
            if (pe3Var.collect(anonymousClass2, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.paging.CachedPageEventFlow$downstreamFlow$1$2, reason: invalid class name */
    public static final class AnonymousClass2<T> implements id3 {
        final /* synthetic */ id3<PageEvent<T>> $$this$flow;
        final /* synthetic */ p07 $maxEventIndex;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(p07 p07Var, id3<? super PageEvent<T>> id3Var) {
            this.$maxEventIndex = p07Var;
            this.$$this$flow = id3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object emit(j44<? extends PageEvent<T>> j44Var, e02<? super j59> e02Var) {
            CachedPageEventFlow$downstreamFlow$1$2$emit$1 cachedPageEventFlow$downstreamFlow$1$2$emit$1;
            if (e02Var instanceof CachedPageEventFlow$downstreamFlow$1$2$emit$1) {
                cachedPageEventFlow$downstreamFlow$1$2$emit$1 = (CachedPageEventFlow$downstreamFlow$1$2$emit$1) e02Var;
                int i = cachedPageEventFlow$downstreamFlow$1$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    cachedPageEventFlow$downstreamFlow$1$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    cachedPageEventFlow$downstreamFlow$1$2$emit$1 = new CachedPageEventFlow$downstreamFlow$1$2$emit$1(this, e02Var);
                }
            } else {
                cachedPageEventFlow$downstreamFlow$1$2$emit$1 = new CachedPageEventFlow$downstreamFlow$1$2$emit$1(this, e02Var);
            }
            Object obj = cachedPageEventFlow$downstreamFlow$1$2$emit$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = cachedPageEventFlow$downstreamFlow$1$2$emit$1.label;
            if (i2 == 0) {
                r57.b(obj);
                j44Var.getClass();
                if (j44Var.a > this.$maxEventIndex.b) {
                    id3<PageEvent<T>> id3Var = this.$$this$flow;
                    T t = j44Var.b;
                    cachedPageEventFlow$downstreamFlow$1$2$emit$1.L$0 = j44Var;
                    cachedPageEventFlow$downstreamFlow$1$2$emit$1.label = 1;
                    if (id3Var.emit((PageEvent<T>) t, cachedPageEventFlow$downstreamFlow$1$2$emit$1) == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j44Var = (j44) cachedPageEventFlow$downstreamFlow$1$2$emit$1.L$0;
            r57.b(obj);
            this.$maxEventIndex.b = j44Var.a;
            return j59.a;
        }

        @Override // defpackage.id3
        public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
            return emit((j44) obj, (e02<? super j59>) e02Var);
        }
    }
}
