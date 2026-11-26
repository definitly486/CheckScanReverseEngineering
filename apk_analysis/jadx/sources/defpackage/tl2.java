package defpackage;

import androidx.compose.foundation.style.StyleOuterNode;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.DependencyDao_Impl;
import yads.kn5;
import yads.l24;
import yads.m24;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tl2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tl2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(DependencyDao_Impl.hasCompletedAllPrerequisites$lambda$1("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", (String) obj2, (SQLiteConnection) obj));
            case 1:
                return StyleOuterNode._get_layerBlockNonNull_$lambda$0$0((StyleOuterNode) obj2, (GraphicsLayerScope) obj);
            case 2:
                return kn5.b((kn5) obj2, ((Boolean) obj).booleanValue());
            default:
                return m24.a((m24) obj2, (l24) obj);
        }
    }
}
