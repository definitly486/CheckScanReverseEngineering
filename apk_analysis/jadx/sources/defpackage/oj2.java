package defpackage;

import android.content.Context;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import yads.bn1;
import yads.ek1;
import yads.fs2;
import yads.jk1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oj2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ oj2(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown$lambda$0$0((TextContextMenuData) this.c, (Context) this.d, (TextContextMenuSession) this.e, (ContextMenuScope) obj);
            default:
                return jk1.b((bn1) this.c, (ek1) this.d, (fs2) this.e, obj);
        }
    }
}
