package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.paging.LoadState;
import androidx.paging.LoadStateAdapter;
import androidx.paging.LoadType;
import androidx.paging.PagedListAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wy2 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wy2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                gc6 gc6Var = (gc6) obj;
                OutputStream outputStream = (OutputStream) obj2;
                gc6Var.getClass();
                outputStream.getClass();
                wd6 wd6VarB = ((ta6) obj3).b();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(TtmlNode.TAG_BODY, gc6Var.a);
                linkedHashMap.put(FirebaseAnalytics.Param.LEVEL, gc6Var.b.e());
                linkedHashMap.put("timeUnixNano", gc6Var.l);
                linkedHashMap.put("observedTimeUnixNano", gc6Var.m);
                linkedHashMap.put("featureFlagKeys", gc6Var.j);
                Map<String, Object> map = gc6Var.c;
                if (!map.isEmpty()) {
                    linkedHashMap.put("attributes", map);
                }
                String str = gc6Var.d;
                if (str != null) {
                    linkedHashMap.put("traceId", str);
                }
                String str2 = gc6Var.e;
                if (str2 != null) {
                    linkedHashMap.put("spanId", str2);
                }
                Integer num = gc6Var.f;
                if (num != null) {
                    linkedHashMap.put("traceFlags", Integer.valueOf(num.intValue()));
                }
                String str3 = gc6Var.g;
                if (str3 != null) {
                    linkedHashMap.put("distinctId", str3);
                }
                String str4 = gc6Var.h;
                if (str4 != null) {
                    linkedHashMap.put("sessionId", str4);
                }
                String str5 = gc6Var.i;
                if (str5 != null) {
                    linkedHashMap.put("screenName", str5);
                }
                String str6 = gc6Var.k;
                if (str6 != null) {
                    linkedHashMap.put("appState", str6);
                }
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, ha1.b), 8192);
                wd6VarB.a.m(linkedHashMap, new dz2().b, bufferedWriter);
                bufferedWriter.flush();
                return j59.a;
            default:
                return PagedListAdapter.withLoadStateFooter$lambda$0((LoadStateAdapter) obj3, (LoadType) obj, (LoadState) obj2);
        }
    }
}
