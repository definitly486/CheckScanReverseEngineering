package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.node.Owner;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.h8;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
final class ChainedPlatformTextInputInterceptor {
    private final MutableState interceptor$delegate;
    private final ChainedPlatformTextInputInterceptor parent;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor", f = "PlatformTextInputModifierNode.kt", l = {219}, m = "textInputSession", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChainedPlatformTextInputInterceptor.this.textInputSession(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2", f = "PlatformTextInputModifierNode.kt", l = {248}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<PlatformTextInputSessionScope, e02<?>, Object> {
        final /* synthetic */ bm3<PlatformTextInputSessionScope, e02<?>, Object> $session;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ChainedPlatformTextInputInterceptor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$session = bm3Var;
            this.this$0 = chainedPlatformTextInputInterceptor;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$session, this.this$0, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(PlatformTextInputSessionScope platformTextInputSessionScope, e02<?> e02Var) {
            return ((AnonymousClass2) create(platformTextInputSessionScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1((PlatformTextInputSessionScope) this.L$0, SessionMutex.m5669constructorimpl(), this.this$0);
                bm3<PlatformTextInputSessionScope, e02<?>, Object> bm3Var = this.$session;
                this.label = 1;
                if (bm3Var.invoke(chainedPlatformTextInputInterceptor$textInputSession$2$scope$1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    public ChainedPlatformTextInputInterceptor(PlatformTextInputInterceptor platformTextInputInterceptor, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor) {
        this.parent = chainedPlatformTextInputInterceptor;
        this.interceptor$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(platformTextInputInterceptor, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlatformTextInputInterceptor getInterceptor() {
        return (PlatformTextInputInterceptor) this.interceptor$delegate.getValue();
    }

    private final void setInterceptor(PlatformTextInputInterceptor platformTextInputInterceptor) {
        this.interceptor$delegate.setValue(platformTextInputInterceptor);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object textInputSession(Owner owner, bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, e02<?> e02Var) {
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
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor = this.parent;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(bm3Var, this, null);
            anonymousClass1.label = 1;
            if (PlatformTextInputModifierNodeKt.interceptedTextInputSession(owner, chainedPlatformTextInputInterceptor, anonymousClass2, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    public final void updateInterceptor(PlatformTextInputInterceptor platformTextInputInterceptor) {
        setInterceptor(platformTextInputInterceptor);
    }
}
