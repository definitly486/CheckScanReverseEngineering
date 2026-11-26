package defpackage;

import androidx.media3.extractor.metadata.mp4.SlowMotionData;
import java.util.Comparator;
import java.util.List;
import yads.jm0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u38 implements Comparator {
    public final /* synthetic */ int b;

    public /* synthetic */ u38(int i) {
        this.b = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return SlowMotionData.Segment.lambda$static$0((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
            default:
                return jm0.a((List) obj, (List) obj2);
        }
    }
}
