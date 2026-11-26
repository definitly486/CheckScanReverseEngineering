package yads;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public final class mp0 {
    public long a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final List h;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.List] */
    public mp0(String str, wv wvVar) {
        String str2 = wvVar.b;
        long j = wvVar.c;
        long j2 = wvVar.d;
        long j3 = wvVar.e;
        long j4 = wvVar.f;
        ?? arrayList = wvVar.h;
        if (arrayList == 0) {
            Map map = wvVar.g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new q83((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(str, str2, j, j2, j3, j4, arrayList);
    }

    public static mp0 a(np0 np0Var) throws IOException {
        if (op0.a(np0Var) != 538247942) {
            throw new IOException();
        }
        String str = new String(op0.a(np0Var, op0.b(np0Var)), "UTF-8");
        String str2 = new String(op0.a(np0Var, op0.b(np0Var)), "UTF-8");
        long jB = op0.b(np0Var);
        long jB2 = op0.b(np0Var);
        long jB3 = op0.b(np0Var);
        long jB4 = op0.b(np0Var);
        int iA = op0.a(np0Var);
        if (iA < 0) {
            defpackage.ki0.d(vx4.a(iA, "readHeaderList size="));
            return null;
        }
        List arrayList = iA == 0 ? Collections.EMPTY_LIST : new ArrayList();
        int i = 0;
        while (i < iA) {
            arrayList.add(new q83(new String(op0.a(np0Var, op0.b(np0Var)), "UTF-8").intern(), new String(op0.a(np0Var, op0.b(np0Var)), "UTF-8").intern()));
            i++;
            str = str;
            str2 = str2;
            jB = jB;
        }
        return new mp0(str, str2, jB, jB2, jB3, jB4, arrayList);
    }

    public mp0(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.b = str;
        this.c = "".equals(str2) ? null : str2;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = list;
    }

    public final wv a(byte[] bArr) {
        wv wvVar = new wv();
        wvVar.a = bArr;
        wvVar.b = this.c;
        wvVar.c = this.d;
        wvVar.d = this.e;
        wvVar.e = this.f;
        wvVar.f = this.g;
        List<q83> list = this.h;
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (q83 q83Var : list) {
            treeMap.put(q83Var.a, q83Var.b);
        }
        wvVar.g = treeMap;
        wvVar.h = Collections.unmodifiableList(this.h);
        return wvVar;
    }

    public final boolean a(BufferedOutputStream bufferedOutputStream) {
        try {
            op0.a(bufferedOutputStream, 538247942);
            byte[] bytes = this.b.getBytes("UTF-8");
            op0.a(bufferedOutputStream, bytes.length);
            bufferedOutputStream.write(bytes, 0, bytes.length);
            String str = this.c;
            if (str == null) {
                str = "";
            }
            byte[] bytes2 = str.getBytes("UTF-8");
            op0.a(bufferedOutputStream, bytes2.length);
            bufferedOutputStream.write(bytes2, 0, bytes2.length);
            op0.a(bufferedOutputStream, this.d);
            op0.a(bufferedOutputStream, this.e);
            op0.a(bufferedOutputStream, this.f);
            op0.a(bufferedOutputStream, this.g);
            List<q83> list = this.h;
            if (list != null) {
                op0.a(bufferedOutputStream, list.size());
                for (q83 q83Var : list) {
                    byte[] bytes3 = q83Var.a.getBytes("UTF-8");
                    op0.a(bufferedOutputStream, bytes3.length);
                    bufferedOutputStream.write(bytes3, 0, bytes3.length);
                    byte[] bytes4 = q83Var.b.getBytes("UTF-8");
                    op0.a(bufferedOutputStream, bytes4.length);
                    bufferedOutputStream.write(bytes4, 0, bytes4.length);
                }
            } else {
                op0.a(bufferedOutputStream, 0);
            }
            bufferedOutputStream.flush();
            return true;
        } catch (IOException unused) {
            boolean z = li6.a;
            return false;
        }
    }
}
