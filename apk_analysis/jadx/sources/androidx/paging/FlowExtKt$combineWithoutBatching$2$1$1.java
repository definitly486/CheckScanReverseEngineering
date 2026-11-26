package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1", f = "FlowExt.kt", l = {132}, m = "invokeSuspend", v = 1)
public final class FlowExtKt$combineWithoutBatching$2$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ SimpleProducerScope<R> $$this$simpleChannelFlow;
    final /* synthetic */ hd3<Object> $flow;
    final /* synthetic */ AtomicInteger $incompleteFlows;
    final /* synthetic */ int $index;
    final /* synthetic */ UnbatchedFlowCombiner<T1, T2> $unbatchedFlowCombiner;
    int label;

    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements id3 {
        final /* synthetic */ int $index;
        final /* synthetic */ UnbatchedFlowCombiner<T1, T2> $unbatchedFlowCombiner;

        public AnonymousClass1(UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner, int i) {
            this.$unbatchedFlowCombiner = unbatchedFlowCombiner;
            this.$index = i;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
        
            if (defpackage.h.g(r0) == r1) goto L21;
         */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // defpackage.id3
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(Object obj, e02<? super j59> e02Var) {
            FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1 flowExtKt$combineWithoutBatching$2$1$1$1$emit$1;
            if (e02Var instanceof FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1) {
                flowExtKt$combineWithoutBatching$2$1$1$1$emit$1 = (FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1) e02Var;
                int i = flowExtKt$combineWithoutBatching$2$1$1$1$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    flowExtKt$combineWithoutBatching$2$1$1$1$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    flowExtKt$combineWithoutBatching$2$1$1$1$emit$1 = new FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1(this, e02Var);
                }
            } else {
                flowExtKt$combineWithoutBatching$2$1$1$1$emit$1 = new FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1(this, e02Var);
            }
            Object obj2 = flowExtKt$combineWithoutBatching$2$1$1$1$emit$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = flowExtKt$combineWithoutBatching$2$1$1$1$emit$1.label;
            if (i2 == 0) {
                r57.b(obj2);
                UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner = this.$unbatchedFlowCombiner;
                int i3 = this.$index;
                flowExtKt$combineWithoutBatching$2$1$1$1$emit$1.label = 1;
                if (unbatchedFlowCombiner.onNext(i3, obj, flowExtKt$combineWithoutBatching$2$1$1$1$emit$1) != a32Var) {
                }
                return a32Var;
            }
            if (i2 == 1) {
                r57.b(obj2);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj2);
            }
            return j59.a;
            flowExtKt$combineWithoutBatching$2$1$1$1$emit$1.label = 2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowExtKt$combineWithoutBatching$2$1$1(hd3<? extends Object> hd3Var, AtomicInteger atomicInteger, SimpleProducerScope<R> simpleProducerScope, UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner, int i, e02<? super FlowExtKt$combineWithoutBatching$2$1$1> e02Var) {
        super(2, e02Var);
        this.$flow = hd3Var;
        this.$incompleteFlows = atomicInteger;
        this.$$this$simpleChannelFlow = simpleProducerScope;
        this.$unbatchedFlowCombiner = unbatchedFlowCombiner;
        this.$index = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new FlowExtKt$combineWithoutBatching$2$1$1(this.$flow, this.$incompleteFlows, this.$$this$simpleChannelFlow, this.$unbatchedFlowCombiner, this.$index, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((FlowExtKt$combineWithoutBatching$2$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                hd3<Object> hd3Var = this.$flow;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$unbatchedFlowCombiner, this.$index);
                this.label = 1;
                if (hd3Var.collect(anonymousClass1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            if (this.$incompleteFlows.decrementAndGet() == 0) {
                this.$$this$simpleChannelFlow.close(null);
            }
            return j59.a;
        } catch (Throwable th) {
            if (this.$incompleteFlows.decrementAndGet() == 0) {
                this.$$this$simpleChannelFlow.close(null);
            }
            throw th;
        }
    }
}
