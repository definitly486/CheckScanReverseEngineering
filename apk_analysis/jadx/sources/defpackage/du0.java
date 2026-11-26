package defpackage;

import android.util.Base64;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.audio.BufferedAudioStream;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.my.target.t0;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class du0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ du0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((BufferedAudioStream) obj).lambda$stop$1();
                break;
            case 1:
                ((AudioStream.AudioStreamCallback) obj).onSilenceStateChanged(true);
                break;
            default:
                t0 t0Var = (t0) obj;
                JSONObject jSONObject = new JSONObject();
                try {
                    for (Map.Entry entry : t0Var.a.entrySet()) {
                        jSONObject.put((String) entry.getKey(), entry.getValue());
                    }
                    JSONArray jSONArray = new JSONArray();
                    jSONObject.put("events", jSONArray);
                    for (Map.Entry entry2 : t0Var.b.entrySet()) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, entry2.getKey());
                        jSONObject2.put("value", entry2.getValue());
                        jSONArray.put(jSONObject2);
                        break;
                    }
                } catch (Throwable unused) {
                }
                String string = jSONObject.toString();
                y14.r(null, "MetricMessage: Send metrics message - \n " + string);
                new h8a().U("https://sdk.mail.ru/sdk/ms/", Base64.encodeToString(string.getBytes(StandardCharsets.UTF_8), 0), null);
                break;
        }
    }
}
