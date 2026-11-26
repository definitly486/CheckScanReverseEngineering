package defpackage;

import android.database.Cursor;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.my.target.m1;
import java.util.List;
import yads.l66;
import yads.lb1;
import yads.qj1;
import yads.sd1;
import yads.st3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k2 implements xl3, Id3Decoder.FramePredicate, u97.a, st3, m1.b, l66 {
    public final /* synthetic */ int b;

    public static String b(long j, String str, StringBuilder sb) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 7:
                return qj1.c(((Double) obj).doubleValue());
            default:
                return sd1.a(((Long) obj).longValue());
        }
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        switch (this.b) {
            case 1:
                return InAppMessageStreamManager.lambda$createFirebaseInAppMessageStream$13((m21) obj);
            default:
                return Boolean.valueOf(((Cursor) obj).getCount() > 0);
        }
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
    public boolean evaluate(int i, int i2, int i3, int i4, int i5) {
        return Mp3Extractor.lambda$static$1(i, i2, i3, i4, i5);
    }

    public /* synthetic */ k2(int i) {
        this.b = i;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // yads.st3
    public boolean a(List list) {
        return lb1.a(list);
    }
}
