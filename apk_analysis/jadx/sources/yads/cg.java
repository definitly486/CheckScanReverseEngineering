package yads;

import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class cg extends vk5 {
    @Override // yads.vk5
    public final h84 a(j84 j84Var, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            ns4 ns4Var = new ns4(byteBuffer.array(), byteBuffer.limit());
            ns4Var.c(12);
            int iC = (ns4Var.c() + ns4Var.a(12)) - 4;
            ns4Var.c(44);
            ns4Var.d(ns4Var.a(12));
            ns4Var.c(16);
            ArrayList arrayList = new ArrayList();
            while (ns4Var.c() < iC) {
                ns4Var.c(48);
                int iA = ns4Var.a(8);
                ns4Var.c(4);
                int iC2 = ns4Var.c() + ns4Var.a(12);
                String strA = null;
                String strA2 = null;
                while (ns4Var.c() < iC2) {
                    int iA2 = ns4Var.a(8);
                    int iA3 = ns4Var.a(8);
                    int iC3 = ns4Var.c() + iA3;
                    if (iA2 == 2) {
                        int iA4 = ns4Var.a(16);
                        ns4Var.c(8);
                        if (iA4 == 3) {
                            while (ns4Var.c() < iC3) {
                                strA = ns4Var.a(ns4Var.a(8), az.a);
                                int iA5 = ns4Var.a(8);
                                for (int i = 0; i < iA5; i++) {
                                    ns4Var.d(ns4Var.a(8));
                                }
                            }
                        }
                    } else if (iA2 == 21) {
                        strA2 = ns4Var.a(iA3, az.a);
                    }
                    ns4Var.b(iC3 * 8);
                }
                ns4Var.b(iC2 * 8);
                if (strA != null && strA2 != null) {
                    arrayList.add(new bg(iA, strA.concat(strA2)));
                }
            }
            if (!arrayList.isEmpty()) {
                return new h84(arrayList);
            }
        }
        return null;
    }
}
