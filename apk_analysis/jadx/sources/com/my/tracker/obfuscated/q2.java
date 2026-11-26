package com.my.tracker.obfuscated;

import android.text.TextUtils;
import android.util.Base64;
import com.my.tracker.MyTrackerConfig;
import defpackage.ed0;
import defpackage.n7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class q2 {
    final s2 a;
    final c3 b;
    final int c;

    private q2(int i, c3 c3Var, s2 s2Var) {
        this.c = i;
        this.a = s2Var;
        this.b = c3Var;
    }

    public void a(a aVar) {
        w2[] w2VarArrB = aVar.b();
        int length = w2VarArrB.length;
        long[] jArr = new long[length];
        for (int i = 0; i < w2VarArrB.length; i++) {
            jArr[i] = w2VarArrB[i].a();
        }
        this.a.a(jArr);
        b3.a("TimeSpentPacketSender: successfully deleted " + length + " packets from repository");
    }

    public void b(a aVar) throws Exception {
        MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
        String strP = this.b.p();
        aVar.a(System.currentTimeMillis());
        if (b3.a()) {
            b3.a("TimeSpentPacketSender: This packet will be sent now:\n" + aVar);
        }
        if (!w0.a(aVar, okHttpClientProviderN, true).a(strP).c()) {
            throw new Exception("packet didn't delivered to server");
        }
        b3.a("TimeSpentPacketSender: packet successfully delivered to server");
    }

    public void c() {
        b3.a("TimeSpentPacketSender: i'm notified about new packet");
        m.e(new ed0(this, 6));
    }

    public static class a implements w0.a {
        private final w2[] a;
        private long b;

        private a(w2[] w2VarArr) {
            this.a = w2VarArr;
        }

        @Override // com.my.tracker.obfuscated.w0.a
        public void a(OutputStream outputStream) throws IOException {
            q qVar = new q(16384);
            q qVar2 = new q(16384);
            for (w2 w2Var : this.a) {
                qVar.a();
                qVar2.a();
                a(w2Var, qVar2);
                qVar.a(1, qVar2);
                qVar.a(outputStream);
            }
        }

        public w2[] b() {
            return this.a;
        }

        public String toString() {
            String strJoin = TextUtils.join(StringUtils.COMMA, this.a);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                a(byteArrayOutputStream);
            } catch (Exception unused) {
            }
            return "[ChunkProtobufPacket]\n| sendTimestamp = " + this.b + "\n| contain " + this.a.length + " packets: " + strJoin + "\n| content (base64): " + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0) + "\n[/ChunkProtobufPacket]";
        }

        @Override // com.my.tracker.obfuscated.w0.a
        public String a() {
            return "application/octet-stream";
        }

        public static a a(w2[] w2VarArr) {
            return new a(w2VarArr);
        }

        public void a(long j) {
            this.b = j;
        }

        private void a(w2 w2Var, q qVar) {
            try {
                qVar.b(w2Var.b());
                qVar.a(4, this.b);
            } catch (Exception unused) {
                b3.b("TimeSpentPacketSender: something went wrong while extracting protobuf data, return empty result");
            }
        }
    }

    public void a() {
        b3.a("TimeSpentPacketSender: start flushing database chunk...");
        try {
            a aVarB = b();
            b(aVarB);
            a(aVarB);
            b3.a("TimeSpentPacketSender: database chunk successfully flushed");
        } catch (Exception e) {
            b3.b("TimeSpentPacketSender: Something went wrong while flushing database chunk:\n" + e.getMessage());
        }
    }

    public static q2 a(int i, c3 c3Var, s2 s2Var) {
        return new q2(i, c3Var, s2Var);
    }

    private a b() throws Exception {
        w2[] w2VarArrA = this.a.a(this.c);
        int length = w2VarArrA == null ? 0 : w2VarArrA.length;
        StringBuilder sbC = n7.c(length, "TimeSpentPacketSender: got database chunk, size = ", ", requested = ");
        sbC.append(this.c);
        b3.a(sbC.toString());
        if (length != 0) {
            return a.a(w2VarArrA);
        }
        throw new Exception("database chunk is empty, nothing to send");
    }
}
