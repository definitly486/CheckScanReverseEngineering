package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.Image;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstall;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcs;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrb;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzyb;
import com.google.android.gms.internal.mlkit_vision_barcode.zzyd;
import com.google.android.gms.internal.mlkit_vision_barcode.zzyl;
import com.google.android.gms.internal.mlkit_vision_barcode.zzyn;
import com.google.android.gms.internal.mlkit_vision_barcode.zzyu;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class s8c implements v3c {
    public static final zzcs h = zzcs.zzh("com.google.android.gms.vision.barcode", "com.google.android.gms.tflite_dynamite");
    public boolean a;
    public boolean b;
    public boolean c;
    public final Context d;
    public final sc0 e;
    public final zzwp f;
    public zzyl g;

    public s8c(Context context, sc0 sc0Var, zzwp zzwpVar) {
        this.d = context;
        this.e = sc0Var;
        this.f = zzwpVar;
    }

    @Override // defpackage.v3c
    public final ArrayList a(q54 q54Var) throws MlKitException {
        IObjectWrapper iObjectWrapperWrap;
        if (this.g == null) {
            zzc();
        }
        zzyl zzylVar = (zzyl) Preconditions.checkNotNull(this.g);
        if (!this.a) {
            try {
                zzylVar.zze();
                this.a = true;
            } catch (RemoteException e) {
                throw new MlKitException("Failed to init barcode scanner.", e);
            }
        }
        int rowStride = q54Var.d;
        if (q54Var.g == 35) {
            rowStride = ((Image.Plane[]) Preconditions.checkNotNull(q54Var.a()))[0].getRowStride();
        }
        zzyu zzyuVar = new zzyu(q54Var.g, rowStride, q54Var.e, dp1.a(q54Var.f), SystemClock.elapsedRealtime());
        j24.a.getClass();
        int i = q54Var.g;
        if (i == -1) {
            iObjectWrapperWrap = ObjectWrapper.wrap((Bitmap) Preconditions.checkNotNull(q54Var.a));
        } else if (i == 17) {
            iObjectWrapperWrap = ObjectWrapper.wrap((ByteBuffer) Preconditions.checkNotNull(q54Var.b));
        } else if (i != 35) {
            if (i != 842094169) {
                throw new MlKitException(jh.b(q54Var.g, "Unsupported image format: "), 3);
            }
            iObjectWrapperWrap = ObjectWrapper.wrap((ByteBuffer) Preconditions.checkNotNull(q54Var.b));
        } else {
            iObjectWrapperWrap = ObjectWrapper.wrap(q54Var.c == null ? null : q54Var.c.a);
        }
        try {
            List listZzd = zzylVar.zzd(iObjectWrapperWrap, zzyuVar);
            ArrayList arrayList = new ArrayList();
            Iterator it = listZzd.iterator();
            while (it.hasNext()) {
                arrayList.add(new pc0(new l6c((zzyb) it.next())));
            }
            return arrayList;
        } catch (RemoteException e2) {
            throw new MlKitException("Failed to run barcode scanner.", e2);
        }
    }

    public final zzyl b(DynamiteModule.VersionPolicy versionPolicy, String str, String str2) {
        Context context = this.d;
        return zzyn.zza(DynamiteModule.load(context, versionPolicy, str).instantiate(str2)).zzd(ObjectWrapper.wrap(context), new zzyd(this.e.a, false));
    }

    @Override // defpackage.v3c
    public final void zzb() {
        zzyl zzylVar = this.g;
        if (zzylVar != null) {
            try {
                zzylVar.zzf();
            } catch (RemoteException e) {
                Log.e("DecoupledBarcodeScanner", "Failed to release barcode scanner.", e);
            }
            this.g = null;
            this.a = false;
        }
    }

    @Override // defpackage.v3c
    public final boolean zzc() throws MlKitException {
        if (this.g != null) {
            return this.b;
        }
        Context context = this.d;
        int localVersion = DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID);
        zzwp zzwpVar = this.f;
        if (localVersion > 0) {
            this.b = true;
            try {
                this.g = b(DynamiteModule.PREFER_LOCAL, ModuleDescriptor.MODULE_ID, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator");
            } catch (RemoteException e) {
                throw new MlKitException("Failed to create thick barcode scanner.", e);
            } catch (DynamiteModule.LoadingException e2) {
                throw new MlKitException("Failed to load the bundled barcode module.", e2);
            }
        } else {
            boolean zAreModulesAvailable = false;
            this.b = false;
            Feature[] featureArr = wz5.a;
            int apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(context);
            zzcs zzcsVar = h;
            if (apkVersion >= 221500000) {
                final Feature[] featureArrB = wz5.b(zzcsVar, wz5.d);
                try {
                    zAreModulesAvailable = ((ModuleAvailabilityResponse) Tasks.await(ModuleInstall.getClient(context).areModulesAvailable(new OptionalModuleApi() { // from class: gcc
                        @Override // com.google.android.gms.common.api.OptionalModuleApi
                        public final Feature[] getOptionalFeatures() {
                            Feature[] featureArr2 = wz5.a;
                            return featureArrB;
                        }
                    }).addOnFailureListener(new p72(3)))).areModulesAvailable();
                } catch (InterruptedException | ExecutionException e3) {
                    Log.e("OptionalModuleUtils", "Failed to complete the task of features availability check", e3);
                }
            } else {
                try {
                    Iterator it = zzcsVar.iterator();
                    while (it.hasNext()) {
                        DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, (String) it.next());
                    }
                    zAreModulesAvailable = true;
                } catch (DynamiteModule.LoadingException unused) {
                }
            }
            if (!zAreModulesAvailable) {
                if (!this.c) {
                    wz5.a(context, zzcs.zzh("barcode", "tflite_dynamite"));
                    this.c = true;
                }
                xva.b(zzwpVar, zzrb.OPTIONAL_MODULE_NOT_AVAILABLE);
                throw new MlKitException("Waiting for the barcode module to be downloaded. Please wait.", 14);
            }
            try {
                this.g = b(DynamiteModule.PREFER_REMOTE, "com.google.android.gms.vision.barcode", "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator");
            } catch (RemoteException | DynamiteModule.LoadingException e4) {
                xva.b(zzwpVar, zzrb.OPTIONAL_MODULE_INIT_ERROR);
                throw new MlKitException("Failed to create thin barcode scanner.", e4);
            }
        }
        xva.b(zzwpVar, zzrb.NO_ERROR);
        return this.b;
    }
}
