package defpackage;

import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.text.TextOutput;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FcmBroadcastProcessor;
import java.util.List;
import yads.az1;
import yads.l66;
import yads.lv5;
import yads.st3;
import yads.vg2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class mi2 implements TextOutput, Continuation, l66, lv5, st3 {
    public static /* synthetic */ void b() {
        throw new IllegalArgumentException();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return az1.c(((Long) obj).longValue());
    }

    @Override // androidx.media3.exoplayer.text.TextOutput
    public void onCues(CueGroup cueGroup) {
        DefaultRendererCapabilitiesList.Factory.lambda$createRendererCapabilitiesList$0(cueGroup);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return FcmBroadcastProcessor.lambda$startMessagingService$1(task);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return vg2.a(list);
    }
}
