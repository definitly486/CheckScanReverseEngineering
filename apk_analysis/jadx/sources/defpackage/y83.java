package defpackage;

import android.os.Bundle;
import androidx.compose.runtime.snapshots.SnapshotStateMapKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import com.google.android.gms.internal.mlkit_vision_common.zzae;
import com.google.firebase.encoders.FieldDescriptor;
import java.util.List;
import kotlin.KotlinNothingValueException;
import yads.gr0;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.z5;
import yads.zg1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y83 implements MediaCodecSelector, l66, jv {
    public final /* synthetic */ int b;

    public /* synthetic */ y83(int i) {
        this.b = i;
    }

    public static float b(float f, float f2, float f3, float f4) {
        return ((f * f2) + f3) * f4;
    }

    public static long c(Placeable.PlacementScope placementScope, Placeable placeable, Placeable placeable2, long j) {
        placementScope.handleMotionFrameOfReferencePlacement(placeable);
        return IntOffset.m9174plusqkQi6aY(j, placeable2.apparentToRealOffset);
    }

    public static KotlinNothingValueException d() {
        SnapshotStateMapKt.unsupported();
        return new KotlinNothingValueException();
    }

    public static void e(int i, FieldDescriptor.Builder builder) {
        zzae zzaeVar = new zzae();
        zzaeVar.zza(i);
        builder.withProperty(zzaeVar.zzb()).build();
    }

    public static /* synthetic */ void f(int i, String str, Object obj, Object obj2) {
        throw new IllegalArgumentException(str + i + obj + obj2);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 5:
                return gr0.d(l.longValue());
            default:
                return zg1.d(l.longValue());
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
    public List getDecoderInfos(String str, boolean z, boolean z2) {
        return MediaCodecSelector.lambda$static$0(str, z, z2);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return z5.a(bundle);
    }
}
