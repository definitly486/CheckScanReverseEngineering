package com.my.tracker.obfuscated;

import android.content.Context;
import com.my.tracker.obfuscated.t2;
import defpackage.n7;
import defpackage.ti0;
import defpackage.yg;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class t2 implements s2 {
    final int a;
    f2 b;
    n2 c = null;
    int d = Integer.MIN_VALUE;

    private t2(int i, f2 f2Var) {
        this.a = i;
        this.b = f2Var;
        b3.a("TimeSpentRepository: repository created but not initialized. Will initialized when first timespent tick will arrive");
    }

    private boolean c() {
        return this.c != null && this.d >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n2 d() {
        return null;
    }

    @Override // com.my.tracker.obfuscated.s2
    public synchronized w2[] a(int i) {
        w2[] w2VarArr;
        try {
            n2 n2Var = this.c;
            Objects.requireNonNull(n2Var);
            n2.b bVarB = n2Var.b(i);
            try {
                ArrayList arrayList = new ArrayList(i);
                while (bVarB.b()) {
                    arrayList.add(new w2(bVarB.n(), bVarB.m()));
                }
                b3.a("TimeSpentRepository: read " + arrayList.size() + " freshest packets from db");
                w2VarArr = arrayList.isEmpty() ? null : (w2[]) arrayList.toArray(new w2[0]);
                bVarB.close();
            } catch (Throwable th) {
                if (bVarB != null) {
                    try {
                        bVarB.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            b3.b("TimeSpentRepository: error while reading " + i + " freshest tick packets", th3);
            return null;
        }
        return w2VarArr;
    }

    public void b() throws Exception {
        if (c()) {
            return;
        }
        b3.a("TimeSpentRepository: initializing repository...");
        try {
            n2 n2Var = (n2) this.b.a();
            this.c = n2Var;
            this.d = n2Var.a();
            this.b = new yg();
            b3.a("TimeSpentRepository: successfully initialized, current size = " + this.d + ", max size = " + this.a);
        } catch (Exception e) {
            b3.b("TimeSpentRepository: error occured while initialization repository, repository not initialized", e);
            this.c = null;
            this.d = Integer.MIN_VALUE;
            throw e;
        }
    }

    public static t2 a(int i, c3 c3Var, final Context context) {
        final String strG = c3Var.g();
        return new t2(i, new f2() { // from class: u8a
            @Override // com.my.tracker.obfuscated.f2
            public final Object a() {
                return t2.a(strG, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n2 a(String str, Context context) {
        try {
            return n2.a(str, context);
        } catch (Exception e) {
            b3.b("TimeSpentRepository: can't initialize sql database", e);
            ti0.f(e);
            return null;
        }
    }

    @Override // com.my.tracker.obfuscated.s2
    public synchronized void a(long j, byte[] bArr) {
        try {
            if (!c()) {
                b();
            }
            if (this.d >= this.a) {
                try {
                    a();
                } catch (Exception e) {
                    b3.b("TimeSpentRepository: free up database failed, can't put new TimeSpentTick (reason: db still full)");
                    throw new Exception(e);
                }
            }
            try {
                long jA = this.c.a(j, bArr);
                this.d++;
                b3.a("TimeSpentRepository: successfully stored new tick packet to db, tickPacketId = " + jA + " (current db size = " + this.d + ")");
            } catch (Exception e2) {
                b3.b("TimeSpentRepository: something went wrong while saving new tick packet in database, this tick wouldn't be stored");
                throw new Exception(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.my.tracker.obfuscated.s2
    public synchronized void a(long[] jArr) {
        try {
            n2 n2Var = this.c;
            Objects.requireNonNull(n2Var);
            n2Var.a(jArr);
        } catch (Exception unused) {
            String str = "TimeSpentRepository: something went wrong while deleting " + jArr.length + " packets from db";
            b3.b(str);
            throw new Exception(str);
        }
    }

    private void a() throws Exception {
        int i = (this.d - this.a) + 1;
        try {
            n2 n2Var = this.c;
            Objects.requireNonNull(n2Var);
            int iA = n2Var.a(i);
            this.d -= iA;
            b3.a("TimeSpentRepository: successfully deleted " + iA + "(requested = " + i + ") oldest tick packets from db, currentDbSize = " + this.d + " (reason: need free up space for new packet)");
        } catch (Exception e) {
            StringBuilder sbC = n7.c(i, "TimeSpentRepository: something went wrong while trying to delete oldest", " tick packets from db (reason: need free up space for new packet, maxSize = ");
            sbC.append(this.a);
            sbC.append(", current size = ");
            sbC.append(this.d);
            sbC.append("), can't store new tick packet");
            b3.b(sbC.toString(), e);
            throw new Exception(e);
        }
    }
}
