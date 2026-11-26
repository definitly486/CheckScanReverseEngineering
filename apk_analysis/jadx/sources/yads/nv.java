package yads;

import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class nv implements zs2, ez {
    public static final dz k = new defpackage.ch();
    public static final qx4 l = new qx4();
    public final ws2 b;
    public final int c;
    public final vz2 d;
    public final SparseArray e = new SparseArray();
    public boolean f;
    public bs g;
    public long h;
    public sh5 i;
    public vz2[] j;

    public nv(ws2 ws2Var, int i, vz2 vz2Var) {
        this.b = ws2Var;
        this.c = i;
        this.d = vz2Var;
    }

    public final void a(bs bsVar, long j, long j2) {
        k06 cm2Var;
        this.g = bsVar;
        this.h = j2;
        boolean z = this.f;
        ws2 ws2Var = this.b;
        if (!z) {
            ws2Var.a(this);
            if (j != C.TIME_UNSET) {
                this.b.a(0L, j);
            }
            this.f = true;
            return;
        }
        if (j == C.TIME_UNSET) {
            j = 0;
        }
        ws2Var.a(0L, j);
        for (int i = 0; i < this.e.size(); i++) {
            mv mvVar = (mv) this.e.valueAt(i);
            if (bsVar == null) {
                mvVar.e = mvVar.c;
            } else {
                mvVar.f = j2;
                int i2 = mvVar.a;
                int i3 = 0;
                while (true) {
                    int[] iArr = bsVar.a;
                    if (i3 >= iArr.length) {
                        sv3.b("BaseMediaChunkOutput", "Unmatched track of type: " + i2);
                        cm2Var = new cm2();
                        break;
                    }
                    if (i2 == iArr[i3]) {
                        cm2Var = bsVar.b[i3];
                        break;
                    }
                    i3++;
                }
                mvVar.e = cm2Var;
                vz2 vz2Var = mvVar.d;
                if (vz2Var != null) {
                    cm2Var.a(vz2Var);
                }
            }
        }
    }

    public final gz b() {
        sh5 sh5Var = this.i;
        if (sh5Var instanceof gz) {
            return (gz) sh5Var;
        }
        return null;
    }

    public final void c() {
        this.b.release();
    }

    public static ez a(int i, vz2 vz2Var, boolean z, List list, k06 k06Var, rw4 rw4Var) {
        ws2 f03Var;
        String str = vz2Var.l;
        if (z84.e(str)) {
            return null;
        }
        if (str == null || (!str.startsWith(MimeTypes.VIDEO_WEBM) && !str.startsWith(MimeTypes.AUDIO_WEBM) && !str.startsWith(MimeTypes.APPLICATION_WEBM) && !str.startsWith(MimeTypes.VIDEO_MATROSKA) && !str.startsWith(MimeTypes.AUDIO_MATROSKA) && !str.startsWith(MimeTypes.APPLICATION_MATROSKA))) {
            f03Var = new f03(z ? 4 : 0, list, k06Var);
        } else {
            f03Var = new mx3(1);
        }
        return new nv(f03Var, i, vz2Var);
    }

    @Override // yads.zs2
    public final k06 a(int i, int i2) {
        k06 cm2Var;
        mv mvVar = (mv) this.e.get(i);
        if (mvVar != null) {
            return mvVar;
        }
        if (this.j == null) {
            mv mvVar2 = new mv(i, i2, i2 == this.c ? this.d : null);
            bs bsVar = this.g;
            long j = this.h;
            if (bsVar == null) {
                mvVar2.e = mvVar2.c;
            } else {
                mvVar2.f = j;
                int i3 = 0;
                while (true) {
                    int[] iArr = bsVar.a;
                    if (i3 < iArr.length) {
                        if (i2 == iArr[i3]) {
                            cm2Var = bsVar.b[i3];
                            break;
                        }
                        i3++;
                    } else {
                        sv3.b("BaseMediaChunkOutput", "Unmatched track of type: " + i2);
                        cm2Var = new cm2();
                        break;
                    }
                }
                mvVar2.e = cm2Var;
                vz2 vz2Var = mvVar2.d;
                if (vz2Var != null) {
                    cm2Var.a(vz2Var);
                }
            }
            this.e.put(i, mvVar2);
            return mvVar2;
        }
        defpackage.ud.g();
        return null;
    }

    @Override // yads.zs2
    public final void a() {
        vz2[] vz2VarArr = new vz2[this.e.size()];
        for (int i = 0; i < this.e.size(); i++) {
            vz2 vz2Var = ((mv) this.e.valueAt(i)).d;
            if (vz2Var == null) {
                defpackage.ud.g();
                return;
            }
            vz2VarArr[i] = vz2Var;
        }
        this.j = vz2VarArr;
    }

    @Override // yads.zs2
    public final void a(sh5 sh5Var) {
        this.i = sh5Var;
    }
}
