package defpackage;

import com.google.android.gms.internal.play_billing.zzo;

/* JADX INFO: loaded from: classes4.dex */
public final class i1c extends y14 {
    @Override // defpackage.y14
    public final void P(a4c a4cVar, a4c a4cVar2) {
        a4cVar.b = a4cVar2;
    }

    @Override // defpackage.y14
    public final void Q(a4c a4cVar, Thread thread) {
        a4cVar.a = thread;
    }

    @Override // defpackage.y14
    public final boolean R(zzo zzoVar, emb embVar, emb embVar2) {
        synchronized (zzoVar) {
            try {
                if (zzoVar.c != embVar) {
                    return false;
                }
                zzoVar.c = embVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.y14
    public final boolean S(zzo zzoVar, Object obj, Object obj2) {
        synchronized (zzoVar) {
            try {
                if (zzoVar.b != obj) {
                    return false;
                }
                zzoVar.b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.y14
    public final boolean T(zzo zzoVar, a4c a4cVar, a4c a4cVar2) {
        synchronized (zzoVar) {
            try {
                if (zzoVar.d != a4cVar) {
                    return false;
                }
                zzoVar.d = a4cVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
