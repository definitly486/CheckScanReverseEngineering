package defpackage;

import androidx.window.embedding.ExtensionEmbeddingBackend;
import com.google.common.collect.i;
import com.google.firebase.remoteconfig.ConfigUpdate;
import java.util.ArrayList;
import yads.nm;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ kb(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((go1) obj2).p((i) obj);
                break;
            case 1:
                ExtensionEmbeddingBackend.SplitListenerWrapper.accept$lambda$1((ExtensionEmbeddingBackend.SplitListenerWrapper) obj2, (ArrayList) obj);
                break;
            case 2:
                t91.a((ug6) obj2, (ConfigUpdate) obj);
                break;
            default:
                ((nm) obj2).c((Exception) obj);
                break;
        }
    }
}
