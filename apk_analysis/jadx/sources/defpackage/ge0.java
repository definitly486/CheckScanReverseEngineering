package defpackage;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.room.BaseRoomConnectionManager;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ge0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ ge0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return BaseRoomConnectionManager.DriverWrapper.openLocked$lambda$1((BaseRoomConnectionManager) obj3, (BaseRoomConnectionManager.DriverWrapper) obj2, (String) obj);
            default:
                return TextFieldSelectionState.detectCursorHandleDragGestures$lambda$1((q07) obj3, (q07) obj2, (TextFieldSelectionState) obj);
        }
    }
}
