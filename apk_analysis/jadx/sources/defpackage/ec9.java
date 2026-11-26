package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.ni1;
import yads.px0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ec9 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ec9(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return VectorConvertersKt.OffsetToVector$lambda$1((AnimationVector2D) obj);
            case 1:
                return ((WindowInsetsHolder) obj).getCaptionBar();
            case 2:
                return WorkSpecDao_Impl.getRunningWork$lambda$33("SELECT * FROM workspec WHERE state=1", (SQLiteConnection) obj);
            case 3:
                return Boolean.valueOf(ni1.d(obj));
            default:
                return px0.a((String) obj);
        }
    }
}
