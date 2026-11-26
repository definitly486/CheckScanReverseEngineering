package defpackage;

import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.PruneWorkRunnableKt;
import yads.eo1;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nf0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nf0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return BasicTextContextMenuProviderKt.ProvideBasicTextContextMenu$lambda$4$1$0$0((MutableState) obj);
            case 1:
                return PruneWorkRunnableKt.pruneWork$lambda$0((WorkDatabase) obj);
            case 2:
                return SelectionManager._init_$lambda$4((SelectionManager) obj);
            case 3:
                return ShaderBrushSpan.shaderState$lambda$0((ShaderBrushSpan) obj);
            case 4:
                return TextForegroundStyle.merge$lambda$1((TextForegroundStyle) obj);
            case 5:
                return eo1.a((eo1) obj);
            default:
                return nq0.h((nq0) obj);
        }
    }
}
