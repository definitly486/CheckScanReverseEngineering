package defpackage;

import android.content.Context;
import android.media.Image;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.android.gms.internal.mlkit_vision_barcode.zzah;
import com.google.android.gms.internal.mlkit_vision_barcode.zzaj;
import com.google.android.gms.internal.mlkit_vision_barcode.zzal;
import com.google.android.gms.internal.mlkit_vision_barcode.zzan;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrb;
import com.google.android.gms.internal.mlkit_vision_barcode.zzu;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwp;
import com.google.mlkit.common.MlKitException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class wbc implements v3c {
    public boolean a;
    public final Context b;
    public final zzah c;
    public final zzwp d;
    public zzaj e;

    public wbc(Context context, sc0 sc0Var, zzwp zzwpVar) {
        zzah zzahVar = new zzah();
        this.c = zzahVar;
        this.b = context;
        zzahVar.zza = sc0Var.a;
        this.d = zzwpVar;
    }

    @Override // defpackage.v3c
    public final ArrayList a(q54 q54Var) throws MlKitException {
        zzu[] zzuVarArrZzf;
        if (this.e == null) {
            zzc();
        }
        zzaj zzajVar = this.e;
        if (zzajVar == null) {
            throw new MlKitException("Error initializing the legacy barcode scanner.", 14);
        }
        zzaj zzajVar2 = (zzaj) Preconditions.checkNotNull(zzajVar);
        zzan zzanVar = new zzan(q54Var.d, q54Var.e, 0, 0L, dp1.a(q54Var.f));
        try {
            int i = q54Var.g;
            if (i == -1) {
                zzuVarArrZzf = zzajVar2.zzf(ObjectWrapper.wrap(q54Var.a), zzanVar);
            } else if (i == 17) {
                zzuVarArrZzf = zzajVar2.zze(ObjectWrapper.wrap(q54Var.b), zzanVar);
            } else if (i == 35) {
                Image.Plane[] planeArr = (Image.Plane[]) Preconditions.checkNotNull(q54Var.a());
                zzanVar.zza = planeArr[0].getRowStride();
                zzuVarArrZzf = zzajVar2.zze(ObjectWrapper.wrap(planeArr[0].getBuffer()), zzanVar);
            } else {
                if (i != 842094169) {
                    throw new MlKitException("Unsupported image format: " + q54Var.g, 3);
                }
                zzuVarArrZzf = zzajVar2.zze(ObjectWrapper.wrap(g14.a(q54Var)), zzanVar);
            }
            ArrayList arrayList = new ArrayList();
            for (zzu zzuVar : zzuVarArrZzf) {
                arrayList.add(new pc0(new gbc(zzuVar)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new MlKitException("Failed to detect with legacy barcode detector", e);
        }
    }

    @Override // defpackage.v3c
    public final void zzb() {
        zzaj zzajVar = this.e;
        if (zzajVar != null) {
            try {
                zzajVar.zzd();
            } catch (RemoteException e) {
                Log.e("LegacyBarcodeScanner", "Failed to release legacy barcode detector.", e);
            }
            this.e = null;
        }
    }

    @Override // defpackage.v3c
    public final boolean zzc() throws MlKitException {
        Context context = this.b;
        if (this.e != null) {
            return false;
        }
        try {
            zzaj zzajVarZzd = zzal.zza(DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, "com.google.android.gms.vision.dynamite").instantiate("com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator")).zzd(ObjectWrapper.wrap(context), this.c);
            this.e = zzajVarZzd;
            zzwp zzwpVar = this.d;
            if (zzajVarZzd == null && !this.a) {
                Log.d("LegacyBarcodeScanner", "Request optional module download.");
                Feature[] featureArr = wz5.a;
                wz5.a(context, zzaf.zzh("barcode"));
                this.a = true;
                xva.b(zzwpVar, zzrb.OPTIONAL_MODULE_NOT_AVAILABLE);
                throw new MlKitException("Waiting for the barcode module to be downloaded. Please wait.", 14);
            }
            xva.b(zzwpVar, zzrb.NO_ERROR);
            return false;
        } catch (RemoteException e) {
            throw new MlKitException("Failed to create legacy barcode detector.", e);
        } catch (DynamiteModule.LoadingException e2) {
            throw new MlKitException("Failed to load deprecated vision dynamite module.", e2);
        }
    }
}
