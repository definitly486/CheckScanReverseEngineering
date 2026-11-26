package androidx.window.layout.adapter.extensions;

import androidx.window.extensions.layout.WindowLayoutInfo;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 extends qm3 implements nl3<WindowLayoutInfo, j59> {
    public ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1(Object obj) {
        super(1, obj, MulticastConsumer.class, "accept", "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V", 0);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(WindowLayoutInfo windowLayoutInfo) {
        windowLayoutInfo.getClass();
        ((MulticastConsumer) this.receiver).accept(windowLayoutInfo);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(WindowLayoutInfo windowLayoutInfo) {
        invoke2(windowLayoutInfo);
        return j59.a;
    }
}
