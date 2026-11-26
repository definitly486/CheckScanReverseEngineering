package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.r57;
import defpackage.s39;
import defpackage.ue3;

/* JADX INFO: loaded from: classes3.dex */
public final class CombinedLoadStatesKt {
    public static final Object awaitNotLoading(hd3<CombinedLoadStates> hd3Var, e02<CombinedLoadStates> e02Var) {
        final hd3 hd3VarB = s39.b(hd3Var, 1L);
        return ue3.c(new hd3<CombinedLoadStates>() { // from class: androidx.paging.CombinedLoadStatesKt$awaitNotLoading$$inlined$filter$1

            /* JADX INFO: renamed from: androidx.paging.CombinedLoadStatesKt$awaitNotLoading$$inlined$filter$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.paging.CombinedLoadStatesKt$awaitNotLoading$$inlined$filter$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.CombinedLoadStatesKt$awaitNotLoading$$inlined$filter$1$2", f = "CombinedLoadStates.kt", l = {50}, m = "emit", v = 1)
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var) {
                    this.$this_unsafeFlow = id3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
                    if (e02Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) e02Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(e02Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(e02Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        r57.b(obj2);
                        id3 id3Var = this.$this_unsafeFlow;
                        CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj;
                        if (combinedLoadStates.isIdle() || combinedLoadStates.hasError()) {
                            anonymousClass1.label = 1;
                            if (id3Var.emit(obj, anonymousClass1) == a32Var) {
                                return a32Var;
                            }
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj2);
                    }
                    return j59.a;
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3<? super CombinedLoadStates> id3Var, e02 e02Var2) {
                Object objCollect = hd3VarB.collect(new AnonymousClass2(id3Var), e02Var2);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, e02Var);
    }
}
