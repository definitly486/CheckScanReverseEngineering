package yads;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.kx6;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ad3 {
    public final v46 a;
    public final ao5 b;

    public ad3() {
        v46 v46Var = new v46();
        ao5 ao5Var = new ao5();
        this.a = v46Var;
        this.b = ao5Var;
    }

    public final rd3 a(JSONObject jSONObject) throws JSONException, rg4 {
        zn5 zn5Var;
        pn pnVar;
        ArrayList arrayList;
        String str = "w";
        int i = jSONObject.getInt("w");
        int i2 = jSONObject.getInt(CmcdData.STREAMING_FORMAT_HLS);
        this.a.getClass();
        String strA = v46.a("url", jSONObject);
        if (jSONObject.has("smartCenterSettings")) {
            ao5 ao5Var = this.b;
            JSONObject jSONObject2 = jSONObject.getJSONObject("smartCenterSettings");
            ao5Var.getClass();
            Object objOpt = jSONObject2.opt("ColorWizButton");
            String str2 = objOpt instanceof String ? (String) objOpt : null;
            Object objOpt2 = jSONObject2.opt("ColorWizButtonText");
            String str3 = objOpt2 instanceof String ? (String) objOpt2 : null;
            Object objOpt3 = jSONObject2.opt("ColorWizBack");
            String str4 = objOpt3 instanceof String ? (String) objOpt3 : null;
            Object objOpt4 = jSONObject2.opt("ColorWizBackRight");
            String str5 = objOpt4 instanceof String ? (String) objOpt4 : null;
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("backgroundColors");
            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("smart-center");
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("smart-centers");
            rn5 rn5Var = jSONObjectOptJSONObject2 != null ? new rn5(jSONObjectOptJSONObject2.getInt("x"), jSONObjectOptJSONObject2.getInt("y"), jSONObjectOptJSONObject2.getInt("w"), jSONObjectOptJSONObject2.getInt(CmcdData.STREAMING_FORMAT_HLS)) : null;
            if (jSONObjectOptJSONObject != null) {
                Object objOpt5 = jSONObjectOptJSONObject.opt("top");
                String str6 = objOpt5 instanceof String ? (String) objOpt5 : null;
                Object objOpt6 = jSONObjectOptJSONObject.opt(TtmlNode.RIGHT);
                String str7 = objOpt6 instanceof String ? (String) objOpt6 : null;
                Object objOpt7 = jSONObjectOptJSONObject.opt(TtmlNode.LEFT);
                String str8 = objOpt7 instanceof String ? (String) objOpt7 : null;
                Object objOpt8 = jSONObjectOptJSONObject.opt("bottom");
                pnVar = new pn(str6, str7, str8, objOpt8 instanceof String ? (String) objOpt8 : null);
            } else {
                pnVar = null;
            }
            if (jSONArrayOptJSONArray != null) {
                defpackage.y74 y74VarN = kx6.n(0, jSONArrayOptJSONArray.length());
                ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(y74VarN, 10));
                defpackage.x74 it = y74VarN.iterator();
                while (it.d) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(it.nextInt());
                    arrayList2.add(new rn5(jSONObjectOptJSONObject3.getInt("x"), jSONObjectOptJSONObject3.getInt("y"), jSONObjectOptJSONObject3.getInt(str), jSONObjectOptJSONObject3.getInt(CmcdData.STREAMING_FORMAT_HLS)));
                    it = it;
                    str = str;
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            zn5Var = new zn5(str2, str3, str4, str5, pnVar, rn5Var, arrayList);
        } else {
            i = i;
            i2 = i2;
            strA = strA;
            zn5Var = null;
        }
        String strOptString = jSONObject.optString("sizeType");
        String str9 = strOptString.length() > 0 ? strOptString : null;
        boolean zOptBoolean = jSONObject.optBoolean("preload", true);
        String strOptString2 = jSONObject.optString("preview");
        return new rd3(i, i2, strA, str9, zn5Var, zOptBoolean, strOptString2.length() > 0 ? strOptString2 : null);
    }
}
