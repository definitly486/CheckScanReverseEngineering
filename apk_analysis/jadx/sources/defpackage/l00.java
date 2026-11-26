package defpackage;

import androidx.camera.core.internal.compat.quirk.BackportedFixQuirk;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class l00 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ l00(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return BackportedFixQuirk.backportedFixManager_delegate$lambda$0();
            case 1:
                return gf0.j();
            default:
                return nq0.b();
        }
    }
}
