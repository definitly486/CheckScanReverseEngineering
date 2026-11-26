package yads;

import androidx.collection.SieveCacheKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rj6 {
    public static qj6 a(int i, wk0 wk0Var, os4 os4Var) {
        qj6 qj6VarA = qj6.a(wk0Var, os4Var);
        while (qj6VarA.a != i) {
            sv3.d("WavHeaderReader", "Ignoring unknown WAV chunk: " + qj6VarA.a);
            long j = qj6VarA.b + 8;
            if (j > SieveCacheKt.NodeLinkMask) {
                throw xs4.a("Chunk is too large (~2GB+) to skip; id: " + qj6VarA.a);
            }
            wk0Var.a((int) j);
            qj6VarA = qj6.a(wk0Var, os4Var);
        }
        return qj6VarA;
    }

    public static boolean a(wk0 wk0Var) {
        os4 os4Var = new os4(8);
        int i = qj6.a(wk0Var, os4Var).a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        wk0Var.b(os4Var.a, 0, 4, false);
        os4Var.e(0);
        int iA = os4Var.a();
        if (iA == 1463899717) {
            return true;
        }
        sv3.b("WavHeaderReader", "Unsupported form type: " + iA);
        return false;
    }
}
