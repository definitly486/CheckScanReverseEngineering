package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.MonotonicFrameClockKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.h8;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vg5;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1", f = "AndroidTextInputSession.android.kt", l = {114, 115}, m = "invokeSuspend", v = 1)
public final class AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ ComposeInputMethodManager $composeImm;
    final /* synthetic */ vg5<j59> $it;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1(vg5<j59> vg5Var, ComposeInputMethodManager composeInputMethodManager, e02<? super AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1> e02Var) {
        super(2, e02Var);
        this.$it = vg5Var;
        this.$composeImm = composeInputMethodManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(long j) {
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1(this.$it, this.$composeImm, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        if (r5.collect(r1, r4) == r0) goto L16;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            d dVar = new d();
            this.label = 1;
            if (MonotonicFrameClockKt.withFrameMillis(dVar, this) != a32Var) {
            }
            return a32Var;
        }
        if (i == 1) {
            r57.b(obj);
        } else {
            if (i != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
        vg5<j59> vg5Var = this.$it;
        final ComposeInputMethodManager composeInputMethodManager = this.$composeImm;
        id3<? super j59> id3Var = new id3() { // from class: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1.2
            public final Object emit(j59 j59Var, e02<? super j59> e02Var) {
                composeInputMethodManager.startStylusHandwriting();
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                return emit((j59) obj2, (e02<? super j59>) e02Var);
            }
        };
        this.label = 2;
    }
}
