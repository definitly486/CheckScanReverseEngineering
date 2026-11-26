package defpackage;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.compose.foundation.content.internal.ReceiveContentConfigurationKt;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.ModalWideNavigationRailState;
import androidx.work.impl.WorkDatabase_Impl;
import yads.nq0;
import yads.or5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hc5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hc5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ((ModalWideNavigationRailState) obj).animationSpec;
            case 1:
                return SessionConfigAdapter.deferrableSurfaces_delegate$lambda$0((SessionConfigAdapter) obj);
            case 2:
                return ReceiveContentConfigurationKt.getReceiveContentConfiguration((TextFieldDecoratorModifierNode) obj);
            case 3:
                return WorkDatabase_Impl._workSpecDao$lambda$0((WorkDatabase_Impl) obj);
            case 4:
                return nq0.J((nq0) obj);
            default:
                return or5.a((ws6) obj);
        }
    }
}
