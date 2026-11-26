package androidx.window.area;

import androidx.window.extensions.area.ExtensionWindowAreaStatus;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.reflection.Consumer2;
import defpackage.a32;
import defpackage.a91;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.no7;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.sg6;
import defpackage.ug6;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.window.area.WindowAreaControllerImpl$windowAreaInfos$1", f = "WindowAreaControllerImpl.kt", l = {92}, m = "invokeSuspend")
public final class WindowAreaControllerImpl$windowAreaInfos$1 extends pg8 implements bm3<ug6<? super List<? extends WindowAreaInfo>>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WindowAreaControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowAreaControllerImpl$windowAreaInfos$1(WindowAreaControllerImpl windowAreaControllerImpl, e02<? super WindowAreaControllerImpl$windowAreaInfos$1> e02Var) {
        super(2, e02Var);
        this.this$0 = windowAreaControllerImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(WindowAreaControllerImpl windowAreaControllerImpl, ug6 ug6Var, int i) {
        windowAreaControllerImpl.updateRearDisplayAvailability(i);
        no7 channel = ug6Var.getChannel();
        Collection collectionValues = windowAreaControllerImpl.currentWindowAreaInfoMap.values();
        collectionValues.getClass();
        ((a91) channel).mo0trySendJP2dKIU(qn1.t0(collectionValues));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$1(WindowAreaControllerImpl windowAreaControllerImpl, ug6 ug6Var, ExtensionWindowAreaStatus extensionWindowAreaStatus) {
        windowAreaControllerImpl.updateRearDisplayPresentationAvailability(extensionWindowAreaStatus);
        no7 channel = ug6Var.getChannel();
        Collection collectionValues = windowAreaControllerImpl.currentWindowAreaInfoMap.values();
        collectionValues.getClass();
        ((a91) channel).mo0trySendJP2dKIU(qn1.t0(collectionValues));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$2(WindowAreaControllerImpl windowAreaControllerImpl, Consumer2 consumer2, Consumer2 consumer3) {
        windowAreaControllerImpl.windowAreaComponent.removeRearDisplayStatusListener(consumer2);
        windowAreaControllerImpl.windowAreaComponent.removeRearDisplayPresentationStatusListener(consumer3);
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        WindowAreaControllerImpl$windowAreaInfos$1 windowAreaControllerImpl$windowAreaInfos$1 = new WindowAreaControllerImpl$windowAreaInfos$1(this.this$0, e02Var);
        windowAreaControllerImpl$windowAreaInfos$1.L$0 = obj;
        return windowAreaControllerImpl$windowAreaInfos$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(ug6<? super List<WindowAreaInfo>> ug6Var, e02<? super j59> e02Var) {
        return ((WindowAreaControllerImpl$windowAreaInfos$1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [androidx.window.area.a] */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.window.area.b] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final ug6 ug6Var = (ug6) this.L$0;
            final WindowAreaControllerImpl windowAreaControllerImpl = this.this$0;
            final ?? r3 = new Consumer2() { // from class: androidx.window.area.a
                @Override // androidx.window.reflection.Consumer2
                public final void accept(Object obj2) {
                    WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$0(windowAreaControllerImpl, ug6Var, ((Integer) obj2).intValue());
                }
            };
            final WindowAreaControllerImpl windowAreaControllerImpl2 = this.this$0;
            final ?? r4 = new Consumer2() { // from class: androidx.window.area.b
                @Override // androidx.window.reflection.Consumer2
                public final void accept(Object obj2) {
                    WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$1(windowAreaControllerImpl2, ug6Var, (ExtensionWindowAreaStatus) obj2);
                }
            };
            this.this$0.windowAreaComponent.addRearDisplayStatusListener((Consumer) r3);
            this.this$0.windowAreaComponent.addRearDisplayPresentationStatusListener((Consumer) r4);
            final WindowAreaControllerImpl windowAreaControllerImpl3 = this.this$0;
            ll3 ll3Var = new ll3() { // from class: androidx.window.area.c
                @Override // defpackage.ll3
                public final Object invoke() {
                    return WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$2(windowAreaControllerImpl3, r3, r4);
                }
            };
            this.label = 1;
            if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
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

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(ug6<? super List<? extends WindowAreaInfo>> ug6Var, e02<? super j59> e02Var) {
        return invoke2((ug6<? super List<WindowAreaInfo>>) ug6Var, e02Var);
    }
}
