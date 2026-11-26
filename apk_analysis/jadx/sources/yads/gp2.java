package yads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class gp2 {
    public final ByteArrayOutputStream a;
    public final DataOutputStream b;

    public gp2() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.a = byteArrayOutputStream;
        this.b = new DataOutputStream(byteArrayOutputStream);
    }

    public final byte[] a(ep2 ep2Var) {
        this.a.reset();
        try {
            DataOutputStream dataOutputStream = this.b;
            dataOutputStream.writeBytes(ep2Var.b);
            dataOutputStream.writeByte(0);
            String str = ep2Var.c;
            if (str == null) {
                str = "";
            }
            DataOutputStream dataOutputStream2 = this.b;
            dataOutputStream2.writeBytes(str);
            dataOutputStream2.writeByte(0);
            this.b.writeLong(ep2Var.d);
            this.b.writeLong(ep2Var.e);
            this.b.write(ep2Var.f);
            this.b.flush();
            return this.a.toByteArray();
        } catch (IOException e) {
            defpackage.ti0.f(e);
            return null;
        }
    }
}
