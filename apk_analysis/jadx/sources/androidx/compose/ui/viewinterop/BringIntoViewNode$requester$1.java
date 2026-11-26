package androidx.compose.ui.viewinterop;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class BringIntoViewNode$requester$1 extends gh4 implements nl3<Rect, j59> {
    final /* synthetic */ BringIntoViewNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewNode$requester$1(BringIntoViewNode bringIntoViewNode) {
        super(1);
        this.this$0 = bringIntoViewNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Rect rect) {
        if (this.this$0.isAttached()) {
            av0.c(this.this$0.getCoroutineScope(), null, null, new AnonymousClass1(this.this$0, rect, null), 3);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.BringIntoViewNode$requester$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.viewinterop.BringIntoViewNode$requester$1$1", f = "AndroidViewHolder.android.kt", l = {764}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Rect $rect;
        int label;
        final /* synthetic */ BringIntoViewNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BringIntoViewNode bringIntoViewNode, Rect rect, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = bringIntoViewNode;
            this.$rect = rect;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, this.$rect, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                BringIntoViewNode bringIntoViewNode = this.this$0;
                C00851 c00851 = new C00851(this.$rect);
                this.label = 1;
                if (BringIntoViewModifierNodeKt.bringIntoView(bringIntoViewNode, c00851, this) == a32Var) {
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

        /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.BringIntoViewNode$requester$1$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00851 extends gh4 implements ll3<Rect> {
            final /* synthetic */ Rect $rect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00851(Rect rect) {
                super(0);
                this.$rect = rect;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.ll3
            public final Rect invoke() {
                return this.$rect;
            }
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Rect rect) {
        invoke2(rect);
        return j59.a;
    }
}
