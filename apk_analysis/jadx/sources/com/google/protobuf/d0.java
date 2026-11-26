package com.google.protobuf;

import defpackage.ah;
import defpackage.fx0;
import defpackage.rs6;
import defpackage.vi9;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class d0<T> implements f0<T> {
    public final a0 a;
    public final j0<?, ?> b;
    public final boolean c;
    public final k<?> d;

    public d0(j0<?, ?> j0Var, k<?> kVar, a0 a0Var) {
        this.b = j0Var;
        this.c = kVar.e(a0Var);
        this.d = kVar;
        this.a = a0Var;
    }

    @Override // com.google.protobuf.f0
    public final void a(T t, n0 n0Var) {
        fx0 fx0Var;
        Iterator itJ = this.d.c(t).j();
        while (itJ.hasNext()) {
            Map.Entry entry = (Map.Entry) itJ.next();
            m.b bVar = (m.b) entry.getKey();
            if (bVar.getLiteJavaType() != vi9.MESSAGE || bVar.isRepeated() || bVar.isPacked()) {
                ah.f("Found invalid MessageSet item.");
                return;
            }
            if (entry instanceof r.a) {
                int number = bVar.getNumber();
                r value = ((r.a) entry).b.getValue();
                if (value.b != null) {
                    fx0Var = value.b;
                } else {
                    synchronized (value) {
                        try {
                            if (value.b != null) {
                                fx0Var = value.b;
                            } else {
                                if (value.a == null) {
                                    value.b = fx0.c;
                                } else {
                                    value.b = value.a.toByteString();
                                }
                                fx0Var = value.b;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                ((h) n0Var).h(number, fx0Var);
            } else {
                ((h) n0Var).h(bVar.getNumber(), entry.getValue());
            }
        }
        j0<?, ?> j0Var = this.b;
        j0Var.q(j0Var.g(t), n0Var);
    }

    @Override // com.google.protobuf.f0
    public final int b(a aVar) {
        j0<?, ?> j0Var = this.b;
        int i = j0Var.i(j0Var.g(aVar));
        if (!this.c) {
            return i;
        }
        h0 h0Var = this.d.c(aVar).a;
        int iG = 0;
        for (int i2 = 0; i2 < h0Var.c.size(); i2++) {
            iG += m.g(h0Var.c(i2));
        }
        Iterator<Map.Entry<Object, Object>> it = h0Var.d().iterator();
        while (it.hasNext()) {
            iG += m.g(it.next());
        }
        return i + iG;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6 A[EDGE_INSN: B:51:0x00c6->B:39:0x00c6 BREAK  A[LOOP:1: B:21:0x0073->B:29:0x009e], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.f0
    public final void c(T t, byte[] bArr, int i, int i2, d.b bVar) throws InvalidProtocolBufferException {
        d0<T> d0Var = this;
        o oVar = (o) t;
        k0 k0Var = oVar.unknownFields;
        if (k0Var == k0.f) {
            k0Var = new k0();
            oVar.unknownFields = k0Var;
        }
        k0 k0Var2 = k0Var;
        o.c cVar = (o.c) t;
        m<o.d> mVarClone = cVar.extensions;
        if (mVarClone.b) {
            mVarClone = mVarClone.clone();
            cVar.extensions = mVarClone;
        }
        m<o.d> mVar = mVarClone;
        int iW = i;
        o.e eVar = null;
        while (iW < i2) {
            o.e eVarB = eVar;
            int iR = d.r(bArr, iW, bVar);
            int i3 = bVar.a;
            j jVar = bVar.d;
            a0 a0Var = d0Var.a;
            k<?> kVar = d0Var.d;
            int i4 = 2;
            if (i3 == 11) {
                int i5 = 0;
                fx0 fx0Var = null;
                while (iR < i2) {
                    iR = d.r(bArr, iR, bVar);
                    int i6 = bVar.a;
                    int i7 = i6 >>> 3;
                    int i8 = i6 & 7;
                    if (i7 != i4) {
                        if (i7 == 3) {
                            if (eVarB != null) {
                                iR = d.e(rs6.c.a(eVarB.c.getClass()), bArr, iR, i2, bVar);
                                mVar.m(eVarB.d, bVar.c);
                            } else if (i8 == 2) {
                                iR = d.a(bArr, iR, bVar);
                                fx0Var = (fx0) bVar.c;
                            } else if (i6 == 12) {
                                break;
                            } else {
                                iR = d.w(i6, bArr, iR, i2, bVar);
                            }
                        } else {
                            if (i6 == 12) {
                                break;
                                break;
                            }
                            iR = d.w(i6, bArr, iR, i2, bVar);
                        }
                    } else if (i8 == 0) {
                        iR = d.r(bArr, iR, bVar);
                        i5 = bVar.a;
                        eVarB = kVar.b(jVar, a0Var, i5);
                    } else {
                        if (i6 == 12) {
                            break;
                            break;
                        }
                        iR = d.w(i6, bArr, iR, i2, bVar);
                    }
                    i4 = 2;
                }
                if (fx0Var != null) {
                    k0Var2.f((i5 << 3) | 2, fx0Var);
                }
                d0Var = this;
                iW = iR;
            } else if ((i3 & 7) == 2) {
                eVarB = kVar.b(jVar, a0Var, i3 >>> 3);
                if (eVarB != null) {
                    iW = d.e(rs6.c.a(eVarB.c.getClass()), bArr, iR, i2, bVar);
                    mVar.m(eVarB.d, bVar.c);
                } else {
                    iW = d.p(i3, bArr, iR, i2, k0Var2, bVar);
                }
            } else {
                iW = d.w(i3, bArr, iR, i2, bVar);
            }
            eVar = eVarB;
        }
        if (iW != i2) {
            throw InvalidProtocolBufferException.i();
        }
    }

    @Override // com.google.protobuf.f0
    public final int d(o oVar) {
        int iHashCode = this.b.g(oVar).hashCode();
        if (!this.c) {
            return iHashCode;
        }
        return this.d.c(oVar).a.hashCode() + (iHashCode * 53);
    }

    @Override // com.google.protobuf.f0
    public final void e(Object obj, g gVar, j jVar) {
        j0<?, ?> j0Var = this.b;
        k0 k0VarF = j0Var.f(obj);
        k<?> kVar = this.d;
        m<T> mVarD = kVar.d(obj);
        while (gVar.a() != Integer.MAX_VALUE) {
            try {
                d0<T> d0Var = this;
                g gVar2 = gVar;
                j jVar2 = jVar;
                if (!d0Var.g(gVar2, jVar2, kVar, mVarD, j0Var, k0VarF)) {
                    return;
                }
                this = d0Var;
                gVar = gVar2;
                jVar = jVar2;
            } finally {
                j0Var.n(obj, k0VarF);
            }
        }
    }

    @Override // com.google.protobuf.f0
    public final boolean f(o oVar, o oVar2) {
        j0<?, ?> j0Var = this.b;
        if (!j0Var.g(oVar).equals(j0Var.g(oVar2))) {
            return false;
        }
        if (!this.c) {
            return true;
        }
        k<?> kVar = this.d;
        return kVar.c(oVar).equals(kVar.c(oVar2));
    }

    public final boolean g(g gVar, j jVar, k kVar, m mVar, j0 j0Var, Object obj) throws InvalidProtocolBufferException {
        int i = gVar.b;
        a0 a0Var = this.a;
        if (i != 11) {
            if ((i & 7) != 2) {
                return gVar.y();
            }
            o.e eVarB = kVar.b(jVar, a0Var, i >>> 3);
            if (eVarB == null) {
                return j0Var.l(0, gVar, obj);
            }
            kVar.h(gVar, eVarB, jVar, mVar);
            return true;
        }
        o.e eVarB2 = null;
        fx0 fx0VarE = null;
        int iA = 0;
        while (gVar.a() != Integer.MAX_VALUE) {
            int i2 = gVar.b;
            if (i2 == 16) {
                gVar.x(0);
                iA = gVar.a.A();
                eVarB2 = kVar.b(jVar, a0Var, iA);
            } else if (i2 == 26) {
                if (eVarB2 != null) {
                    kVar.h(gVar, eVarB2, jVar, mVar);
                } else {
                    fx0VarE = gVar.e();
                }
            } else if (!gVar.y()) {
                break;
            }
        }
        if (gVar.b != 12) {
            throw InvalidProtocolBufferException.a();
        }
        if (fx0VarE != null) {
            if (eVarB2 != null) {
                kVar.i(fx0VarE, eVarB2, jVar, mVar);
                return true;
            }
            j0Var.d(obj, iA, fx0VarE);
        }
        return true;
    }

    @Override // com.google.protobuf.f0
    public final boolean isInitialized(T t) {
        return this.d.c(t).h();
    }

    @Override // com.google.protobuf.f0
    public final void makeImmutable(T t) {
        this.b.j(t);
        this.d.f(t);
    }

    @Override // com.google.protobuf.f0
    public final void mergeFrom(T t, T t2) {
        Class<?> cls = g0.a;
        j0<?, ?> j0Var = this.b;
        j0Var.o(t, j0Var.k(j0Var.g(t), j0Var.g(t2)));
        if (this.c) {
            g0.l(this.d, t, t2);
        }
    }

    @Override // com.google.protobuf.f0
    public final T newInstance() {
        a0 a0Var = this.a;
        return a0Var instanceof o ? (T) ((o) a0Var).newMutableInstance() : (T) a0Var.newBuilderForType().buildPartial();
    }
}
