package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends h {
    @Override // com.google.android.gms.internal.play_billing.h
    public final f a(zzcu zzcuVar, f fVar) {
        f fVar2;
        synchronized (zzcuVar) {
            try {
                fVar2 = zzcuVar.c;
                if (fVar2 != fVar) {
                    zzcuVar.c = fVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar2;
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final l b(zzcu zzcuVar) {
        l lVar;
        l lVar2 = l.c;
        synchronized (zzcuVar) {
            try {
                lVar = zzcuVar.d;
                if (lVar != lVar2) {
                    zzcuVar.d = lVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final void c(l lVar, l lVar2) {
        lVar.b = lVar2;
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final void d(l lVar, Thread thread) {
        lVar.a = thread;
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean e(zzcu zzcuVar, f fVar, f fVar2) {
        synchronized (zzcuVar) {
            try {
                if (zzcuVar.c != fVar) {
                    return false;
                }
                zzcuVar.c = fVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean f(m mVar, Object obj, Object obj2) {
        synchronized (mVar) {
            try {
                if (mVar.b != obj) {
                    return false;
                }
                mVar.b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean g(m mVar, l lVar, l lVar2) {
        synchronized (mVar) {
            try {
                if (mVar.d != lVar) {
                    return false;
                }
                mVar.d = lVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
