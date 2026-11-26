package yads;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class fp2 extends vk5 {
    @Override // yads.vk5
    public final h84 a(j84 j84Var, ByteBuffer byteBuffer) {
        os4 os4Var = new os4(byteBuffer.array(), byteBuffer.limit());
        String strH = os4Var.h();
        strH.getClass();
        String strH2 = os4Var.h();
        strH2.getClass();
        return new h84(new ep2(strH, strH2, os4Var.g(), os4Var.g(), Arrays.copyOfRange(os4Var.a, os4Var.b, os4Var.c)));
    }
}
