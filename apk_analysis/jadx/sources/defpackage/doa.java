package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.media.Image;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzam;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzan;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzao;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzap;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzaq;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzar;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzas;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzat;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzau;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzav;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzaw;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzax;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzay;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzba;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzbc;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzbm;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcc;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzci;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzck;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzco;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.libraries.barhopper.BarhopperV3;
import com.google.android.libraries.barhopper.MultiScaleDecodingOptions;
import com.google.android.libraries.barhopper.MultiScaleDetectionOptions;
import com.google.android.libraries.barhopper.RecognitionOptions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class doa extends zzbm {
    public static final int[] m = {5, 7, 7, 7, 5, 5};
    public static final double[][] n = {new double[]{0.075d, 1.0d}, new double[]{0.1d, 1.0d}, new double[]{0.125d, 1.0d}, new double[]{0.2d, 2.0d}, new double[]{0.2d, 0.5d}, new double[]{0.15d, 1.0d}, new double[]{0.2d, 1.0d}, new double[]{0.25d, 1.0d}, new double[]{0.35d, 2.0d}, new double[]{0.35d, 0.5d}, new double[]{0.35d, 3.0d}, new double[]{0.35d, 0.3333d}, new double[]{0.3d, 1.0d}, new double[]{0.4d, 1.0d}, new double[]{0.5d, 1.0d}, new double[]{0.5d, 2.0d}, new double[]{0.5d, 0.5d}, new double[]{0.5d, 3.0d}, new double[]{0.5d, 0.3333d}, new double[]{0.6d, 1.0d}, new double[]{0.8d, 1.0d}, new double[]{1.0d, 1.0d}, new double[]{0.65d, 2.0d}, new double[]{0.65d, 0.5d}, new double[]{0.65d, 3.0d}, new double[]{0.65d, 0.3333d}, new double[]{1.0d, 1.0d}, new double[]{0.8d, 2.0d}, new double[]{0.8d, 0.5d}, new double[]{0.8d, 3.0d}, new double[]{0.8d, 0.3333d}, new double[]{1.0d, 1.0d}, new double[]{0.95d, 2.0d}, new double[]{0.95d, 0.5d}, new double[]{0.95d, 3.0d}, new double[]{0.95d, 0.3333d}};
    public final Context a;
    public final zzba b;
    public BarhopperV3 l;

    public doa(Context context, zzba zzbaVar) {
        this.a = context;
        this.b = zzbaVar;
    }

    public static zzan g(e1c e1cVar, String str, String str2) {
        if (e1cVar == null || str == null) {
            return null;
        }
        Matcher matcher = Pattern.compile(str2).matcher(str);
        return new zzan(e1cVar.n(), e1cVar.zzd(), e1cVar.k(), e1cVar.l(), e1cVar.zzc(), e1cVar.m(), e1cVar.p(), matcher.find() ? matcher.group(1) : null);
    }

    public final vc0 h(ByteBuffer byteBuffer, zzcc zzccVar, RecognitionOptions recognitionOptions) {
        BarhopperV3 barhopperV3 = (BarhopperV3) Preconditions.checkNotNull(this.l);
        if (((ByteBuffer) Preconditions.checkNotNull(byteBuffer)).isDirect()) {
            return barhopperV3.b(zzccVar.zzd(), zzccVar.zza(), byteBuffer, recognitionOptions);
        }
        if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            return barhopperV3.e(zzccVar.zzd(), zzccVar.zza(), byteBuffer.array(), recognitionOptions);
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return barhopperV3.e(zzccVar.zzd(), zzccVar.zza(), bArr, recognitionOptions);
    }

    public final ArrayList i(IObjectWrapper iObjectWrapper, zzcc zzccVar, RecognitionOptions recognitionOptions) {
        vc0 vc0VarF;
        Matrix matrix;
        zzar zzarVar;
        zzau zzauVar;
        zzav zzavVar;
        zzax zzaxVar;
        zzaw zzawVar;
        zzas zzasVar;
        zzao zzaoVar;
        zzap zzapVar;
        zzaq zzaqVar;
        int i;
        int i2;
        Point[] pointArr;
        int i3;
        int i4;
        zzau[] zzauVarArr;
        zzar[] zzarVarArr;
        zzam[] zzamVarArr;
        int iZzb = zzccVar.zzb();
        int i5 = -1;
        if (iZzb == -1) {
            vc0VarF = ((BarhopperV3) Preconditions.checkNotNull(this.l)).f((Bitmap) ObjectWrapper.unwrap(iObjectWrapper), recognitionOptions);
        } else if (iZzb == 17) {
            vc0VarF = h((ByteBuffer) ObjectWrapper.unwrap(iObjectWrapper), zzccVar, recognitionOptions);
        } else if (iZzb != 35) {
            if (iZzb != 842094169) {
                fg.c(jh.b(zzccVar.zzb(), "Unsupported image format: "));
                return null;
            }
            vc0VarF = h((ByteBuffer) ObjectWrapper.unwrap(iObjectWrapper), zzccVar, recognitionOptions);
        } else {
            vc0VarF = h(((Image) Preconditions.checkNotNull((Image) ObjectWrapper.unwrap(iObjectWrapper))).getPlanes()[0].getBuffer(), zzccVar, recognitionOptions);
        }
        ArrayList arrayList = new ArrayList();
        j24 j24Var = j24.a;
        int iZzd = zzccVar.zzd();
        int iZza = zzccVar.zza();
        int iZzc = zzccVar.zzc();
        j24Var.getClass();
        if (iZzc == 0) {
            matrix = null;
        } else {
            matrix = new Matrix();
            matrix.postTranslate((-iZzd) / 2.0f, (-iZza) / 2.0f);
            matrix.postRotate(iZzc * 90);
            int i6 = iZzc % 2;
            int i7 = i6 != 0 ? iZza : iZzd;
            if (i6 == 0) {
                iZzd = iZza;
            }
            matrix.postTranslate(i7 / 2.0f, iZzd / 2.0f);
        }
        for (aza azaVar : vc0VarF.l()) {
            if (azaVar.l() > 0 && matrix != null) {
                float[] fArr = new float[8];
                zzeo zzeoVarW = azaVar.w();
                int iL = azaVar.l();
                for (int i8 = 0; i8 < iL; i8++) {
                    int i9 = i8 + i8;
                    fArr[i9] = ((fsa) zzeoVarW.get(i8)).k();
                    fArr[i9 + 1] = ((fsa) zzeoVarW.get(i8)).l();
                }
                matrix.mapPoints(fArr);
                int iZzc2 = zzccVar.zzc();
                int i10 = 0;
                while (i10 < iL) {
                    awa awaVar = (awa) azaVar.zzH();
                    int i11 = i10 + i10;
                    pra praVarM = fsa.m();
                    int i12 = (int) fArr[i11];
                    praVarM.e();
                    fsa.n((fsa) praVarM.c, i12);
                    int i13 = (int) fArr[i11 + 1];
                    praVarM.e();
                    fsa.o((fsa) praVarM.c, i13);
                    fsa fsaVar = (fsa) praVarM.zzj();
                    awaVar.e();
                    aza.x((aza) awaVar.c, (i10 + iZzc2) % iL, fsaVar);
                    azaVar = (aza) awaVar.zzj();
                    i10++;
                    i5 = i5;
                }
            }
            int i14 = i5;
            if (azaVar.B()) {
                qfc qfcVarP = azaVar.p();
                zzarVar = new zzar(qfcVarP.l() - 1, qfcVarP.zzc(), qfcVarP.zze(), qfcVarP.zzd());
            } else {
                zzarVar = null;
            }
            if (azaVar.D()) {
                zzco zzcoVarZzb = azaVar.zzb();
                zzauVar = new zzau(zzcoVarZzb.zzd() - 1, zzcoVarZzb.zzc());
            } else {
                zzauVar = null;
            }
            if (azaVar.E()) {
                lta ltaVarR = azaVar.r();
                zzavVar = new zzav(ltaVarR.zzc(), ltaVarR.zzd());
            } else {
                zzavVar = null;
            }
            if (azaVar.G()) {
                mua muaVarT = azaVar.t();
                zzaxVar = new zzax(muaVarT.zzd(), muaVarT.zzc(), muaVarT.l() - 1);
            } else {
                zzaxVar = null;
            }
            if (azaVar.F()) {
                zta ztaVarS = azaVar.s();
                zzawVar = new zzaw(ztaVarS.zzc(), ztaVarS.zzd());
            } else {
                zzawVar = null;
            }
            if (azaVar.C()) {
                oic oicVarQ = azaVar.q();
                zzasVar = new zzas(oicVarQ.k(), oicVarQ.l());
            } else {
                zzasVar = null;
            }
            if (azaVar.y()) {
                m6c m6cVarM = azaVar.m();
                zzaoVar = new zzao(m6cVarM.zzj(), m6cVarM.zze(), m6cVarM.zzf(), m6cVarM.zzh(), m6cVarM.zzi(), g(m6cVarM.l(), azaVar.u().zzn() ? azaVar.u().zzt() : null, "DTSTART:([0-9TZ]*)"), g(m6cVarM.k(), azaVar.u().zzn() ? azaVar.u().zzt() : null, "DTEND:([0-9TZ]*)"));
            } else {
                zzaoVar = null;
            }
            if (azaVar.z()) {
                hbc hbcVarN = azaVar.n();
                zzck zzckVarK = hbcVarN.k();
                zzat zzatVar = zzckVarK != null ? new zzat(zzckVarK.zzd(), zzckVarK.zzi(), zzckVarK.zzh(), zzckVarK.zzc(), zzckVarK.zzf(), zzckVarK.zze(), zzckVarK.zzj()) : null;
                String strZzd = hbcVarN.zzd();
                String strZze = hbcVarN.zze();
                zzeo zzeoVarO = hbcVarN.o();
                if (zzeoVarO.isEmpty()) {
                    zzauVarArr = null;
                } else {
                    zzau[] zzauVarArr2 = new zzau[zzeoVarO.size()];
                    for (int i15 = 0; i15 < zzeoVarO.size(); i15++) {
                        zzauVarArr2[i15] = new zzau(((zzco) zzeoVarO.get(i15)).zzd() - 1, ((zzco) zzeoVarO.get(i15)).zzc());
                    }
                    zzauVarArr = zzauVarArr2;
                }
                zzeo zzeoVarN = hbcVarN.n();
                if (zzeoVarN.isEmpty()) {
                    zzarVarArr = null;
                } else {
                    zzar[] zzarVarArr2 = new zzar[zzeoVarN.size()];
                    for (int i16 = 0; i16 < zzeoVarN.size(); i16++) {
                        zzarVarArr2[i16] = new zzar(((qfc) zzeoVarN.get(i16)).l() - 1, ((qfc) zzeoVarN.get(i16)).zzc(), ((qfc) zzeoVarN.get(i16)).zze(), ((qfc) zzeoVarN.get(i16)).zzd());
                    }
                    zzarVarArr = zzarVarArr2;
                }
                String[] strArr = (String[]) hbcVarN.p().toArray(new String[0]);
                zzeo zzeoVarM = hbcVarN.m();
                if (zzeoVarM.isEmpty()) {
                    zzamVarArr = null;
                } else {
                    zzam[] zzamVarArr2 = new zzam[zzeoVarM.size()];
                    for (int i17 = 0; i17 < zzeoVarM.size(); i17++) {
                        zzamVarArr2[i17] = new zzam(((zzci) zzeoVarM.get(i17)).zzc() - 1, (String[]) ((zzci) zzeoVarM.get(i17)).zzb().toArray(new String[0]));
                    }
                    zzamVarArr = zzamVarArr2;
                }
                zzapVar = new zzap(zzatVar, strZzd, strZze, zzauVarArr, zzarVarArr, strArr, zzamVarArr);
            } else {
                zzapVar = null;
            }
            if (azaVar.A()) {
                xcc xccVarO = azaVar.o();
                zzaqVar = new zzaq(xccVarO.zzi(), xccVarO.l(), xccVarO.r(), xccVarO.p(), xccVarO.m(), xccVarO.zze(), xccVarO.zzc(), xccVarO.zzd(), xccVarO.zzf(), xccVarO.q(), xccVarO.n(), xccVarO.zzj(), xccVarO.zzh(), xccVarO.o());
            } else {
                zzaqVar = null;
            }
            switch (azaVar.H() - 1) {
                case 0:
                    i = 0;
                    break;
                case 1:
                    i = 1;
                    break;
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 4;
                    break;
                case 4:
                    i = 8;
                    break;
                case 5:
                    i2 = 16;
                    i = i2;
                    break;
                case 6:
                    i2 = 32;
                    i = i2;
                    break;
                case 7:
                    i2 = 64;
                    i = i2;
                    break;
                case 8:
                    i2 = 128;
                    i = i2;
                    break;
                case 9:
                    i2 = 256;
                    i = i2;
                    break;
                case 10:
                    i2 = 512;
                    i = i2;
                    break;
                case 11:
                    i2 = 1024;
                    i = i2;
                    break;
                case 12:
                    i2 = 2048;
                    i = i2;
                    break;
                case 13:
                    i2 = 4096;
                    i = i2;
                    break;
                default:
                    i = i14;
                    break;
            }
            String strV = azaVar.v();
            String strZzt = azaVar.u().zzn() ? azaVar.u().zzt() : null;
            byte[] bArrZzw = azaVar.u().zzw();
            zzeo zzeoVarW2 = azaVar.w();
            if (zzeoVarW2.isEmpty()) {
                pointArr = null;
            } else {
                Point[] pointArr2 = new Point[zzeoVarW2.size()];
                for (int i18 = 0; i18 < zzeoVarW2.size(); i18++) {
                    pointArr2[i18] = new Point(((fsa) zzeoVarW2.get(i18)).k(), ((fsa) zzeoVarW2.get(i18)).l());
                }
                pointArr = pointArr2;
            }
            switch (azaVar.k() - 1) {
                case 1:
                    i3 = 1;
                    continue;
                    arrayList.add(new zzay(i, strV, strZzt, bArrZzw, pointArr, i3, zzarVar, zzauVar, zzavVar, zzaxVar, zzawVar, zzasVar, zzaoVar, zzapVar, zzaqVar));
                    i5 = i14;
                    break;
                case 2:
                    i3 = 2;
                    continue;
                    arrayList.add(new zzay(i, strV, strZzt, bArrZzw, pointArr, i3, zzarVar, zzauVar, zzavVar, zzaxVar, zzawVar, zzasVar, zzaoVar, zzapVar, zzaqVar));
                    i5 = i14;
                    break;
                case 3:
                    i4 = 3;
                    break;
                case 4:
                    i3 = 4;
                    continue;
                    arrayList.add(new zzay(i, strV, strZzt, bArrZzw, pointArr, i3, zzarVar, zzauVar, zzavVar, zzaxVar, zzawVar, zzasVar, zzaoVar, zzapVar, zzaqVar));
                    i5 = i14;
                    break;
                case 5:
                    i4 = 5;
                    break;
                case 6:
                    i4 = 6;
                    break;
                case 7:
                    i4 = 7;
                    break;
                case 8:
                    i3 = 8;
                    continue;
                    arrayList.add(new zzay(i, strV, strZzt, bArrZzw, pointArr, i3, zzarVar, zzauVar, zzavVar, zzaxVar, zzawVar, zzasVar, zzaoVar, zzapVar, zzaqVar));
                    i5 = i14;
                    break;
                case 9:
                    i4 = 9;
                    break;
                case 10:
                    i4 = 10;
                    break;
                case 11:
                    i4 = 11;
                    break;
                case 12:
                    i4 = 12;
                    break;
                default:
                    i3 = 0;
                    continue;
                    arrayList.add(new zzay(i, strV, strZzt, bArrZzw, pointArr, i3, zzarVar, zzauVar, zzavVar, zzaxVar, zzawVar, zzasVar, zzaoVar, zzapVar, zzaqVar));
                    i5 = i14;
                    break;
            }
            i3 = i4;
            arrayList.add(new zzay(i, strV, strZzt, bArrZzw, pointArr, i3, zzarVar, zzauVar, zzavVar, zzaxVar, zzawVar, zzasVar, zzaoVar, zzapVar, zzaqVar));
            i5 = i14;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzbn
    public final List zzb(IObjectWrapper iObjectWrapper, zzcc zzccVar) {
        RecognitionOptions recognitionOptions = new RecognitionOptions();
        zzba zzbaVar = this.b;
        recognitionOptions.a(zzbaVar.zza());
        recognitionOptions.f(zzbaVar.zzb());
        recognitionOptions.b();
        recognitionOptions.c();
        return i(iObjectWrapper, zzccVar, recognitionOptions);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzbn
    public final List zzc(IObjectWrapper iObjectWrapper, zzcc zzccVar, zzbc zzbcVar) {
        RecognitionOptions recognitionOptions = new RecognitionOptions();
        zzba zzbaVar = this.b;
        recognitionOptions.a(zzbaVar.zza());
        recognitionOptions.f(zzbaVar.zzb());
        recognitionOptions.b();
        recognitionOptions.c();
        MultiScaleDecodingOptions multiScaleDecodingOptions = new MultiScaleDecodingOptions();
        multiScaleDecodingOptions.a(zzbcVar.zza().zzc());
        multiScaleDecodingOptions.b(zzbcVar.zza().zza());
        multiScaleDecodingOptions.c(zzbcVar.zza().zzb());
        recognitionOptions.d(multiScaleDecodingOptions);
        MultiScaleDetectionOptions multiScaleDetectionOptions = new MultiScaleDetectionOptions();
        multiScaleDetectionOptions.a(zzbcVar.zza().zzc());
        recognitionOptions.e(multiScaleDetectionOptions);
        recognitionOptions.g(zzbcVar.zzb());
        return i(iObjectWrapper, zzccVar, recognitionOptions);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzbn
    public final void zzd() {
        Context context = this.a;
        if (this.l != null) {
            return;
        }
        this.l = new BarhopperV3();
        vlb vlbVarK = spb.k();
        o8b o8bVarK = cdb.k();
        int i = 16;
        int i2 = 0;
        for (int i3 = 0; i3 < 6; i3++) {
            uva uvaVarK = wya.k();
            uvaVarK.e();
            wya.o((wya) uvaVarK.c, i);
            uvaVarK.e();
            wya.l((wya) uvaVarK.c, i);
            for (int i4 = 0; i4 < m[i3]; i4++) {
                double[] dArr = n[i2];
                double d = dArr[0] * 320.0d;
                float fSqrt = (float) Math.sqrt(dArr[1]);
                float f = (float) d;
                uvaVarK.e();
                wya.m((wya) uvaVarK.c, f / fSqrt);
                uvaVarK.e();
                wya.n((wya) uvaVarK.c, f * fSqrt);
                i2++;
            }
            i += i;
            o8bVarK.e();
            cdb.l((cdb) o8bVarK.c, (wya) uvaVarK.zzj());
        }
        vlbVarK.e();
        spb.l((spb) vlbVarK.c, (cdb) o8bVarK.zzj());
        try {
            InputStream inputStreamOpen = context.getAssets().open("mlkit_barcode_models/barcode_ssd_mobilenet_v1_dmp25_quant.tflite");
            try {
                InputStream inputStreamOpen2 = context.getAssets().open("mlkit_barcode_models/oned_auto_regressor_mobile.tflite");
                try {
                    InputStream inputStreamOpen3 = context.getAssets().open("mlkit_barcode_models/oned_feature_extractor_mobile.tflite");
                    try {
                        BarhopperV3 barhopperV3 = (BarhopperV3) Preconditions.checkNotNull(this.l);
                        eyb eybVarK = wc0.k();
                        zzdf zzdfVarZzs = zzdf.zzs(inputStreamOpen);
                        vlbVarK.e();
                        spb.m((spb) vlbVarK.c, zzdfVarZzs);
                        eybVarK.e();
                        wc0.l((wc0) eybVarK.c, (spb) vlbVarK.zzj());
                        lpa lpaVarK = cqa.k();
                        zzdf zzdfVarZzs2 = zzdf.zzs(inputStreamOpen2);
                        lpaVarK.e();
                        cqa.m((cqa) lpaVarK.c, zzdfVarZzs2);
                        zzdf zzdfVarZzs3 = zzdf.zzs(inputStreamOpen3);
                        lpaVarK.e();
                        cqa.l((cqa) lpaVarK.c, zzdfVarZzs3);
                        eybVarK.e();
                        wc0.m((wc0) eybVarK.c, (cqa) lpaVarK.zzj());
                        barhopperV3.a(eybVarK.zzj());
                        if (inputStreamOpen3 != null) {
                            inputStreamOpen3.close();
                        }
                        if (inputStreamOpen2 != null) {
                            inputStreamOpen2.close();
                        }
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                    } catch (Throwable th) {
                        if (inputStreamOpen3 != null) {
                            try {
                                inputStreamOpen3.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (inputStreamOpen2 != null) {
                        try {
                            inputStreamOpen2.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        } catch (IOException e) {
            h2.e("Failed to open Barcode models", e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzbn
    public final void zzf() {
        BarhopperV3 barhopperV3 = this.l;
        if (barhopperV3 != null) {
            barhopperV3.close();
            this.l = null;
        }
    }
}
