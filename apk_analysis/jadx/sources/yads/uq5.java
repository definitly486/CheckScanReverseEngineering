package yads;

import android.database.SQLException;
import defpackage.ll3;
import defpackage.p07;
import defpackage.r07;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class uq5 {
    public final ll3 a;

    public uq5(ll3 ll3Var) {
        this.a = ll3Var;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0095  */
    /* JADX WARN: Code duplicated, block: B:43:0x009a  */
    /* JADX WARN: Code duplicated, block: B:51:0x00af  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b9 A[PHI: r4 r12
      0x00b9: PHI (r4v5 yads.te) = (r4v3 yads.te), (r4v6 yads.te) binds: [B:44:0x009d, B:54:0x00b7] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r12v7 yads.z00) = (r12v5 yads.z00), (r12v8 yads.z00) binds: [B:44:0x009d, B:54:0x00b7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:60:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:64:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:80:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [T, yads.tq5] */
    public final mp2 a(mb1 mb1Var, tq5... tq5VarArr) throws Throwable {
        Throwable th;
        z00 z00Var;
        IllegalStateException illegalStateException;
        te teVar;
        SQLException sQLException;
        tq5[] tq5VarArr2 = tq5VarArr;
        p07 p07Var = new p07();
        p07Var.b = 1;
        r07 r07Var = new r07();
        ArrayList arrayList = new ArrayList();
        te teVar2 = null;
        try {
            try {
                teVar = (te) this.a.invoke();
                try {
                    z00Var = new z00(teVar);
                    try {
                        try {
                            teVar.b.beginTransaction();
                            int length = tq5VarArr2.length;
                            int i = 0;
                            tq5[] tq5VarArr3 = tq5VarArr2;
                            while (i < length) {
                                ?? r0 = tq5VarArr3[i];
                                r07Var.b = r0;
                                try {
                                    r0.a(z00Var);
                                } catch (SQLException e) {
                                    a(r07Var, p07Var, tq5VarArr, mb1Var, this, arrayList, e);
                                } catch (IllegalStateException e2) {
                                    a(r07Var, p07Var, tq5VarArr3, mb1Var, this, arrayList, e2);
                                }
                                p07Var.b++;
                                i++;
                                tq5VarArr3 = tq5VarArr;
                            }
                            teVar.b.setTransactionSuccessful();
                            up5.a(teVar);
                            z00Var.close();
                            up5.a((Closeable) teVar);
                        } catch (Throwable th2) {
                            th = th2;
                            if (teVar != null) {
                                up5.a(teVar);
                            }
                            if (z00Var != null) {
                                z00Var.close();
                            }
                            if (teVar != null) {
                                throw th;
                            }
                            up5.a((Closeable) teVar);
                            throw th;
                        }
                    } catch (SQLException e3) {
                        sQLException = e3;
                        teVar2 = teVar;
                        arrayList.add(new z32("Error during statements execution.", sQLException, 0));
                        if (teVar2 != null) {
                            up5.a(teVar2);
                        }
                        if (z00Var != null) {
                            z00Var.close();
                        }
                        if (teVar2 != null) {
                            up5.a((Closeable) teVar2);
                        }
                    } catch (IllegalStateException e4) {
                        illegalStateException = e4;
                        teVar2 = teVar;
                        arrayList.add(new z32("Error during statements execution.", illegalStateException, 0));
                        if (teVar2 != null) {
                            up5.a(teVar2);
                        }
                        if (z00Var != null) {
                            z00Var.close();
                        }
                        if (teVar2 != null) {
                            up5.a((Closeable) teVar2);
                        }
                    }
                } catch (SQLException e5) {
                    sQLException = e5;
                    z00Var = null;
                    teVar2 = teVar;
                    arrayList.add(new z32("Error during statements execution.", sQLException, 0));
                    if (teVar2 != null) {
                        up5.a(teVar2);
                    }
                    if (z00Var != null) {
                        z00Var.close();
                    }
                    if (teVar2 != null) {
                        up5.a((Closeable) teVar2);
                    }
                    return new mp2(arrayList);
                } catch (IllegalStateException e6) {
                    illegalStateException = e6;
                    z00Var = null;
                    teVar2 = teVar;
                    arrayList.add(new z32("Error during statements execution.", illegalStateException, 0));
                    if (teVar2 != null) {
                        up5.a(teVar2);
                    }
                    if (z00Var != null) {
                        z00Var.close();
                    }
                    if (teVar2 != null) {
                        up5.a((Closeable) teVar2);
                    }
                    return new mp2(arrayList);
                } catch (Throwable th3) {
                    th = th3;
                    z00Var = null;
                    teVar2 = teVar;
                    teVar = teVar2;
                    if (teVar != null) {
                        up5.a(teVar);
                    }
                    if (z00Var != null) {
                        z00Var.close();
                    }
                    if (teVar != null) {
                        throw th;
                    }
                    up5.a((Closeable) teVar);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (SQLException e7) {
            sQLException = e7;
            teVar = null;
        } catch (IllegalStateException e8) {
            illegalStateException = e8;
            teVar = null;
        } catch (Throwable th5) {
            th = th5;
            z00Var = null;
        }
        return new mp2(arrayList);
    }

    public static final void a(r07 r07Var, p07 p07Var, tq5[] tq5VarArr, mb1 mb1Var, uq5 uq5Var, ArrayList arrayList, RuntimeException runtimeException) {
        Object obj = r07Var.b;
        int i = p07Var.b;
        int length = tq5VarArr.length;
        StringBuilder sb = new StringBuilder("Exception at statement '");
        sb.append(obj);
        sb.append("' (");
        sb.append(i);
        sb.append(" out ");
        String strE = defpackage.l2.e(sb, ")", length);
        int iOrdinal = mb1Var.ordinal();
        if (iOrdinal == 0) {
            uq5Var.getClass();
            throw new SQLException(strE, runtimeException);
        }
        if (iOrdinal != 1) {
            return;
        }
        arrayList.add(new z32(strE, runtimeException, 0));
    }

    public final void a(tq5... tq5VarArr) {
        a(mb1.ABORT_TRANSACTION, (tq5[]) Arrays.copyOf(tq5VarArr, tq5VarArr.length));
    }
}
