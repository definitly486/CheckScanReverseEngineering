package androidx.compose.ui.window;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1", f = "AndroidPopup.android.kt", l = {496}, m = "invokeSuspend", v = 1)
public final class AndroidPopup_androidKt$Popup$5$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ PopupLayout $popupLayout;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPopup_androidKt$Popup$5$1(PopupLayout popupLayout, e02<? super AndroidPopup_androidKt$Popup$5$1> e02Var) {
        super(2, e02Var);
        this.$popupLayout = popupLayout;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AndroidPopup_androidKt$Popup$5$1 androidPopup_androidKt$Popup$5$1 = new AndroidPopup_androidKt$Popup$5$1(this.$popupLayout, e02Var);
        androidPopup_androidKt$Popup$5$1.L$0 = obj;
        return androidPopup_androidKt$Popup$5$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AndroidPopup_androidKt$Popup$5$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0030 -> B:14:0x0033). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r3.label
            r2 = 1
            if (r1 == 0) goto L18
            if (r1 != r2) goto L11
            java.lang.Object r1 = r3.L$0
            y22 r1 = (defpackage.y22) r1
            defpackage.r57.b(r4)
            goto L33
        L11:
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r3)
            r3 = 0
            return r3
        L18:
            defpackage.r57.b(r4)
            java.lang.Object r4 = r3.L$0
            y22 r4 = (defpackage.y22) r4
            r1 = r4
        L20:
            boolean r4 = defpackage.z22.e(r1)
            if (r4 == 0) goto L39
            androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1$1 r4 = androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1.AnonymousClass1.INSTANCE
            r3.L$0 = r1
            r3.label = r2
            java.lang.Object r4 = androidx.compose.ui.platform.InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(r4, r3)
            if (r4 != r0) goto L33
            return r0
        L33:
            androidx.compose.ui.window.PopupLayout r4 = r3.$popupLayout
            r4.pollForLocationOnScreenChange()
            goto L20
        L39:
            j59 r3 = defpackage.j59.a
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Long, j59> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Long l) {
            invoke(l.longValue());
            return j59.a;
        }

        public final void invoke(long j) {
        }
    }
}
