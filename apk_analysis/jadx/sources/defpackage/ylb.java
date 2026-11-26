package defpackage;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_barcode.zzra;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrc;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrd;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrr;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzws;
import com.google.android.gms.internal.mlkit_vision_common.zzlx;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ylb extends qb5 implements rc0 {
    public static final /* synthetic */ int h = 0;
    public final boolean g;

    public ylb(sc0 sc0Var, m1c m1cVar, Executor executor, zzwp zzwpVar) {
        super(m1cVar, executor);
        boolean zC = xva.c();
        this.g = zC;
        zzrp zzrpVar = new zzrp();
        zzrpVar.zzi(xva.a(sc0Var));
        zzrr zzrrVarZzj = zzrpVar.zzj();
        zzrd zzrdVar = new zzrd();
        zzrdVar.zze(zC ? zzra.TYPE_THICK : zzra.TYPE_THIN);
        zzrdVar.zzg(zzrrVarZzj);
        zzwpVar.zzd(zzws.zzg(zzrdVar, 1), zzrc.ON_DEVICE_BARCODE_CREATE);
    }

    public final Task<List<pc0>> a(final q54 q54Var) {
        Task taskForException;
        synchronized (this) {
            Preconditions.checkNotNull(q54Var, "InputImage can not be null");
            if (this.b.get()) {
                taskForException = Tasks.forException(new MlKitException("This detector is already closed!", 14));
            } else {
                taskForException = (q54Var.d < 32 || q54Var.e < 32) ? Tasks.forException(new MlKitException("InputImage width and height should be at least 32!", 3)) : this.c.a(this.e, new Callable() { // from class: foa
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        ylb ylbVar = this.b;
                        q54 q54Var2 = q54Var;
                        zzlx zzlxVarZze = zzlx.zze("detectorTaskWithResource#run");
                        zzlxVarZze.zzb();
                        try {
                            List listB = ylbVar.c.b(q54Var2);
                            zzlxVarZze.close();
                            return listB;
                        } catch (Throwable th) {
                            try {
                                zzlxVarZze.close();
                            } catch (Throwable th2) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    }
                }, this.d.getToken());
            }
        }
        int i = q54Var.d;
        int i2 = q54Var.e;
        return taskForException.onSuccessTask(new ea6());
    }

    @Override // defpackage.qb5, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        super.close();
    }

    @Override // com.google.android.gms.common.api.OptionalModuleApi
    public final Feature[] getOptionalFeatures() {
        return this.g ? wz5.a : new Feature[]{wz5.b};
    }
}
