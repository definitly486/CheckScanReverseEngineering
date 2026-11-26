package yads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ax {
    public final HashMap a = new HashMap();
    public final SparseArray b = new SparseArray();
    public final SparseBooleanArray c = new SparseBooleanArray();
    public final SparseBooleanArray d = new SparseBooleanArray();
    public final zw e;
    public zw f;

    public ax(rp2 rp2Var, File file) {
        xw xwVar = new xw(rp2Var);
        yw ywVar = new yw(new File(file, "monetization_cached_content_index.exi"));
        this.e = xwVar;
        this.f = ywVar;
    }

    public static fk0 a(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 < 0) {
                defpackage.ki0.d(vx4.a(i3, "Invalid value size: "));
                return null;
            }
            int iMin = Math.min(i3, 10485760);
            byte[] bArrCopyOf = u56.f;
            int i4 = 0;
            while (i4 != i3) {
                int i5 = i4 + iMin;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i5);
                dataInputStream.readFully(bArrCopyOf, i4, iMin);
                iMin = Math.min(i3 - i5, 10485760);
                i4 = i5;
            }
            map.put(utf, bArrCopyOf);
        }
        return new fk0(map);
    }

    public final void b(String str) {
        ww wwVar = (ww) this.a.get(str);
        if (wwVar != null && wwVar.c.isEmpty() && wwVar.d.isEmpty()) {
            this.a.remove(str);
            int i = wwVar.a;
            boolean z = this.d.get(i);
            this.e.a(wwVar, z);
            SparseArray sparseArray = this.b;
            if (z) {
                sparseArray.remove(i);
                this.d.delete(i);
            } else {
                sparseArray.put(i, null);
                this.c.put(i, true);
            }
        }
    }

    public final void a() {
        this.e.a(this.a);
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            this.b.remove(this.c.keyAt(i));
        }
        this.c.clear();
        this.d.clear();
    }

    public final ww a(String str) {
        ww wwVar = (ww) this.a.get(str);
        if (wwVar != null) {
            return wwVar;
        }
        SparseArray sparseArray = this.b;
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i < size && i == sparseArray.keyAt(i)) {
                i++;
            }
            iKeyAt = i;
        }
        ww wwVar2 = new ww(iKeyAt, str, fk0.c);
        this.a.put(str, wwVar2);
        this.b.put(iKeyAt, str);
        this.d.put(iKeyAt, true);
        this.e.a(wwVar2);
        return wwVar2;
    }

    public final void a(long j) {
        zw zwVar;
        this.e.a(j);
        zw zwVar2 = this.f;
        if (zwVar2 != null) {
            zwVar2.a(j);
        }
        if (!this.e.a() && (zwVar = this.f) != null && zwVar.a()) {
            this.f.a(this.a, this.b);
            this.e.b(this.a);
        } else {
            this.e.a(this.a, this.b);
        }
        zw zwVar3 = this.f;
        if (zwVar3 != null) {
            zwVar3.b();
            this.f = null;
        }
    }
}
