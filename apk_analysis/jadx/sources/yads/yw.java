package yads;

import android.util.SparseArray;
import androidx.media3.datasource.cache.ContentMetadata;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes6.dex */
public final class yw implements zw {
    public final Cipher a = null;
    public final SecretKeySpec b = null;
    public final ul c;
    public boolean d;
    public k95 e;

    public yw(File file) {
        this.c = new ul(file);
    }

    @Override // yads.zw
    public final void a(HashMap map, SparseArray sparseArray) throws Throwable {
        if (this.d) {
            defpackage.ud.g();
            return;
        }
        ul ulVar = this.c;
        if (ulVar.a.exists() || ulVar.b.exists()) {
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.c.a());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i = dataInputStream2.readInt();
                    if (i < 0 || i > 2) {
                        u56.a(dataInputStream2);
                    } else {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.a == null) {
                                u56.a(dataInputStream2);
                            } else {
                                byte[] bArr = new byte[16];
                                dataInputStream2.readFully(bArr);
                                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
                                try {
                                    Cipher cipher = this.a;
                                    SecretKeySpec secretKeySpec = this.b;
                                    int i2 = u56.a;
                                    cipher.init(2, secretKeySpec, ivParameterSpec);
                                    dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.a));
                                } catch (InvalidAlgorithmParameterException e) {
                                    e = e;
                                    throw new IllegalStateException(e);
                                } catch (InvalidKeyException e2) {
                                    e = e2;
                                    throw new IllegalStateException(e);
                                }
                            }
                        }
                        int i3 = dataInputStream2.readInt();
                        int iA = 0;
                        for (int i4 = 0; i4 < i3; i4++) {
                            ww wwVarA = a(i, dataInputStream2);
                            map.put(wwVarA.b, wwVarA);
                            sparseArray.put(wwVarA.a, wwVarA.b);
                            iA += a(wwVarA, i);
                        }
                        int i5 = dataInputStream2.readInt();
                        boolean z = dataInputStream2.read() == -1;
                        if (i5 == iA && z) {
                            u56.a(dataInputStream2);
                            return;
                        }
                        u56.a(dataInputStream2);
                    }
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        u56.a(dataInputStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        u56.a(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
            map.clear();
            sparseArray.clear();
            ul ulVar2 = this.c;
            ulVar2.a.delete();
            ulVar2.b.delete();
        }
    }

    @Override // yads.zw
    public final void b(HashMap map) throws Throwable {
        DataOutputStream dataOutputStream;
        try {
            tl tlVarB = this.c.b();
            k95 k95Var = this.e;
            if (k95Var == null) {
                this.e = new k95(tlVarB);
            } else {
                k95Var.a(tlVarB);
            }
            dataOutputStream = new DataOutputStream(this.e);
            try {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(0);
                dataOutputStream.writeInt(map.size());
                int iA = 0;
                for (ww wwVar : map.values()) {
                    dataOutputStream.writeInt(wwVar.a);
                    dataOutputStream.writeUTF(wwVar.b);
                    Set<Map.Entry> setEntrySet = wwVar.e.b.entrySet();
                    dataOutputStream.writeInt(setEntrySet.size());
                    for (Map.Entry entry : setEntrySet) {
                        dataOutputStream.writeUTF((String) entry.getKey());
                        byte[] bArr = (byte[]) entry.getValue();
                        dataOutputStream.writeInt(bArr.length);
                        dataOutputStream.write(bArr);
                    }
                    iA += a(wwVar, 2);
                }
                dataOutputStream.writeInt(iA);
                ul ulVar = this.c;
                ulVar.getClass();
                dataOutputStream.close();
                ulVar.b.delete();
                int i = u56.a;
                this.d = false;
            } catch (Throwable th) {
                th = th;
                u56.a(dataOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
    }

    @Override // yads.zw
    public final void b() {
        ul ulVar = this.c;
        ulVar.a.delete();
        ulVar.b.delete();
    }

    @Override // yads.zw
    public final boolean a() {
        ul ulVar = this.c;
        return ulVar.a.exists() || ulVar.b.exists();
    }

    @Override // yads.zw
    public final void a(long j) {
    }

    @Override // yads.zw
    public final void a(HashMap map) throws Throwable {
        if (this.d) {
            b(map);
        }
    }

    @Override // yads.zw
    public final void a(ww wwVar) {
        this.d = true;
    }

    @Override // yads.zw
    public final void a(ww wwVar, boolean z) {
        this.d = true;
    }

    public static int a(ww wwVar, int i) {
        int iHashCode = wwVar.b.hashCode() + (wwVar.a * 31);
        fk0 fk0Var = wwVar.e;
        if (i < 2) {
            long jA = i60.a(fk0Var);
            return (iHashCode * 31) + ((int) (jA ^ (jA >>> 32)));
        }
        return fk0Var.hashCode() + (iHashCode * 31);
    }

    public static ww a(int i, DataInputStream dataInputStream) throws IOException {
        fk0 fk0VarA;
        int i2 = dataInputStream.readInt();
        String utf = dataInputStream.readUTF();
        if (i < 2) {
            long j = dataInputStream.readLong();
            j60 j60Var = new j60();
            j60Var.a.put(ContentMetadata.KEY_CONTENT_LENGTH, Long.valueOf(j));
            j60Var.b.remove(ContentMetadata.KEY_CONTENT_LENGTH);
            fk0VarA = fk0.c.a(j60Var);
        } else {
            fk0VarA = ax.a(dataInputStream);
        }
        return new ww(i2, utf, fk0VarA);
    }
}
