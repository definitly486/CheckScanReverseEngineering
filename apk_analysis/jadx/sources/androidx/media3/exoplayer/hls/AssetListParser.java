package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
final class AssetListParser implements ParsingLoadable.Parser<HlsInterstitialsAdsLoader.AssetList> {
    private static final String ASSET_LIST_JSON_NAME_ASSET_ARRAY = "ASSETS";
    private static final String ASSET_LIST_JSON_NAME_DURATION = "DURATION";
    private static final String ASSET_LIST_JSON_NAME_LABEL_ID = "LABEL-ID";
    private static final String ASSET_LIST_JSON_NAME_OFFSET = "OFFSET";
    private static final String ASSET_LIST_JSON_NAME_SKIP_CONTROL = "SKIP-CONTROL";
    private static final String ASSET_LIST_JSON_NAME_URI = "URI";

    private static void parseAssetArray(JsonReader jsonReader, com.google.common.collect.j.a<HlsInterstitialsAdsLoader.Asset> aVar) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                parseAssetObject(jsonReader, aVar);
            }
        }
        jsonReader.endArray();
    }

    private static void parseAssetObject(JsonReader jsonReader, com.google.common.collect.j.a<HlsInterstitialsAdsLoader.Asset> aVar) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        long jNextDouble = -9223372036854775807L;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(ASSET_LIST_JSON_NAME_URI) && jsonReader.peek() == JsonToken.STRING) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals(ASSET_LIST_JSON_NAME_DURATION) && jsonReader.peek() == JsonToken.NUMBER) {
                jNextDouble = (long) (jsonReader.nextDouble() * 1000000.0d);
            } else {
                jsonReader.skipValue();
            }
        }
        if (strNextString != null && jNextDouble != C.TIME_UNSET) {
            aVar.c(new HlsInterstitialsAdsLoader.Asset(Uri.parse(strNextString), jNextDouble));
        }
        jsonReader.endObject();
    }

    private static AdPlaybackState.SkipInfo parseSkipInfo(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        long jNextDouble = -9223372036854775807L;
        long jNextDouble2 = -9223372036854775807L;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(ASSET_LIST_JSON_NAME_OFFSET) && jsonReader.peek() == JsonToken.NUMBER) {
                jNextDouble = (long) (jsonReader.nextDouble() * 1000000.0d);
            } else if (strNextName.equals(ASSET_LIST_JSON_NAME_DURATION) && jsonReader.peek() == JsonToken.NUMBER) {
                jNextDouble2 = (long) (jsonReader.nextDouble() * 1000000.0d);
            } else if (strNextName.equals(ASSET_LIST_JSON_NAME_LABEL_ID) && jsonReader.peek() == JsonToken.STRING) {
                strNextString = jsonReader.nextString();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (jNextDouble == C.TIME_UNSET && jNextDouble2 == C.TIME_UNSET && strNextString == null) {
            return null;
        }
        return new AdPlaybackState.SkipInfo(jNextDouble, jNextDouble2, strNextString);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public HlsInterstitialsAdsLoader.AssetList parse(Uri uri, InputStream inputStream) throws IOException {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream));
        try {
            if (jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                HlsInterstitialsAdsLoader.AssetList assetList = HlsInterstitialsAdsLoader.AssetList.EMPTY;
                jsonReader.close();
                return assetList;
            }
            com.google.common.collect.j.a aVar = new com.google.common.collect.j.a();
            com.google.common.collect.j.a aVar2 = new com.google.common.collect.j.a();
            jsonReader.beginObject();
            AdPlaybackState.SkipInfo skipInfo = null;
            while (jsonReader.hasNext()) {
                if (jsonReader.peek().equals(JsonToken.NAME)) {
                    String strNextName = jsonReader.nextName();
                    if (strNextName.equals(ASSET_LIST_JSON_NAME_ASSET_ARRAY) && jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                        parseAssetArray(jsonReader, aVar);
                    } else if (strNextName.equals(ASSET_LIST_JSON_NAME_SKIP_CONTROL) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                        skipInfo = parseSkipInfo(jsonReader);
                    } else if (jsonReader.peek() == JsonToken.STRING) {
                        aVar2.c(new HlsInterstitialsAdsLoader.StringAttribute(strNextName, jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            HlsInterstitialsAdsLoader.AssetList assetList2 = new HlsInterstitialsAdsLoader.AssetList(aVar.g(), aVar2.g(), skipInfo);
            jsonReader.close();
            return assetList2;
        } catch (Throwable th) {
            try {
                jsonReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
