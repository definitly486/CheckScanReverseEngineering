package defpackage;

import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzacv;
import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzaef;
import com.google.android.gms.internal.measurement.zzaeg;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzaen;
import com.google.android.gms.internal.measurement.zzaew;
import com.google.android.gms.internal.measurement.zzagm;

/* JADX INFO: loaded from: classes4.dex */
public final class pqa {
    public final zzacv a;
    public int b;
    public int c;
    public int d = 0;

    public pqa(zzacv zzacvVar) {
        this.a = zzacvVar;
        zzacvVar.c = this;
    }

    public static final void v(int i) throws zzaeh {
        if ((i & 3) == 0) {
            return;
        }
        xg.e("Failed to parse the message.");
    }

    public static final void w(int i) throws zzaeh {
        if ((i & 7) == 0) {
            return;
        }
        xg.e("Failed to parse the message.");
    }

    public final void A(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof hra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            hra hraVar = (hra) zzaefVar;
            int i2 = i & 7;
            if (i2 == 2) {
                int iZzp = zzacvVar.zzp();
                v(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    hraVar.b(zzacvVar.zze());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            if (i2 != 5) {
                jh.c();
                return;
            }
            do {
                hraVar.b(zzacvVar.zze());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                int iZzp2 = zzacvVar.zzp();
                v(iZzp2);
                int iZzH2 = zzacvVar.zzH() + iZzp2;
                do {
                    zzaefVar.add(Float.valueOf(zzacvVar.zze()));
                } while (zzacvVar.zzH() < iZzH2);
                return;
            }
            if (i3 != 5) {
                jh.c();
                return;
            }
            do {
                zzaefVar.add(Float.valueOf(zzacvVar.zze()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void B(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof tra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            tra traVar = (tra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    traVar.b(zzacvVar.zzf());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                traVar.b(zzacvVar.zzf());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.zzf()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.zzf()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void a(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof tra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            tra traVar = (tra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    traVar.b(zzacvVar.zzg());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                traVar.b(zzacvVar.zzg());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.zzg()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.zzg()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void b(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof kra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            kra kraVar = (kra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    kraVar.zzh(zzacvVar.zzh());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                kraVar.zzh(zzacvVar.zzh());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.zzh()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.zzh()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void c(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof tra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            tra traVar = (tra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzp = zzacvVar.zzp();
                w(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    traVar.b(zzacvVar.zzi());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            do {
                traVar.b(zzacvVar.zzi());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzp2 = zzacvVar.zzp();
                w(iZzp2);
                int iZzH2 = zzacvVar.zzH() + iZzp2;
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.zzi()));
                } while (zzacvVar.zzH() < iZzH2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.zzi()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void d(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof kra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            kra kraVar = (kra) zzaefVar;
            int i2 = i & 7;
            if (i2 == 2) {
                int iZzp = zzacvVar.zzp();
                v(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    kraVar.zzh(zzacvVar.zzj());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            if (i2 != 5) {
                jh.c();
                return;
            }
            do {
                kraVar.zzh(zzacvVar.zzj());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                int iZzp2 = zzacvVar.zzp();
                v(iZzp2);
                int iZzH2 = zzacvVar.zzH() + iZzp2;
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.zzj()));
                } while (zzacvVar.zzH() < iZzH2);
                return;
            }
            if (i3 != 5) {
                jh.c();
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.zzj()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void e(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof iqa;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            iqa iqaVar = (iqa) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    iqaVar.b(zzacvVar.zzk());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                iqaVar.b(zzacvVar.zzk());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Boolean.valueOf(zzacvVar.zzk()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Boolean.valueOf(zzacvVar.zzk()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void f(zzaef zzaefVar, boolean z) throws zzaeg {
        String strZzl;
        int iZza;
        int iZza2;
        if ((this.b & 7) != 2) {
            jh.c();
            return;
        }
        boolean z2 = zzaefVar instanceof zzaen;
        zzacv zzacvVar = this.a;
        if (z2 && !z) {
            zzaen zzaenVar = (zzaen) zzaefVar;
            do {
                y();
                zzaenVar.zzb();
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            do {
                if (z) {
                    q(2);
                    strZzl = zzacvVar.zzm();
                } else {
                    q(2);
                    strZzl = zzacvVar.zzl();
                }
                zzaefVar.add(strZzl);
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void g(zzaef zzaefVar, nsa nsaVar, zzadf zzadfVar) throws zzaeh {
        int iZza;
        int i = this.b;
        if ((i & 7) != 2) {
            jh.c();
            return;
        }
        do {
            Object objZza = nsaVar.zza();
            r(objZza, nsaVar, zzadfVar);
            nsaVar.a(objZza);
            zzaefVar.add(objZza);
            zzacv zzacvVar = this.a;
            if (zzacvVar.zzG() || this.d != 0) {
                return;
            } else {
                iZza = zzacvVar.zza();
            }
        } while (iZza == i);
        this.d = iZza;
    }

    @Deprecated
    public final void h(zzaef zzaefVar, nsa nsaVar, zzadf zzadfVar) throws zzaeg {
        int iZza;
        int i = this.b;
        if ((i & 7) != 3) {
            jh.c();
            return;
        }
        do {
            Object objZza = nsaVar.zza();
            s(objZza, nsaVar, zzadfVar);
            nsaVar.a(objZza);
            zzaefVar.add(objZza);
            zzacv zzacvVar = this.a;
            if (zzacvVar.zzG() || this.d != 0) {
                return;
            } else {
                iZza = zzacvVar.zza();
            }
        } while (iZza == i);
        this.d = iZza;
    }

    public final void i(zzaef zzaefVar) throws zzaeg {
        int iZza;
        if ((this.b & 7) != 2) {
            jh.c();
            return;
        }
        do {
            zzaefVar.add(y());
            zzacv zzacvVar = this.a;
            if (zzacvVar.zzG()) {
                return;
            } else {
                iZza = zzacvVar.zza();
            }
        } while (iZza == this.b);
        this.d = iZza;
    }

    public final void j(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof kra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            kra kraVar = (kra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    kraVar.zzh(zzacvVar.zzp());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                kraVar.zzh(zzacvVar.zzp());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.zzp()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.zzp()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void k(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof kra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            kra kraVar = (kra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    kraVar.zzh(zzacvVar.zzq());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                kraVar.zzh(zzacvVar.zzq());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.zzq()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.zzq()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void l(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof kra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            kra kraVar = (kra) zzaefVar;
            int i2 = i & 7;
            if (i2 == 2) {
                int iZzp = zzacvVar.zzp();
                v(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    kraVar.zzh(zzacvVar.zzr());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            if (i2 != 5) {
                jh.c();
                return;
            }
            do {
                kraVar.zzh(zzacvVar.zzr());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                int iZzp2 = zzacvVar.zzp();
                v(iZzp2);
                int iZzH2 = zzacvVar.zzH() + iZzp2;
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.zzr()));
                } while (zzacvVar.zzH() < iZzH2);
                return;
            }
            if (i3 != 5) {
                jh.c();
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.zzr()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void m(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof tra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            tra traVar = (tra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzp = zzacvVar.zzp();
                w(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    traVar.b(zzacvVar.zzs());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            do {
                traVar.b(zzacvVar.zzs());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzp2 = zzacvVar.zzp();
                w(iZzp2);
                int iZzH2 = zzacvVar.zzH() + iZzp2;
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.zzs()));
                } while (zzacvVar.zzH() < iZzH2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.zzs()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void n(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof kra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            kra kraVar = (kra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    kraVar.zzh(zzacvVar.zzt());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                kraVar.zzh(zzacvVar.zzt());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.zzt()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.zzt()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void o(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof tra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            tra traVar = (tra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    traVar.b(zzacvVar.zzu());
                } while (zzacvVar.zzH() < iZzH);
                u(iZzH);
                return;
            }
            do {
                traVar.b(zzacvVar.zzu());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzH2 = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.zzu()));
                } while (zzacvVar.zzH() < iZzH2);
                u(iZzH2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.zzu()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }

    public final void p(zzaew zzaewVar, wra wraVar, zzadf zzadfVar) throws zzaeg {
        int i;
        int i2;
        q(2);
        zzacv zzacvVar = this.a;
        int iZzD = zzacvVar.zzD(zzacvVar.zzp());
        Object obj = wraVar.c;
        Object objT = "";
        Object objT2 = obj;
        while (true) {
            try {
                int iX = x();
                if (iX == Integer.MAX_VALUE || zzacvVar.zzG()) {
                    break;
                }
                boolean zZzc = false;
                if (iX == 1) {
                    objT = t(wraVar.a, null, null);
                } else if (iX != 2) {
                    try {
                        if (!((zzacvVar.zzG() || (i2 = this.b) == this.c) ? false : zzacvVar.zzc(i2))) {
                            throw new zzaeh("Unable to parse map entry.");
                        }
                    } catch (zzaeg e) {
                        if (!zzacvVar.zzG() && (i = this.b) != this.c) {
                            zZzc = zzacvVar.zzc(i);
                        }
                        if (!zZzc) {
                            throw new zzaeh("Unable to parse map entry.", e);
                        }
                    }
                } else {
                    objT2 = t(wraVar.b, obj.getClass(), zzadfVar);
                }
            } catch (Throwable th) {
                zzacvVar.zzE(iZzD);
                throw th;
            }
        }
        zzaewVar.put(objT, objT2);
        zzacvVar.zzE(iZzD);
    }

    public final void q(int i) throws zzaeg {
        if ((this.b & 7) == i) {
            return;
        }
        jh.c();
    }

    public final void r(Object obj, nsa nsaVar, zzadf zzadfVar) throws zzaeh {
        zzacv zzacvVar = this.a;
        int iZzp = zzacvVar.zzp();
        zzacvVar.zzO();
        int iZzD = zzacvVar.zzD(iZzp);
        zzacvVar.a++;
        nsaVar.b(obj, this, zzadfVar);
        zzacvVar.zzb(0);
        zzacvVar.a--;
        zzacvVar.zzE(iZzD);
    }

    public final void s(Object obj, nsa nsaVar, zzadf zzadfVar) {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            nsaVar.b(obj, this, zzadfVar);
            if (this.b != this.c) {
                throw new zzaeh("Failed to parse the message.");
            }
            this.c = i;
        } catch (Throwable th) {
            this.c = i;
            throw th;
        }
    }

    public final Object t(zzagm zzagmVar, Class cls, zzadf zzadfVar) throws zzaeh {
        zzagm zzagmVar2 = zzagm.zza;
        int iOrdinal = zzagmVar.ordinal();
        zzacv zzacvVar = this.a;
        switch (iOrdinal) {
            case 0:
                q(1);
                return Double.valueOf(zzacvVar.zzd());
            case 1:
                q(5);
                return Float.valueOf(zzacvVar.zze());
            case 2:
                q(0);
                return Long.valueOf(zzacvVar.zzg());
            case 3:
                q(0);
                return Long.valueOf(zzacvVar.zzf());
            case 4:
                q(0);
                return Integer.valueOf(zzacvVar.zzh());
            case 5:
                q(1);
                return Long.valueOf(zzacvVar.zzi());
            case 6:
                q(5);
                return Integer.valueOf(zzacvVar.zzj());
            case 7:
                q(0);
                return Boolean.valueOf(zzacvVar.zzk());
            case 8:
                q(2);
                return zzacvVar.zzm();
            case 9:
            default:
                fg.c("unsupported field type.");
                return null;
            case 10:
                q(2);
                nsa nsaVarA = ksa.c.a(cls);
                Object objZza = nsaVarA.zza();
                r(objZza, nsaVarA, zzadfVar);
                nsaVarA.a(objZza);
                return objZza;
            case 11:
                return y();
            case 12:
                q(0);
                return Integer.valueOf(zzacvVar.zzp());
            case 13:
                q(0);
                return Integer.valueOf(zzacvVar.zzq());
            case 14:
                q(5);
                return Integer.valueOf(zzacvVar.zzr());
            case 15:
                q(1);
                return Long.valueOf(zzacvVar.zzs());
            case 16:
                q(0);
                return Integer.valueOf(zzacvVar.zzt());
            case 17:
                q(0);
                return Long.valueOf(zzacvVar.zzu());
        }
    }

    public final void u(int i) throws zzaeh {
        if (this.a.zzH() == i) {
            return;
        }
        xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final int x() {
        int iZza = this.d;
        if (iZza != 0) {
            this.b = iZza;
            this.d = 0;
        } else {
            iZza = this.a.zza();
            this.b = iZza;
        }
        if (iZza == 0 || iZza == this.c) {
            return Integer.MAX_VALUE;
        }
        return iZza >>> 3;
    }

    public final zzacr y() throws zzaeg {
        q(2);
        return this.a.zzn();
    }

    public final void z(zzaef zzaefVar) throws zzaeh {
        int iZza;
        int iZza2;
        boolean z = zzaefVar instanceof cra;
        int i = this.b;
        zzacv zzacvVar = this.a;
        if (z) {
            cra craVar = (cra) zzaefVar;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    jh.c();
                    return;
                }
                int iZzp = zzacvVar.zzp();
                w(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    craVar.b(zzacvVar.zzd());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            do {
                craVar.b(zzacvVar.zzd());
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.b);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    jh.c();
                    return;
                }
                int iZzp2 = zzacvVar.zzp();
                w(iZzp2);
                int iZzH2 = zzacvVar.zzH() + iZzp2;
                do {
                    zzaefVar.add(Double.valueOf(zzacvVar.zzd()));
                } while (zzacvVar.zzH() < iZzH2);
                return;
            }
            do {
                zzaefVar.add(Double.valueOf(zzacvVar.zzd()));
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar.zza();
                }
            } while (iZza == this.b);
            iZza2 = iZza;
        }
        this.d = iZza2;
    }
}
