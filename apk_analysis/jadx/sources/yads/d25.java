package yads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class d25 {
    public final int a;
    public final FloatBuffer b;
    public final FloatBuffer c;
    public final int d;

    public d25(a25 a25Var) {
        float[] fArr = a25Var.c;
        this.a = fArr.length / 3;
        this.b = (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
        float[] fArr2 = a25Var.d;
        this.c = (FloatBuffer) ByteBuffer.allocateDirect(fArr2.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr2).flip();
        int i = a25Var.b;
        if (i == 1) {
            this.d = 5;
        } else if (i != 2) {
            this.d = 4;
        } else {
            this.d = 6;
        }
    }
}
