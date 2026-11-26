package defpackage;

import androidx.media3.common.Tracks;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class c86 implements lm3 {
    public final /* synthetic */ int b;

    @Override // defpackage.lm3
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return ((d86.i) obj).b;
            default:
                return ((Tracks.Group) obj).toBundle();
        }
    }
}
