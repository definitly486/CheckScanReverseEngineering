package defpackage;

import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpj;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class wac implements dlb {
    public final /* synthetic */ String a;
    public final /* synthetic */ zzpj b;
    public final /* synthetic */ zzpg c;

    public wac(zzpg zzpgVar, String str, zzpj zzpjVar) {
        this.a = str;
        this.b = zzpjVar;
        this.c = zzpgVar;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0024 A[Catch: all -> 0x0012, TRY_ENTER, TryCatch #0 {all -> 0x0012, blocks: (B:4:0x000f, B:20:0x0060, B:23:0x0086, B:14:0x0024, B:16:0x004e, B:18:0x0058, B:19:0x005c), top: B:28:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:19:0x005c A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:4:0x000f, B:20:0x0060, B:23:0x0086, B:14:0x0024, B:16:0x004e, B:18:0x0058, B:19:0x005c), top: B:28:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0060 A[Catch: all -> 0x0012, PHI: r5
      0x0060: PHI (r5v7 int) = (r5v1 int), (r5v0 int) binds: [B:13:0x0022, B:11:0x001f] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0012, blocks: (B:4:0x000f, B:20:0x0060, B:23:0x0086, B:14:0x0024, B:16:0x004e, B:18:0x0058, B:19:0x005c), top: B:28:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0085  */
    @Override // defpackage.dlb
    public final void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        String strSubstring;
        Object obj;
        zzpg zzpgVar = this.c;
        zzpgVar.zzaX().zzg();
        zzpgVar.Z();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                zzpgVar.u = false;
                zzpgVar.I();
            }
        }
        zzpj zzpjVar = this.b;
        String str2 = this.a;
        if (i == 200) {
            if (th == null) {
                zzpgVar.zzj().e(Long.valueOf(zzpjVar.zzc()));
                zzpgVar.zzaW().zzk().zzc("Successfully uploaded batch from upload queue. appId, status", str2, Integer.valueOf(i));
                if (zzpgVar.zzi().zzb() || !zzpgVar.zzj().zzD(str2)) {
                    zzpgVar.H();
                } else {
                    zzpgVar.o(str2);
                }
            } else {
                String str3 = new String(bArr, StandardCharsets.UTF_8);
                strSubstring = str3.substring(0, Math.min(32, str3.length()));
                zzgs zzgsVarZzh = zzpgVar.zzaW().zzh();
                Integer numValueOf = Integer.valueOf(i);
                obj = th;
                if (th == null) {
                    obj = strSubstring;
                }
                zzgsVarZzh.zzd("Network upload failed. Will retry later. appId, status, error", str2, numValueOf, obj);
                zzpgVar.zzj().j(Long.valueOf(zzpjVar.zzc()));
                zzpgVar.H();
            }
        } else if (i == 204) {
            i = 204;
            if (th == null) {
                zzpgVar.zzj().e(Long.valueOf(zzpjVar.zzc()));
                zzpgVar.zzaW().zzk().zzc("Successfully uploaded batch from upload queue. appId, status", str2, Integer.valueOf(i));
                if (zzpgVar.zzi().zzb()) {
                    zzpgVar.H();
                } else {
                    zzpgVar.H();
                }
            } else {
                String str4 = new String(bArr, StandardCharsets.UTF_8);
                strSubstring = str4.substring(0, Math.min(32, str4.length()));
                zzgs zzgsVarZzh2 = zzpgVar.zzaW().zzh();
                Integer numValueOf2 = Integer.valueOf(i);
                obj = th;
                if (th == null) {
                    obj = strSubstring;
                }
                zzgsVarZzh2.zzd("Network upload failed. Will retry later. appId, status, error", str2, numValueOf2, obj);
                zzpgVar.zzj().j(Long.valueOf(zzpjVar.zzc()));
                zzpgVar.H();
            }
        } else {
            String str5 = new String(bArr, StandardCharsets.UTF_8);
            strSubstring = str5.substring(0, Math.min(32, str5.length()));
            zzgs zzgsVarZzh3 = zzpgVar.zzaW().zzh();
            Integer numValueOf3 = Integer.valueOf(i);
            obj = th;
            if (th == null) {
                obj = strSubstring;
            }
            zzgsVarZzh3.zzd("Network upload failed. Will retry later. appId, status, error", str2, numValueOf3, obj);
            zzpgVar.zzj().j(Long.valueOf(zzpjVar.zzc()));
            zzpgVar.H();
        }
    }
}
