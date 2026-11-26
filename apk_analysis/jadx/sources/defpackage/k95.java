package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.webkit.ProxyConfig;
import com.google.common.collect.i;
import com.google.common.collect.j;
import com.google.common.collect.k;
import com.google.common.collect.l;
import com.google.common.collect.q;
import com.google.common.collect.r;
import com.google.common.collect.w;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.BuildConfig;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class k95 {
    public static final k<String, String> f;
    public static final y91.a g;
    public static final HashMap h;
    public static final k95 i;
    public static final wb4.a j;
    public final String a;
    public final String b;
    public final k<String, String> c;
    public String d;
    public int e;

    static {
        k<String, String> kVar;
        String strI = go2.i(StandardCharsets.UTF_8.name());
        cn1.a("charset", strI);
        ip1 ip1VarA = ip1.a();
        i.b bVarM = (i.b) ip1VarA.get("charset");
        if (bVarM == null) {
            bVarM = j.m(4);
            ip1VarA.put("charset", bVarM);
        }
        bVarM.a(strI);
        Collection collectionEntrySet = ip1VarA.entrySet();
        if (((AbstractCollection) collectionEntrySet).isEmpty()) {
            kVar = ix2.i;
        } else {
            ip1.a<Map.Entry> aVar = (ip1.a) collectionEntrySet;
            l.a aVar2 = new l.a(ip1.this.size());
            int i2 = 0;
            for (Map.Entry entry : aVar) {
                Object key = entry.getKey();
                w wVarG = ((j.a) entry.getValue()).g();
                aVar2.b(key, wVarG);
                i2 += wVarG.e;
            }
            kVar = new k<>(aVar2.a(true), i2);
        }
        f = kVar;
        y91.d dVar = y91.d.c;
        y91.i iVar = y91.i.c;
        iVar.getClass();
        y91.l lVar = new y91.l(iVar);
        dVar.getClass();
        g = new y91.a(new y91.a(new y91.a(dVar, lVar), new y91.h(' ')), y91.a("()<>@,;:\\\"/[]?=").d());
        new y91.a(dVar, y91.a("\"\\\r").d());
        y91.a(" \t\r\n");
        h = new HashMap();
        a(ProxyConfig.MATCH_ALL_SCHEMES, ProxyConfig.MATCH_ALL_SCHEMES);
        a("text", ProxyConfig.MATCH_ALL_SCHEMES);
        a("image", ProxyConfig.MATCH_ALL_SCHEMES);
        a(MimeTypes.BASE_TYPE_AUDIO, ProxyConfig.MATCH_ALL_SCHEMES);
        a(MimeTypes.BASE_TYPE_VIDEO, ProxyConfig.MATCH_ALL_SCHEMES);
        a(MimeTypes.BASE_TYPE_APPLICATION, ProxyConfig.MATCH_ALL_SCHEMES);
        a("font", ProxyConfig.MATCH_ALL_SCHEMES);
        b("text", "cache-manifest");
        b("text", "css");
        b("text", "csv");
        b("text", TJAdUnitConstants.String.HTML);
        b("text", "calendar");
        b("text", "markdown");
        b("text", "plain");
        b("text", "javascript");
        b("text", "tab-separated-values");
        b("text", "vcard");
        b("text", "vnd.wap.wml");
        b("text", "xml");
        b("text", "vtt");
        a("image", "bmp");
        a("image", "x-canon-crw");
        a("image", "gif");
        a("image", "vnd.microsoft.icon");
        a("image", "jpeg");
        a("image", "png");
        a("image", "vnd.adobe.photoshop");
        b("image", "svg+xml");
        a("image", "tiff");
        a("image", "avif");
        a("image", "webp");
        a("image", "heif");
        a("image", "jp2");
        a(MimeTypes.BASE_TYPE_AUDIO, "mp4");
        a(MimeTypes.BASE_TYPE_AUDIO, "mpeg");
        a(MimeTypes.BASE_TYPE_AUDIO, "ogg");
        a(MimeTypes.BASE_TYPE_AUDIO, "webm");
        a(MimeTypes.BASE_TYPE_AUDIO, "l16");
        a(MimeTypes.BASE_TYPE_AUDIO, "l24");
        a(MimeTypes.BASE_TYPE_AUDIO, "basic");
        a(MimeTypes.BASE_TYPE_AUDIO, "aac");
        a(MimeTypes.BASE_TYPE_AUDIO, "vorbis");
        a(MimeTypes.BASE_TYPE_AUDIO, "x-ms-wma");
        a(MimeTypes.BASE_TYPE_AUDIO, "x-ms-wax");
        a(MimeTypes.BASE_TYPE_AUDIO, "vnd.rn-realaudio");
        a(MimeTypes.BASE_TYPE_AUDIO, "vnd.wave");
        a(MimeTypes.BASE_TYPE_VIDEO, "mp4");
        a(MimeTypes.BASE_TYPE_VIDEO, "mpeg");
        a(MimeTypes.BASE_TYPE_VIDEO, "ogg");
        a(MimeTypes.BASE_TYPE_VIDEO, "quicktime");
        a(MimeTypes.BASE_TYPE_VIDEO, "webm");
        a(MimeTypes.BASE_TYPE_VIDEO, "x-ms-wmv");
        a(MimeTypes.BASE_TYPE_VIDEO, "x-flv");
        a(MimeTypes.BASE_TYPE_VIDEO, "3gpp");
        a(MimeTypes.BASE_TYPE_VIDEO, "3gpp2");
        b(MimeTypes.BASE_TYPE_APPLICATION, "xml");
        b(MimeTypes.BASE_TYPE_APPLICATION, "atom+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-bzip2");
        b(MimeTypes.BASE_TYPE_APPLICATION, "dart");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.apple.pkpass");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-fontobject");
        a(MimeTypes.BASE_TYPE_APPLICATION, "epub+zip");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-www-form-urlencoded");
        a(MimeTypes.BASE_TYPE_APPLICATION, "pkcs12");
        a(MimeTypes.BASE_TYPE_APPLICATION, BuildConfig.SDK_DEPENDENCY);
        a(MimeTypes.BASE_TYPE_APPLICATION, "cbor");
        a(MimeTypes.BASE_TYPE_APPLICATION, "geo+json");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-gzip");
        a(MimeTypes.BASE_TYPE_APPLICATION, "hal+json");
        b(MimeTypes.BASE_TYPE_APPLICATION, "javascript");
        a(MimeTypes.BASE_TYPE_APPLICATION, "jose");
        a(MimeTypes.BASE_TYPE_APPLICATION, "jose+json");
        i = b(MimeTypes.BASE_TYPE_APPLICATION, "json");
        a(MimeTypes.BASE_TYPE_APPLICATION, "jwt");
        b(MimeTypes.BASE_TYPE_APPLICATION, "manifest+json");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.google-earth.kml+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.google-earth.kmz");
        a(MimeTypes.BASE_TYPE_APPLICATION, "mbox");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-apple-aspen-config");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-excel");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-outlook");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.ms-powerpoint");
        a(MimeTypes.BASE_TYPE_APPLICATION, "msword");
        a(MimeTypes.BASE_TYPE_APPLICATION, "dash+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "wasm");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-nacl");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-pnacl");
        a(MimeTypes.BASE_TYPE_APPLICATION, "octet-stream");
        a(MimeTypes.BASE_TYPE_APPLICATION, "ogg");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.wordprocessingml.document");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.presentationml.presentation");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.graphics");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.presentation");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.spreadsheet");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.oasis.opendocument.text");
        b(MimeTypes.BASE_TYPE_APPLICATION, "opensearchdescription+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "pdf");
        a(MimeTypes.BASE_TYPE_APPLICATION, "postscript");
        a(MimeTypes.BASE_TYPE_APPLICATION, "protobuf");
        b(MimeTypes.BASE_TYPE_APPLICATION, "rdf+xml");
        b(MimeTypes.BASE_TYPE_APPLICATION, "rtf");
        a(MimeTypes.BASE_TYPE_APPLICATION, "font-sfnt");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-shockwave-flash");
        a(MimeTypes.BASE_TYPE_APPLICATION, "vnd.sketchup.skp");
        b(MimeTypes.BASE_TYPE_APPLICATION, "soap+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "x-tar");
        a(MimeTypes.BASE_TYPE_APPLICATION, "font-woff");
        a(MimeTypes.BASE_TYPE_APPLICATION, "font-woff2");
        b(MimeTypes.BASE_TYPE_APPLICATION, "xhtml+xml");
        b(MimeTypes.BASE_TYPE_APPLICATION, "xrd+xml");
        a(MimeTypes.BASE_TYPE_APPLICATION, "zip");
        a("font", "collection");
        a("font", "otf");
        a("font", "sfnt");
        a("font", "ttf");
        a("font", "woff");
        a("font", "woff2");
        j = new wb4.a(new wb4("; "));
    }

    public k95(String str, String str2, k<String, String> kVar) {
        this.a = str;
        this.b = str2;
        this.c = kVar;
    }

    public static void a(String str, String str2) {
        k95 k95Var = new k95(str, str2, ix2.i);
        h.put(k95Var, k95Var);
        l<Object> lVar = l.b;
    }

    public static k95 b(String str, String str2) {
        k95 k95Var = new k95(str, str2, f);
        h.put(k95Var, k95Var);
        Charset charset = StandardCharsets.UTF_8;
        charset.getClass();
        new nf6(charset);
        return k95Var;
    }

    public final q.e c() {
        return new q.e(this.c.b(), new mc3(new i95(0)));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k95)) {
            return false;
        }
        k95 k95Var = (k95) obj;
        return this.a.equals(k95Var.a) && this.b.equals(k95Var.b) && c().equals(k95Var.c());
    }

    public final int hashCode() {
        int i2 = this.e;
        if (i2 != 0) {
            return i2;
        }
        int iHash = Objects.hash(this.a, this.b, c());
        this.e = iHash;
        return iHash;
    }

    public final String toString() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('/');
        sb.append(this.b);
        k<String, String> kVar = this.c;
        if (!kVar.isEmpty()) {
            sb.append("; ");
            Iterable iterableA = new r(kVar, new ia5(new h95())).a();
            wb4.a aVar = j;
            aVar.getClass();
            try {
                aVar.a(sb, iterableA.iterator());
            } catch (IOException e) {
                xg.d(e);
                return null;
            }
        }
        String string = sb.toString();
        this.d = string;
        return string;
    }
}
