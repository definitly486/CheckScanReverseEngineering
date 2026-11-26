package defpackage;

import android.os.Bundle;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import com.google.android.gms.internal.mlkit_vision_common.zzae;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.google.firebase.inappmessaging.internal.InstallationIdResult;
import java.util.List;
import yads.gr0;
import yads.jv;
import yads.kv;
import yads.l16;
import yads.l66;
import yads.st3;
import yads.tz1;
import yads.zg1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g7 implements ze6, MediaCodecSelector, l66, jv, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ g7(int i) {
        this.b = i;
    }

    public static FieldDescriptor.Builder b(int i, FieldDescriptor.Builder builder, String str) {
        zzae zzaeVar = new zzae();
        zzaeVar.zza(i);
        builder.withProperty(zzaeVar.zzb()).build();
        return FieldDescriptor.builder(str);
    }

    public static /* synthetic */ void c(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4 + obj5).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 4:
                return gr0.c(l.longValue());
            default:
                return zg1.c(l.longValue());
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
    public List getDecoderInfos(String str, boolean z, boolean z2) {
        return MediaCodecUtil.getDecoderInfos(str, z, z2);
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return InAppMessageStreamManager.validIID((InstallationIdResult) obj);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return l16.a(bundle);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return tz1.a(list);
    }
}
