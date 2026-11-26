package androidx.compose.ui.adaptive;

import android.content.Context;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$1$1", f = "MediaQuery.android.kt", l = {132}, m = "invokeSuspend", v = 1)
public final class MediaQuery_androidKt$obtainUiMediaScope$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ UiMediaScopeImpl $scope;
    int label;

    /* JADX INFO: renamed from: androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$1$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$1$1$1", f = "MediaQuery.android.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<WindowLayoutInfo, e02<? super j59>, Object> {
        final /* synthetic */ UiMediaScopeImpl $scope;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UiMediaScopeImpl uiMediaScopeImpl, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$scope = uiMediaScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(WindowLayoutInfo windowLayoutInfo, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(windowLayoutInfo, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$scope.m5728set_windowPostureInyEWag(MediaQuery_androidKt.resolvePosture((WindowLayoutInfo) this.L$0));
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaQuery_androidKt$obtainUiMediaScope$1$1(Context context, UiMediaScopeImpl uiMediaScopeImpl, e02<? super MediaQuery_androidKt$obtainUiMediaScope$1$1> e02Var) {
        super(2, e02Var);
        this.$context = context;
        this.$scope = uiMediaScopeImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new MediaQuery_androidKt$obtainUiMediaScope$1$1(this.$context, this.$scope, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((MediaQuery_androidKt$obtainUiMediaScope$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            hd3<WindowLayoutInfo> hd3VarWindowLayoutInfo = WindowInfoTracker.Companion.getOrCreate(this.$context).windowLayoutInfo(this.$context);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, null);
            this.label = 1;
            if (px.c(hd3VarWindowLayoutInfo, anonymousClass1, this) == a32Var) {
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
}
