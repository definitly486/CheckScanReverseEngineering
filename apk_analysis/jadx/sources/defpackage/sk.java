package defpackage;

import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.runtime.MutableState;
import yads.bo6;
import yads.pm6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sk implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return AndroidTextContextMenuToolbarProvider_androidKt.ProvidePlatformTextContextMenuToolbar$lambda$4$0((MutableState) obj);
            case 1:
                return Float.valueOf(DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$10$lambda$9((ll3) obj));
            case 2:
                return new i36(yr.j0(new Object[]{Boolean.valueOf(((yn3) obj).requireArguments().getBoolean("play"))}), 2);
            case 3:
                return bo6.c((bo6) obj);
            default:
                return pm6.a((pm6) obj);
        }
    }
}
