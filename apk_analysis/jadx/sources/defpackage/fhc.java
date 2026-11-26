package defpackage;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxl;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxm;

/* JADX INFO: loaded from: classes4.dex */
public final class fhc extends zzxl {
    public int a;
    public int b;
    public float c;
    public float d;
    public boolean e;
    public float f;
    public float g;
    public long h;
    public long i;
    public boolean j;
    public float k;
    public float l;
    public short m;

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zza(boolean z) {
        this.j = true;
        this.m = (short) (this.m | 512);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzb(float f) {
        this.g = 0.8f;
        this.m = (short) (this.m | 64);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzc(float f) {
        this.f = 0.5f;
        this.m = (short) (this.m | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzd(float f) {
        this.d = 0.8f;
        this.m = (short) (this.m | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zze(int i) {
        this.b = 5;
        this.m = (short) (this.m | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzf(float f) {
        this.c = 0.25f;
        this.m = (short) (this.m | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzh(long j) {
        this.i = 3000L;
        this.m = (short) (this.m | 256);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzi(boolean z) {
        this.e = z;
        this.m = (short) (this.m | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzj(float f) {
        this.k = 0.1f;
        this.m = (short) (this.m | SilenceSkippingAudioProcessor.DEFAULT_SILENCE_THRESHOLD_LEVEL);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzk(long j) {
        this.h = 1500L;
        this.m = (short) (this.m | 128);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxl zzl(float f) {
        this.l = 0.05f;
        this.m = (short) (this.m | 2048);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxl
    public final zzxm zzm() {
        if (this.m == 4095) {
            return new ghc(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.m & 1) == 0) {
            sb.append(" recentFramesToCheck");
        }
        if ((this.m & 2) == 0) {
            sb.append(" recentFramesContainingPredictedArea");
        }
        if ((this.m & 4) == 0) {
            sb.append(" recentFramesIou");
        }
        if ((this.m & 8) == 0) {
            sb.append(" maxCoverage");
        }
        if ((this.m & 16) == 0) {
            sb.append(" useConfidenceScore");
        }
        if ((this.m & 32) == 0) {
            sb.append(" lowerConfidenceScore");
        }
        if ((this.m & 64) == 0) {
            sb.append(" higherConfidenceScore");
        }
        if ((this.m & 128) == 0) {
            sb.append(" zoomIntervalInMillis");
        }
        if ((this.m & 256) == 0) {
            sb.append(" resetIntervalInMillis");
        }
        if ((this.m & 512) == 0) {
            sb.append(" enableZoomThreshold");
        }
        if ((this.m & SilenceSkippingAudioProcessor.DEFAULT_SILENCE_THRESHOLD_LEVEL) == 0) {
            sb.append(" zoomInThreshold");
        }
        if ((this.m & 2048) == 0) {
            sb.append(" zoomOutThreshold");
        }
        ah.f("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
