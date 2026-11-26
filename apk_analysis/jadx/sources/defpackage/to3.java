package defpackage;

import android.content.Context;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentStateReference;
import yads.cp;
import yads.gf0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class to3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ to3(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return GapComposer.insertMovableContentGuarded$lambda$0$0$1$0$0$0$0((GapComposer) obj2, (MovableContentStateReference) obj);
            case 1:
                return cp.a((Context) obj2, (cp) obj);
            default:
                return gf0.a((gf0) obj2, (Context) obj);
        }
    }
}
