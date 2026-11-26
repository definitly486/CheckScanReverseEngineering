package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;

/* JADX INFO: loaded from: classes5.dex */
public final class im8 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Integer numO;
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        if (queryParameter == null || (numO = qa8.o(10, queryParameter)) == null) {
            return null;
        }
        return new Deeplink.Desktop.Tasks(new TasksReason.CheckboxStepsTaskDetails(numO.intValue()));
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "task-checkboxsteps";
    }
}
