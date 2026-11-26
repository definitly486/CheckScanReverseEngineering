package defpackage;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.iab.omid.library.corpmailru.ScriptInjector;
import com.my.target.e3;
import com.my.tracker.ads.AdFormat;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class in9 {
    public final qw9 a;
    public final lia b;
    public final z2a c;

    public in9(z2a z2aVar, lia liaVar) {
        this.b = liaVar;
        this.c = z2aVar;
        this.a = new qw9(z2aVar, liaVar);
    }

    public static void b(JSONObject jSONObject, ev9 ev9Var) {
        ev9Var.a = y14.b(jSONObject, "ctaButtonColor", ev9Var.a);
        ev9Var.b = y14.b(jSONObject, "ctaButtonTouchColor", ev9Var.b);
        ev9Var.c = y14.b(jSONObject, "ctaButtonTextColor", ev9Var.c);
        ev9Var.d = y14.b(jSONObject, "backgroundColor", ev9Var.d);
        int iB = y14.b(jSONObject, "textColor", ev9Var.e);
        ev9Var.e = iB;
        ev9Var.f = y14.b(jSONObject, "titleTextColor", iB);
        ev9Var.i = y14.b(jSONObject, "domainTextColor", ev9Var.i);
        ev9Var.h = y14.b(jSONObject, "progressBarColor", ev9Var.h);
        ev9Var.g = y14.b(jSONObject, "barColor", ev9Var.g);
        float fOptDouble = (float) jSONObject.optDouble("barOverlayAlpha", ev9Var.j);
        if (0.0f <= fOptDouble && fOptDouble <= 1.0f) {
            ev9Var.j = fOptDouble;
        }
        String strOptString = jSONObject.optString("storeIcon");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        ev9Var.k = new h14(strOptString);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:13:0x007c A[PHI: r9
      0x007c: PHI (r9v7 java.lang.String) = (r9v5 java.lang.String), (r9v64 java.lang.String) binds: [B:11:0x0064, B:5:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:329:0x092f  */
    /* JADX WARN: Code duplicated, block: B:344:0x0978  */
    /* JADX WARN: Code duplicated, block: B:346:0x097f  */
    /* JADX WARN: Code duplicated, block: B:349:0x0986  */
    /* JADX WARN: Code duplicated, block: B:351:0x0994  */
    /* JADX WARN: Code duplicated, block: B:363:0x09f1  */
    /* JADX WARN: Code duplicated, block: B:367:0x0a03  */
    /* JADX WARN: Code duplicated, block: B:370:0x0a34  */
    /* JADX WARN: Code duplicated, block: B:372:0x0a3e  */
    /* JADX WARN: Code duplicated, block: B:373:0x0a45  */
    /* JADX WARN: Code duplicated, block: B:375:0x0a52  */
    /* JADX WARN: Code duplicated, block: B:376:0x0a58  */
    /* JADX WARN: Code duplicated, block: B:378:0x0a62  */
    /* JADX WARN: Code duplicated, block: B:381:0x0a6f  */
    /* JADX WARN: Code duplicated, block: B:384:0x0a7c  */
    /* JADX WARN: Code duplicated, block: B:394:0x0aa2  */
    /* JADX WARN: Code duplicated, block: B:409:0x0b07  */
    /* JADX WARN: Code duplicated, block: B:412:0x0b0c  */
    /* JADX WARN: Code duplicated, block: B:414:0x0b14  */
    /* JADX WARN: Code duplicated, block: B:415:0x0b19  */
    /* JADX WARN: Code duplicated, block: B:418:0x0b1d  */
    /* JADX WARN: Code duplicated, block: B:428:0x0b40  */
    /* JADX WARN: Code duplicated, block: B:432:0x0b4e  */
    /* JADX WARN: Code duplicated, block: B:435:0x0b52  */
    /* JADX WARN: Code duplicated, block: B:438:0x0b5d  */
    /* JADX WARN: Code duplicated, block: B:441:0x0b61  */
    /* JADX WARN: Code duplicated, block: B:443:0x0b67  */
    /* JADX WARN: Code duplicated, block: B:447:0x0b7c  */
    /* JADX WARN: Code duplicated, block: B:449:0x0b86  */
    /* JADX WARN: Code duplicated, block: B:455:0x0b9f  */
    /* JADX WARN: Code duplicated, block: B:457:0x0ba2  */
    /* JADX WARN: Code duplicated, block: B:458:0x0ba9  */
    /* JADX WARN: Code duplicated, block: B:465:0x0bc6  */
    /* JADX WARN: Code duplicated, block: B:468:0x0bd7  */
    /* JADX WARN: Code duplicated, block: B:473:0x0be9  */
    /* JADX WARN: Code duplicated, block: B:527:0x0d42  */
    /* JADX WARN: Code duplicated, block: B:529:0x0d50  */
    /* JADX WARN: Code duplicated, block: B:537:0x0d6e  */
    /* JADX WARN: Code duplicated, block: B:554:0x0df5  */
    /* JADX WARN: Code duplicated, block: B:585:0x0e84  */
    /* JADX WARN: Code duplicated, block: B:602:0x0eba  */
    /* JADX WARN: Code duplicated, block: B:645:0x0aaa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:0x0929 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:672:0x09f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:0x09f6 A[SYNTHETIC] */
    public final jia a(JSONObject jSONObject, String str, j8a j8aVar, yda ydaVar) {
        String strOptString;
        String str2;
        byte b;
        boolean z;
        h14 h14VarA;
        h14 h14VarA2;
        String strInjectScriptContentIntoHtml;
        String string;
        String str3;
        int i;
        String str4;
        JSONObject jSONObject2;
        xda xdaVar;
        String strOptString2;
        JSONObject jSONObjectOptJSONObject;
        String str5;
        JSONArray jSONArrayOptJSONArray;
        int length;
        int i2;
        JSONObject jSONObjectOptJSONObject2;
        g1a g1aVar;
        String strOptString3;
        String strOptString4;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObjectOptJSONObject4;
        JSONObject jSONObjectOptJSONObject5;
        int i3;
        JSONArray jSONArrayOptJSONArray2;
        ks9 ks9VarA;
        JSONArray jSONArray;
        int i4;
        String str6;
        String str7;
        String str8;
        String str9;
        rn9 rn9Var;
        String strOptString5;
        h14 h14VarB;
        String str10;
        JSONObject jSONObjectOptJSONObject6;
        JSONObject jSONObjectOptJSONObject7;
        iw9 iw9Var;
        JSONObject jSONObjectOptJSONObject8;
        h14 h14VarD;
        JSONObject jSONObjectOptJSONObject9;
        JSONObject jSONObjectOptJSONObject10;
        String strOptString6;
        String strOptString7;
        JSONObject jSONObjectOptJSONObject11;
        JSONObject jSONObjectOptJSONObject12;
        String strOptString8;
        sda sdaVar;
        JSONObject jSONObjectOptJSONObject13;
        String str11;
        j6a j6aVar;
        JSONObject jSONObjectOptJSONObject14;
        jia jiaVarA;
        byte b2;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27;
        String str28;
        y8a y8aVar;
        int iOptInt;
        String str29 = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
        String strOptString9 = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "");
        yda ydaVarA = ydaVar.a("<banner>");
        yda ydaVar2 = new yda(ydaVarA.a, ydaVarA.b.concat("[0]"));
        boolean zHas = jSONObject.has("bannerID");
        String str30 = TtmlNode.ATTR_ID;
        if (zHas) {
            strOptString = jSONObject.optString("bannerID");
            if (TextUtils.isEmpty(strOptString)) {
                yda ydaVarA2 = ydaVar2.a("bannerID");
                ydaVarA2.a.a(ydaVarA2.b(""), 0, 0, 3007, null);
                str2 = "<no-banner-id>";
            } else {
                str2 = strOptString;
                str30 = TtmlNode.ATTR_ID;
            }
        } else {
            if (jSONObject.has(TtmlNode.ATTR_ID)) {
                strOptString = jSONObject.optString(TtmlNode.ATTR_ID);
                if (TextUtils.isEmpty(strOptString)) {
                    yda ydaVarA3 = ydaVar2.a(TtmlNode.ATTR_ID);
                    ydaVarA3.a.a(ydaVarA3.b(""), 0, 0, 3007, null);
                } else {
                    str2 = strOptString;
                    str30 = TtmlNode.ATTR_ID;
                }
            } else {
                yda ydaVarA4 = ydaVar2.a("bannerID");
                ydaVarA4.a.a(ydaVarA4.b(""), 0, 0, AuthApiStatusCodes.AUTH_APP_CERT_ERROR, null);
            }
            str2 = "<no-banner-id>";
        }
        String strS = y14.s(jSONObject, "impressionId");
        zm9 zm9Var = new zm9(str2, strS, y14.s(jSONObject, "padId"), y14.s(jSONObject, "patternId"), (!jSONObject.has("dspId") || jSONObject.isNull("dspId") || (iOptInt = jSONObject.optInt("dspId", -1)) == -1) ? null : Integer.valueOf(iOptInt), y14.q(jSONObject));
        if (strS != null) {
            try {
                Long.getLong(strS);
            } catch (Throwable unused) {
            }
        }
        z2a z2aVar = this.c;
        z8a z8aVar = z2aVar.g;
        z8aVar.getClass();
        pp9 pp9Var = new pp9(z8aVar, zm9Var);
        ydaVar.a.getClass();
        strOptString9.getClass();
        String str31 = TJAdUnitConstants.String.HTML;
        String str32 = AdFormat.BANNER;
        switch (strOptString9) {
            case "banner":
                b = 0;
                break;
            case "html":
                b = 1;
                break;
            case "promo":
                b = 2;
                break;
            case "fullscreen":
                b = 3;
                break;
            case "playableAds":
                b = 4;
                break;
            default:
                b = -1;
                break;
        }
        byte b3 = b;
        String str33 = TJAdUnitConstants.String.TITLE;
        String str34 = "";
        String str35 = "automute";
        String str36 = "url";
        String str37 = "adIconClickLink";
        String str38 = "bitrate";
        String str39 = "adIconLink";
        String str40 = "closeDelayActionText";
        String str41 = "closeOnClick";
        String str42 = "closeActionText";
        String str43 = "mediafiles";
        String str44 = TJAdUnitConstants.String.WIDTH;
        String str45 = TJAdUnitConstants.String.HEIGHT;
        String str46 = "src";
        String str47 = "previewHeight";
        String str48 = "statistics";
        String str49 = "previewWidth";
        String str50 = TypedValues.TransitionType.S_DURATION;
        String str51 = "previewLink";
        lia liaVar = this.b;
        switch (b3) {
            case 0:
            case 3:
                vy9 vy9Var = new vy9(pp9Var);
                c(jSONObject, vy9Var);
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(TJAdUnitConstants.String.PORTRAIT);
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(TJAdUnitConstants.String.LANDSCAPE);
                if ((jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) && (jSONArrayOptJSONArray4 == null || jSONArrayOptJSONArray4.length() <= 0)) {
                    j8aVar.a(l6a.p);
                    z = false;
                } else {
                    ArrayList arrayList = vy9Var.X;
                    if (jSONArrayOptJSONArray3 != null) {
                        int length2 = jSONArrayOptJSONArray3.length();
                        for (int i5 = 0; i5 < length2; i5++) {
                            JSONObject jSONObjectOptJSONObject15 = jSONArrayOptJSONArray3.optJSONObject(i5);
                            if (jSONObjectOptJSONObject15 != null) {
                                String strOptString10 = jSONObjectOptJSONObject15.optString("imageLink");
                                if (TextUtils.isEmpty(strOptString10)) {
                                    h14VarA2 = null;
                                } else {
                                    int iOptInt2 = jSONObjectOptJSONObject15.optInt(str44);
                                    int iOptInt3 = jSONObjectOptJSONObject15.optInt(str45);
                                    if (iOptInt2 <= 0 || iOptInt3 <= 0) {
                                        h14VarA2 = null;
                                    } else {
                                        h14VarA2 = h14.a(iOptInt2, iOptInt3, strOptString10);
                                    }
                                }
                                if (h14VarA2 != null) {
                                    arrayList.add(h14VarA2);
                                }
                            }
                        }
                    }
                    ArrayList arrayList2 = vy9Var.Y;
                    if (jSONArrayOptJSONArray4 != null) {
                        int length3 = jSONArrayOptJSONArray4.length();
                        for (int i6 = 0; i6 < length3; i6++) {
                            JSONObject jSONObjectOptJSONObject16 = jSONArrayOptJSONArray4.optJSONObject(i6);
                            if (jSONObjectOptJSONObject16 != null) {
                                String strOptString11 = jSONObjectOptJSONObject16.optString("imageLink");
                                if (TextUtils.isEmpty(strOptString11)) {
                                    h14VarA = null;
                                } else {
                                    int iOptInt4 = jSONObjectOptJSONObject16.optInt(str44);
                                    int iOptInt5 = jSONObjectOptJSONObject16.optInt(str45);
                                    if (iOptInt4 <= 0 || iOptInt5 <= 0) {
                                        h14VarA = null;
                                    } else {
                                        h14VarA = h14.a(iOptInt4, iOptInt5, strOptString11);
                                    }
                                }
                                if (h14VarA != null) {
                                    arrayList2.add(h14VarA);
                                }
                            }
                        }
                    }
                    z = (new ArrayList(arrayList2).isEmpty() && new ArrayList(arrayList).isEmpty()) ? false : true;
                    if (z) {
                        j8aVar.a(l6a.p);
                    }
                }
                if (z) {
                    return vy9Var;
                }
                return null;
            case 1:
                wv9 wv9Var = new wv9(pp9Var);
                c(jSONObject, wv9Var);
                String strA = qw9.a(jSONObject, j8aVar, ks9.d);
                if (TextUtils.isEmpty(strA)) {
                    j8aVar.a(l6a.q);
                    return null;
                }
                if (!TextUtils.isEmpty(str)) {
                    if (TextUtils.isEmpty(str) || TextUtils.isEmpty(strA)) {
                        string = null;
                    } else {
                        StringBuilder sb = new StringBuilder(strA);
                        if (sb.length() > 0) {
                            Matcher matcher = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*(\\\\?[\\\"\\'])mraid\\.js\\1[^>]*>\\s*<\\/script>\\n*", 2).matcher(strA);
                            if (matcher.find()) {
                                int iStart = matcher.start();
                                sb.delete(iStart, matcher.end());
                                sb.insert(iStart, "<script src=\"" + str + "\"></script>");
                                string = sb.toString();
                            } else {
                                string = null;
                            }
                        } else {
                            string = null;
                        }
                    }
                    if (string != null) {
                        wv9Var.A = "mraid";
                        strA = string;
                    }
                }
                if (wv9Var.I != null) {
                    Handler handler = e3.k;
                    if (TextUtils.isEmpty(strA)) {
                        strInjectScriptContentIntoHtml = null;
                    } else {
                        try {
                            strInjectScriptContentIntoHtml = ScriptInjector.injectScriptContentIntoHtml(";(function(omidGlobal) {\n  'use strict';var n;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}function p(a){var b='undefined'!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}function q(a){if(!(a instanceof Array)){a=p(a);for(var b,c=[];!(b=a.next()).done;)c.push(b.value);a=c}return a}var ba='function'==typeof Object.create?Object.create:function(a){function b(){}b.prototype=a;return new b},ca;\nif('function'==typeof Object.setPrototypeOf)ca=Object.setPrototypeOf;else{var da;a:{var ea={S:!0},fa={};try{fa.__proto__=ea;da=fa.S;break a}catch(a){}da=!1}ca=da?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+' is not extensible');return a}:null}var ha=ca;\nfunction r(a,b){a.prototype=ba(b.prototype);a.prototype.constructor=a;if(ha)ha(a,b);else for(var c in b)if('prototype'!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.Ca=b.prototype}var t='undefined'!=typeof window&&window===this?this:'undefined'!=typeof global&&null!=global?global:this;function u(a,b){return Object.prototype.hasOwnProperty.call(a,b)}\nvar ia='function'==typeof Object.assign?Object.assign:function(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(d)for(var e in d)u(d,e)&&(a[e]=d[e])}return a},w='function'==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){a!=Array.prototype&&a!=Object.prototype&&(a[b]=c.value)};\nfunction y(a,b){if(b){var c=t;a=a.split('.');for(var d=0;d<a.length-1;d++){var e=a[d];e in c||(c[e]={});c=c[e]}a=a[a.length-1];d=c[a];b=b(d);b!=d&&null!=b&&w(c,a,{configurable:!0,writable:!0,value:b})}}y('Object.assign',function(a){return a||ia});function ja(){ja=function(){};t.Symbol||(t.Symbol=ka)}function la(a,b){this.a=a;w(this,'description',{configurable:!0,writable:!0,value:b})}la.prototype.toString=function(){return this.a};\nvar ka=function(){function a(c){if(this instanceof a)throw new TypeError('Symbol is not a constructor');return new la('jscomp_symbol_'+(c||'')+'_'+b++,c)}var b=0;return a}();function ma(){ja();var a=t.Symbol.iterator;a||(a=t.Symbol.iterator=t.Symbol('Symbol.iterator'));'function'!=typeof Array.prototype[a]&&w(Array.prototype,a,{configurable:!0,writable:!0,value:function(){return na(aa(this))}});ma=function(){}}function na(a){ma();a={next:a};a[t.Symbol.iterator]=function(){return this};return a}\ny('WeakMap',function(a){function b(g){this.a=(l+=Math.random()+1).toString();if(g){g=p(g);for(var h;!(h=g.next()).done;)h=h.value,this.set(h[0],h[1])}}function c(){}function d(g){if(!u(g,f)){var h=new c;w(g,f,{value:h})}}function e(g){var h=Object[g];h&&(Object[g]=function(k){if(k instanceof c)return k;d(k);return h(k)})}if(function(){if(!a||!Object.seal)return!1;try{var g=Object.seal({}),h=Object.seal({}),k=new a([[g,2],[h,3]]);if(2!=k.get(g)||3!=k.get(h))return!1;k.delete(g);k.set(h,4);return!k.has(g)&&\n4==k.get(h)}catch(m){return!1}}())return a;var f='$jscomp_hidden_'+Math.random();e('freeze');e('preventExtensions');e('seal');var l=0;b.prototype.set=function(g,h){d(g);if(!u(g,f))throw Error('WeakMap key fail: '+g);g[f][this.a]=h;return this};b.prototype.get=function(g){return u(g,f)?g[f][this.a]:void 0};b.prototype.has=function(g){return u(g,f)&&u(g[f],this.a)};b.prototype.delete=function(g){return u(g,f)&&u(g[f],this.a)?delete g[f][this.a]:!1};return b});\ny('Map',function(a){function b(){var g={};return g.A=g.next=g.head=g}function c(g,h){var k=g.a;return na(function(){if(k){for(;k.head!=g.a;)k=k.A;for(;k.next!=k.head;)return k=k.next,{done:!1,value:h(k)};k=null}return{done:!0,value:void 0}})}function d(g,h){var k=h&&typeof h;'object'==k||'function'==k?f.has(h)?k=f.get(h):(k=''+ ++l,f.set(h,k)):k='p_'+h;var m=g.b[k];if(m&&u(g.b,k))for(g=0;g<m.length;g++){var v=m[g];if(h!==h&&v.key!==v.key||h===v.key)return{id:k,list:m,index:g,s:v}}return{id:k,list:m,\nindex:-1,s:void 0}}function e(g){this.b={};this.a=b();this.size=0;if(g){g=p(g);for(var h;!(h=g.next()).done;)h=h.value,this.set(h[0],h[1])}}if(function(){if(!a||'function'!=typeof a||!a.prototype.entries||'function'!=typeof Object.seal)return!1;try{var g=Object.seal({x:4}),h=new a(p([[g,'s']]));if('s'!=h.get(g)||1!=h.size||h.get({x:4})||h.set({x:4},'t')!=h||2!=h.size)return!1;var k=h.entries(),m=k.next();if(m.done||m.value[0]!=g||'s'!=m.value[1])return!1;m=k.next();return m.done||4!=m.value[0].x||\n't'!=m.value[1]||!k.next().done?!1:!0}catch(v){return!1}}())return a;ma();var f=new WeakMap;e.prototype.set=function(g,h){g=0===g?0:g;var k=d(this,g);k.list||(k.list=this.b[k.id]=[]);k.s?k.s.value=h:(k.s={next:this.a,A:this.a.A,head:this.a,key:g,value:h},k.list.push(k.s),this.a.A.next=k.s,this.a.A=k.s,this.size++);return this};e.prototype.delete=function(g){g=d(this,g);return g.s&&g.list?(g.list.splice(g.index,1),g.list.length||delete this.b[g.id],g.s.A.next=g.s.next,g.s.next.A=g.s.A,g.s.head=null,\nthis.size--,!0):!1};e.prototype.clear=function(){this.b={};this.a=this.a.A=b();this.size=0};e.prototype.has=function(g){return!!d(this,g).s};e.prototype.get=function(g){return(g=d(this,g).s)&&g.value};e.prototype.entries=function(){return c(this,function(g){return[g.key,g.value]})};e.prototype.keys=function(){return c(this,function(g){return g.key})};e.prototype.values=function(){return c(this,function(g){return g.value})};e.prototype.forEach=function(g,h){for(var k=this.entries(),m;!(m=k.next()).done;)m=\nm.value,g.call(h,m[1],m[0],this)};e.prototype[Symbol.iterator]=e.prototype.entries;var l=0;return e});y('Object.values',function(a){return a?a:function(b){var c=[],d;for(d in b)u(b,d)&&c.push(b[d]);return c}});\ny('Set',function(a){function b(c){this.a=new Map;if(c){c=p(c);for(var d;!(d=c.next()).done;)this.add(d.value)}this.size=this.a.size}if(function(){if(!a||'function'!=typeof a||!a.prototype.entries||'function'!=typeof Object.seal)return!1;try{var c=Object.seal({x:4}),d=new a(p([c]));if(!d.has(c)||1!=d.size||d.add(c)!=d||1!=d.size||d.add({x:4})!=d||2!=d.size)return!1;var e=d.entries(),f=e.next();if(f.done||f.value[0]!=c||f.value[1]!=c)return!1;f=e.next();return f.done||f.value[0]==c||4!=f.value[0].x||\nf.value[1]!=f.value[0]?!1:e.next().done}catch(l){return!1}}())return a;ma();b.prototype.add=function(c){c=0===c?0:c;this.a.set(c,c);this.size=this.a.size;return this};b.prototype.delete=function(c){c=this.a.delete(c);this.size=this.a.size;return c};b.prototype.clear=function(){this.a.clear();this.size=0};b.prototype.has=function(c){return this.a.has(c)};b.prototype.entries=function(){return this.a.entries()};b.prototype.values=function(){return this.a.values()};b.prototype.keys=b.prototype.values;\nb.prototype[Symbol.iterator]=b.prototype.values;b.prototype.forEach=function(c,d){var e=this;this.a.forEach(function(f){return c.call(d,f,f,e)})};return b});y('Object.is',function(a){return a?a:function(b,c){return b===c?0!==b||1/b===1/c:b!==b&&c!==c}});y('Array.prototype.includes',function(a){return a?a:function(b,c){var d=this;d instanceof String&&(d=String(d));var e=d.length;c=c||0;for(0>c&&(c=Math.max(c+e,0));c<e;c++){var f=d[c];if(f===b||Object.is(f,b))return!0}return!1}});\ny('Object.entries',function(a){return a?a:function(b){var c=[],d;for(d in b)u(b,d)&&c.push([d,b[d]]);return c}});\nvar z={qa:'loaded',xa:'start',ka:'firstQuartile',sa:'midpoint',ya:'thirdQuartile',ia:'complete',ta:'pause',va:'resume',ha:'bufferStart',ga:'bufferFinish',wa:'skipped',Aa:'volumeChange',ua:'playerStateChange',da:'adUserInteraction'},oa={na:'generic',za:'video',ra:'media'},qa={R:'native',oa:'html',P:'javascript'},ra={R:'native',P:'javascript',NONE:'none'},sa={ma:'full',ja:'domain',pa:'limited'},ta={fa:'backgrounded',la:'foregrounded'},ua={ea:'app',Ba:'web'};function A(a,b){this.x=null!=a.x?a.x:a.left;this.y=null!=a.y?a.y:a.top;this.width=a.width;this.height=a.height;this.endX=this.x+this.width;this.endY=this.y+this.height;this.adSessionId=a.adSessionId||void 0;this.isFriendlyObstructionFor=a.isFriendlyObstructionFor||[];this.b=a.friendlyObstructionClass||void 0;this.c=a.friendlyObstructionPurpose||void 0;this.f=a.friendlyObstructionReason||void 0;this.clipsToBounds=void 0!==a.clipsToBounds?!0===a.clipsToBounds:!0;this.notVisibleReason=a.notVisibleReason||\nvoid 0;this.childViews=a.childViews||[];this.isCreative=a.isCreative||!1;this.a=b}function va(a){var b={};return b.width=a.width,b.height=a.height,b}function C(a){var b={};return Object.assign({},va(a),(b.x=a.x,b.y=a.y,b))}function wa(a){var b=C(a),c={};return Object.assign({},b,(c.endX=a.endX,c.endY=a.endY,c))}function xa(a,b,c){a.x+=b;a.y+=c;a.endX+=b;a.endY+=c}\nA.prototype.J=function(a){if(null==a)return!1;a=C(a);var b=a.y,c=a.width,d=a.height;return this.x===a.x&&this.y===b&&this.width===c&&this.height===d};function ya(a){return a.width*a.height};function za(a,b){a=C(a);for(var c=[],d=[],e=0;e<b.length;e++){var f=C(b[e]);f=Aa(a,f);Ba(c,f.x);Ba(c,f.endX);Ba(d,f.y);Ba(d,f.endY)}c=c.sort(function(l,g){return l-g});d=d.sort(function(l,g){return l-g});return{ba:c,ca:d}}function Aa(a,b){return{x:Math.max(a.x,b.x),y:Math.max(a.y,b.y),endX:Math.min(a.x+a.width,b.x+b.width),endY:Math.min(a.y+a.height,b.y+b.height)}}function Ba(a,b){-1===a.indexOf(b)&&a.push(b)};function Ca(){this.b=this.a=this.v=this.l=this.g=this.j=void 0;this.m=0;this.h=[];this.o=[];this.u=0;this.i=[];this.c=[];this.f=[]}Ca.prototype.J=function(a){return null==a?!1:JSON.stringify(Da(this))===JSON.stringify(Da(a))};\nfunction Da(a){var b=[],c=[],d={viewport:a.j,adView:{percentageInView:a.m,reasons:a.f},declaredFriendlyObstructions:a.h.length};if(void 0!==a.a){d.adView.geometry=C(a.a);d.adView.geometry.pixels=ya(a.a);d.adView.onScreenGeometry=C(a.b);d.adView.onScreenGeometry.pixels=a.u;for(var e=0;e<a.c.length;e++)b.push(C(a.c[e]));for(e=0;e<a.o.length;e++){var f=a.o[e],l=f,g={};l.b&&(g.obstructionClass=l.b);l.c&&(g.obstructionPurpose=l.c);l.f&&(g.obstructionReason=l.f);f=Aa(a.a,f);c.push(Object.assign({},{x:f.x,\ny:f.y,width:f.endX-f.x,height:f.endY-f.y},g))}d.adView.onScreenGeometry.obstructions=b;d.adView.onScreenGeometry.friendlyObstructions=c;void 0!==a.l&&void 0!==a.v&&(d.adView.containerGeometry=C(a.l),d.adView.onScreenContainerGeometry=C(a.v),d.adView.measuringElement=!0)}return d}function Ea(a,b){b=va(b);a.j={};a.j.width=b.width;a.j.height=b.height;a.g={};a.g.x=0;a.g.y=0;a.g.width=b.width;a.g.height=b.height;a.g.endX=b.width;a.g.endY=b.height}\nfunction Fa(){return{x:0,y:0,endX:0,endY:0,width:0,height:0}}function Ga(a,b){var c={};c.x=Math.max(a.x,b.x);c.y=Math.max(a.y,b.y);c.endX=Math.min(a.endX,b.endX);c.endY=Math.min(a.endY,b.endY);c.width=Math.max(0,c.endX-c.x);c.height=Math.max(0,c.endY-c.y);return c}function Ha(a,b){return a.width<b.width||a.height<b.height}\nfunction Ia(a){if(-1!==a.f.indexOf('backgrounded'))a.m=0,a.u=0;else{var b=ya(a.a);if(0!==b){var c=ya(a.b);var d=a.c,e=0;if(0<d.length){var f=za(a.b,d),l=f.ba;f=f.ca;for(var g=0;g<l.length-1;g++)for(var h=(l[g]+(l[g]+1))/2,k=l[g+1]-l[g],m=0;m<f.length-1;m++){for(var v=(f[m]+(f[m]+1))/2,B=f[m+1]-f[m],x=!1,F=0;F<d.length;F++){var K=C(d[F]);if(K.x<h&&K.x+K.width>h&&K.y<v&&K.y+K.height>v){x=!0;break}}x&&(e+=Math.round(k)*Math.round(B))}}c-=e;b=Math.round(c/b*100);a.m=Math.max(b,0);a.u=Math.max(c,0)}}}\nfunction Ja(a,b){if(0!==b.width&&0!==b.height&&a.b){a=wa(a.b);var c=a.y,d=a.endX,e=a.endY;b=!(b.endX<=a.x||b.x>=d||b.endY<=c||b.y>=e)}else b=!1;return b}function D(a,b){for(var c=!1,d=0;d<a.f.length;d++)a.f[d]===b&&(c=!0);c||a.f.push(b)};function Ka(a,b,c,d,e){var f=new Ca;b=new A(b,!1);Ea(f,b);La(a,b,f,d);if(!e)return f.f=['unmeasurable'],f.j=void 0,f.m=0,f.c=[],f.a&&(a=f.a,c={},a=new A((c.x=0,c.y=0,c.width=a.width,c.height=a.height,c),a.a),f.a=a),f.b=Fa(),f;if('backgrounded'===c)D(f,'backgrounded');else if(void 0!==f.a){for(a=0;a<f.h.length;a++)Ja(f,f.h[a])&&f.o.push(f.h[a]);for(a=0;a<f.i.length;a++){if(c=Ja(f,f.i[a])){a:{c=f.i[a];for(d=0;d<f.c.length;d++)if(f.c[d].J(c)){c=!0;break a}c=!1}c=!c}c&&(D(f,'obstructed'),f.c.push(f.i[a]))}Ia(f)}else D(f,\n'notFound');return f}\nfunction La(a,b,c,d){var e=b.isCreative?!0:b.adSessionId===d;if(e){c.a=b;var f=wa(c.a);a=Ga(c.g,f);var l=c.a;'notAttached'===l.notVisibleReason||'noWindowFocus'===l.notVisibleReason||'noAdView'===l.notVisibleReason?(D(c,'notFound'),c.b=new A(Fa(),!1)):(l=c.a,'viewInvisible'===l.notVisibleReason||'viewGone'===l.notVisibleReason||'viewNotVisible'===l.notVisibleReason||'viewAlphaZero'===l.notVisibleReason||'viewHidden'===l.notVisibleReason||void 0!==c.a.notVisibleReason?(D(c,'hidden'),c.b=new A(Fa(),\n!1)):(Ha(a,f)&&D(c,'clipped'),c.b=new A(a,!1)))}else if(f=!0,b.a&&(f=-1!==b.isFriendlyObstructionFor.indexOf(d)?!1:!1===b.clipsToBounds),f){l=b.childViews;for(var g=0;g<l.length;g++)f=void 0!==c.a,La(a,new A(l[g],f),c,d)}e||void 0===c.a||(b.a?-1!==b.isFriendlyObstructionFor.indexOf(d)?c.h.push(b):c.i.push(b):(e=wa(b),d=wa(c.b),C(c.b),a=c.b,0!==a.width&&0!==a.height&&b.clipsToBounds&&(b=Ga(d,e),Ha(b,d)&&(D(c,'clipped'),c.b=new A(b,!1)))))};function Ma(a,b){this.y=this.x=0;this.width=a;this.height=b};function Na(){return{apiVersion:'1.0',accessMode:'limited',environment:'app',omidJsInfo:{omidImplementer:'omsdk',serviceVersion:'1.3.20-iab2822'}}}function Oa(){this.adSessionId=null;this.c=Na();this.o=null;this.m='foregrounded';this.l=this.i='none';this.j=this.g=this.f=this.h=this.a=this.b=this.B=this.u=null;this.C=!0;this.v=new Map}var G;function H(){G||(G=new Oa);return G};var Pa=eval('this'),I=function(){if('undefined'!==typeof omidGlobal&&omidGlobal)return omidGlobal;if('undefined'!==typeof global&&global)return global;if('undefined'!==typeof window&&window)return window;if('undefined'!==typeof Pa&&Pa)return Pa;throw Error('Could not determine global object context.');}();function Qa(a,b){this.a=a;this.b=b}t.Object.defineProperties(Qa.prototype,{event:{configurable:!0,enumerable:!0,get:function(){return this.a}},origin:{configurable:!0,enumerable:!0,get:function(){return this.b}}});function J(a){for(var b=[],c=0;c<arguments.length;++c)b[c]=arguments[c];Ra(function(){throw new (Function.prototype.bind.apply(Error,[null,'Could not complete the test successfully - '].concat(q(b))));},function(){return console.error.apply(console,q(b))})}function Sa(a){for(var b=[],c=0;c<arguments.length;++c)b[c]=arguments[c];Ra(function(){},function(){return console.error.apply(console,q(b))})}\nfunction Ra(a,b){'undefined'!==typeof jasmine&&jasmine?a():'undefined'!==typeof console&&console&&console.error&&b()};function Ta(){this.f=[];this.b=[];this.c=[];this.g=[];this.i={};this.a=H()}function Ua(a){a.f=[];a.b=[];a.c=[];a.g=[];a.i={};G.adSessionId=null;G.c=Na();G.o=null;G.G=void 0;G.K=void 0;G.H=null;G.I=null;G.D=null;G.m='foregrounded';G.i='none';G.l='none';G.u=null;G.B=null;G.b=null;G.a=null;G.h=null;G.f=null;G.g=null;G.j=null;G.C=!0;G.v=new Map}\nfunction Va(a,b){void 0!==a.a&&a.a.adSessionId&&!1!==Wa(a,b)&&a.c.filter(function(c){return c.type===b.event.type}).forEach(function(c){return a.h(c.F,b.event)})}function Xa(a,b){a.f.push(b);Va(a,b)}function Ya(a,b,c){void 0!==a.a&&a.a.adSessionId&&a.f.filter(function(d){return d.event.type===b&&Wa(a,d)}).map(function(d){return d.event}).forEach(c)}\nfunction Wa(a,b){var c=b.event.type,d=-1!==Object.values(z).indexOf(c)&&'volumeChange'!==c;return'impression'===c||'loaded'===c&&a.a.a?b.origin===H().l:d?b.origin===H().i:!0}function Za(a,b,c){'media'===b||'video'===b?$a(a,c):(a.c.push({type:b,F:c}),Ya(a,b,c))}function $a(a,b){Object.keys(z).forEach(function(c){c=z[c];a.c.push({type:c,F:b});Ya(a,c,b)})}function ab(a,b,c,d){var e={O:c,L:d,F:b};a.g.push(e);a.b.forEach(function(f){var l=bb(f);'sessionStart'===f.event.type&&cb(a,l,e);a.h(b,l)})}\nfunction db(a,b,c){var d=L(a,'sessionError','native',{errorType:b,message:c});a.b.push(d);a.g.forEach(function(e){a.h(e.F,d.event)})}function eb(a,b){a.i=Object.assign(a.i,b);b=a.a.c;if(void 0!==b){b=Object.assign({},fb(a,gb(a,{context:b}),!0),{supportsLoadedEvent:!!a.a.a||'video'==a.a.b});Object.assign(b,{pageUrl:null,contentUrl:a.a.o});var c=L(a,'sessionStart','native',b);a.b.push(c);a.g.forEach(function(d){var e=d.F,f=bb(c);cb(a,f,d);a.h(e,f)},a);hb(a)}}\nfunction cb(a,b,c){c.O&&(b.data.verificationParameters=a.i[c.O]);c.L&&(c=a.a.v.get(c.L))&&(b.data.verificationParameters=c.verificationParameters,b.data.context.accessMode=c.accessMode,'full'===c.accessMode&&(a.a.g&&(b.data.context.videoElement=a.a.g),a.a.f&&(b.data.context.slotElement=a.a.f)))}function ib(a){var b=a.g,c=L(a,'sessionFinish','native');a.b.push(c);var d=a.a.c;d&&'native'==d.adSessionType||Ua(a);b.forEach(function(e){return a.h(e.F,c.event)})}\nTa.prototype.h=function(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];try{a.apply(null,q(c))}catch(e){Sa(e)}};function jb(a,b){var c=(c=H().D)?Da(c):void 0;c=fb(a,gb(a,c));Xa(a,L(a,'impression',b,c))}function kb(a,b,c){if(a.a.a||'display'!=a.a.b)b=L(a,'loaded',b,fb(a,gb(a,void 0===c?null:c))),Xa(a,b)}\nfunction lb(a,b,c,d){'start'!==b&&'volumeChange'!==b||null!=(d&&d.deviceVolume)||(d.deviceVolume=a.a.u);if(d&&('start'===b||'volumeChange'===b)){var e=d.videoPlayerVolume,f=d.mediaPlayerVolume;null!=e?(Object.assign(d,{mediaPlayerVolume:e}),a.a.B=e):null!=f&&(Object.assign(d,{videoPlayerVolume:f}),a.a.B=f)}Xa(a,L(a,b,c,d))}\nfunction hb(a){var b=a.f.filter(function(f){return Object.values(z).includes(f.event.type)&&'video'==a.a.b&&f.origin===a.a.i||'loaded'==f.event.type&&'display'==a.a.b&&f.origin===a.a.l?!0:!1}).map(function(f){return f.event}),c=a.a.adSessionId||'',d={};b=p(b);for(var e=b.next();!e.done;d={w:d.w},e=b.next()){d.w=e.value;d.w.adSessionId||(d.w.adSessionId=c);if('loaded'==d.w.type){if(!a.a.a&&'display'==a.a.b)continue;d.w.data=fb(a,gb(a,d.w.data))}a.c.filter(function(f){return function(l){return l.type===\nf.w.type}}(d)).forEach(function(f){return function(l){return l.F(f.w)}}(d))}}function mb(a,b,c){a:{c=new Set(c);a=p(a.f.concat(a.b));for(var d=a.next();!d.done;d=a.next())if(d=d.value,c.has(d.event.type)&&d.origin!=b){b=!0;break a}b=!1}return b?(J('Event owner cannot be registered after its events have already been published.'),!1):!0}function nb(a,b){mb(a,b,Object.values(z))&&M(a,b)&&(a.a.i=b)}function ob(a,b){mb(a,b,['impression'])&&pb(a,b)&&(a.a.l=b)}\nfunction pb(a,b){var c=a.a.l;return'none'!=c&&c!=b?(J('Impression event is owned by '+(a.a.l+', not ')+(b+'.')),!1):!0}function M(a,b){var c=a.a.i;return'none'!=c&&c!=b?(J('Media events are owned by '+(a.a.i+', not '+b+'.')),!1):!0}function fb(a,b,c){c=void 0===c?!1:c;b=Object.assign({},b);a.a.b&&Object.assign(b,{mediaType:a.a.b});a.a.a&&(c||'definedByJavaScript'!==a.a.a)&&Object.assign(b,{creativeType:a.a.a});return b}function gb(a,b){return a.a.h?Object.assign({},b,{impressionType:a.a.h}):b}\nfunction L(a,b,c,d){return new Qa({adSessionId:a.a.adSessionId||'',timestamp:(new Date).getTime(),type:b,data:d},c)}function bb(a){a=a.event;return{adSessionId:a.adSessionId,timestamp:a.timestamp,type:a.type,data:a.data}};function qb(a,b,c){'container'===b&&void 0!==a.a.G&&void 0!==a.a&&null!=a.a.adSessionId&&(a.a.H=Ka(a.c,a.a.G,a.a.m,a.a.adSessionId,!0));b=a.a;var d=b.H,e=b.I;if(d)if(e){b=new Ca;var f=d.j,l=d.a,g=d.b,h=e.a;e=e.b;f&&l&&g&&h&&e&&(Ea(b,f),b.l=new A(l,!1),b.v=new A(g,!1),b.i=Object.assign([],d.i),b.c=Object.assign([],d.c),b.h=Object.assign([],d.h),b.o=Object.assign([],d.o),b.f=Object.assign([],d.f),d=b.l.x,f=b.l.y,h=new A(h,!1),e=new A(e,!1),xa(h,d,f),xa(e,d,f),b.a=h,b.b=Ga(e,g),Ia(b))}else b=d;else b=\nnull;g=a.a.D;if(b&&!b.J(g)||c)g=Da(b),c&&(g.adView.reasons=g.adView.reasons||[c]),c=a.b,'audio'!=c.a.a&&Xa(c,L(c,'geometryChange','native',g)),a.a.D=b};function N(a){return'object'===typeof a}function rb(a){return'number'===typeof a&&!isNaN(a)&&0<=a}function O(a){return'string'===typeof a}function P(a,b){return O(a)&&-1!==Object.values(b).indexOf(a)}function sb(a){var b=a&&a.tagName&&'iframe'===a.tagName.toLowerCase();try{b=b&&a instanceof HTMLIFrameElement}catch(c){}return b}function tb(a){var b=a&&a.tagName;try{b=b&&a instanceof a.ownerDocument.defaultView.HTMLElement}catch(c){}return b}\nfunction ub(a){var b=a&&a.tagName&&'video'===a.tagName.toLowerCase();try{b=b&&a instanceof a.ownerDocument.defaultView.HTMLVideoElement}catch(c){}return b};function Q(a,b,c){this.f=a;this.K=b;this.G=c;this.c=H();this.b=null;this.a=this.g=this.u=void 0;this.I=!0;this.B=void 0;R(this)}function R(a){if(!a.b){var b;a:{if((b=a.f.document)&&b.getElementsByClassName&&(b=b.getElementsByClassName('omid-element'))){if(1==b.length){b=b[0];break a}1<b.length&&a.I&&(db(a.G,'generic',\"More than one element with 'omid-element' class name.\"),a.I=!1)}b=null}if(ub(b))a.c.g=b;else if(tb(b))a.c.f=b;else return;vb(a)}}\nfunction vb(a){a.c.g?(a.b=a.c.g,a.i()):a.c.f&&(a.b=a.c.f,sb(a.b)?a.c.j&&a.i():a.i())}function wb(a){a.a&&(sb(a.b)?a.c.j&&(a.D(),xb(a)):(a.D(),xb(a)))}Q.prototype.m=function(){this.B&&(this.f.document.removeEventListener('visibilitychange',this.B),this.B=void 0)};Q.prototype.i=function(){};function xb(a){a.u&&(a.c.I=a.u,qb(a.K,'creative'))}function yb(a){if(a.a&&a.c.j){var b=new A(a.c.j,!1);xa(b,a.a.x,a.a.y);b.clipsToBounds=!0;return b}};function zb(a,b,c){return Ab(a,'setInterval')(b,c)}function Bb(a,b){Ab(a,'clearInterval')(b)}function Cb(a,b){Ab(a,'clearTimeout')(b)}function Ab(a,b){return a.a&&a.a[b]?a.a[b]:Db(a,b)}\nfunction Eb(a,b,c,d){if(a.a.document&&a.a.document.body){var e=a.a.document.createElement('img');e.width=1;e.height=1;e.style.display='none';e.src=b;c&&e.addEventListener('load',function(){return c()});d&&e.addEventListener('error',function(){return d()});a.a.document.body.appendChild(e)}else Db(a,'sendUrl')(b,c,d)}function Db(a,b){if(a.a&&a.a.omidNative&&a.a.omidNative[b])return a.a.omidNative[b].bind(a.a.omidNative);throw Error('Native interface method \"'+b+'\" not found.');};function S(a,b,c,d,e){Q.call(this,a,c,e);this.l=b;this.h=void 0;this.j=d}r(S,Q);S.prototype.m=function(){void 0!==this.h&&(Bb(this.j,this.h),this.h=void 0);Q.prototype.m.call(this)};S.prototype.i=function(){var a=this;Q.prototype.i.call(this);null==this.b?this.h=void 0:void 0===this.h&&(this.h=zb(this.j,function(){return Fb(a)},200),Fb(this))};\nS.prototype.D=function(){if(this.g){var a=yb(this);if(a){this.a.isCreative=!1;a.isCreative=!0;for(var b=!1,c=0;c<this.a.childViews.length;c++)if(this.a.childViews[c].isCreative){this.a.childViews[c]=a;b=!0;break}b||this.a.childViews.push(a)}else this.a.isCreative=!0;this.u=Ka(this.l,this.g,this.c.m,this.c.adSessionId,this.C())}};S.prototype.C=function(){return!0};\nfunction Fb(a){if(void 0!==a.h){b:{try{var b=a.f.top;var c=0<=b.innerHeight&&0<=b.innerWidth;break b}catch(d){}c=!1}c?(c=a.f.top,c=new A(new Ma(c.innerWidth,c.innerHeight),!1)):c=new A(new Ma(0,0),!1);b=a.b.getBoundingClientRect();if(null==b.x||isNaN(b.x))b.x=b.left;if(null==b.y||isNaN(b.y))b.y=b.top;b=new A(b,!1);c.J(a.g)&&b.J(a.a)||(a.a=b,a.a.clipsToBounds=!0,a.g=c,a.g.childViews.push(a.a),wb(a))}};function T(a,b,c,d){Q.call(this,a,c,d);this.o=this.j=this.l=this.h=void 0;this.H=!1;this.v=void 0}r(T,Q);T.prototype.m=function(){this.h&&this.h.disconnect();Gb(this);Q.prototype.m.call(this)};T.prototype.i=function(){Q.prototype.i.call(this);this.b&&(this.h||(this.h=Hb(this)),Ib(this),Jb(this.b)&&Kb(this))};\nT.prototype.D=function(){if(this.a&&this.v){var a=yb(this);if(a){var b=a;var c=this.v;var d=Math.max(a.x,c.x);var e=Math.max(a.y,c.y),f=Math.min(a.endX,c.endX);a=Math.min(a.endY,c.endY);f<=d||a<=e?d=null:(c={},d=new A((c.x=d,c.y=e,c.width=Math.abs(f-d),c.height=Math.abs(a-e),c),!1));d||(d=new A({x:0,y:0,width:0,height:0},!1))}else b=this.a,d=this.v;e=new Ca;this.g&&Ea(e,this.g);e.a=b;e.b=d;Ia(e);this.H?100===e.m||D(e,'clipped'):D(e,'viewport');this.u=e}};T.prototype.C=function(){return!0};\nfunction Gb(a){a.l&&(a.l.disconnect(),a.l=void 0);a.j&&(a.j.disconnect(),a.j=void 0);a.o&&((0,a.f.removeEventListener)('resize',a.o),a.o=void 0)}function Ib(a){a.h&&a.b&&(a.h.unobserve(a.b),a.h.observe(a.b))}function Jb(a){a=a.getBoundingClientRect();return 0==a.width||0==a.height}\nfunction Hb(a){return new a.f.IntersectionObserver(function(b){try{if(b.length){for(var c,d=b[0],e=1;e<b.length;e++)b[e].time>d.time&&(d=b[e]);c=d;a.g=Lb(c.rootBounds);a.a=Lb(c.boundingClientRect);a.v=Lb(c.intersectionRect);a.H=!!c.isIntersecting;wb(a)}}catch(f){a.m(),db(a.G,'generic','Problem handling IntersectionObserver callback: '+f.message)}},{root:null,rootMargin:'0px',threshold:[0,.1,.2,.3,.4,.5,.6,.7,.8,.9,1]})}\nfunction Kb(a){a.f.ResizeObserver?a.l||(a.l=Mb(a,function(){return Ob(a)}),a.l.observe(a.b)):(a.o||(a.o=function(){return Ob(a)},(0,a.f.addEventListener)('resize',a.o)),a.j||(a.j=new MutationObserver(function(){return Ob(a)}),a.j.observe(a.b,{childList:!1,attributes:!0,subtree:!1})))}function Ob(a){a.b&&!Jb(a.b)&&(Ib(a),Gb(a))}function Mb(a,b){return new a.f.ResizeObserver(b)}function Lb(a){if(a&&null!==a.x&&null!==a.y&&null!==a.width&&null!==a.height)return new A(a,!1)};function Pb(a){return a&&N(a)?Object.entries(a).reduce(function(b,c){var d=p(c);c=d.next().value;d=d.next().value;return b&&O(c)&&null!=d&&N(d)&&O(d.resourceUrl)},!0):!1};function U(a,b,c,d){this.b=a;this.method=b;this.version=c;this.a=d}function Qb(a){return!!a&&void 0!==a.omid_message_guid&&void 0!==a.omid_message_method&&void 0!==a.omid_message_version&&'string'===typeof a.omid_message_guid&&'string'===typeof a.omid_message_method&&'string'===typeof a.omid_message_version&&(void 0===a.omid_message_args||void 0!==a.omid_message_args)}function Rb(a){return new U(a.omid_message_guid,a.omid_message_method,a.omid_message_version,a.omid_message_args)}\nfunction Sb(a){var b={};b=(b.omid_message_guid=a.b,b.omid_message_method=a.method,b.omid_message_version=a.version,b);void 0!==a.a&&(b.omid_message_args=a.a);return b};function Tb(a){this.c=a};function V(a){this.c=a;this.handleExportedMessage=V.prototype.f.bind(this)}r(V,Tb);V.prototype.b=function(a,b){b=void 0===b?this.c:b;if(!b)throw Error('Message destination must be defined at construction time or when sending the message.');b.handleExportedMessage(Sb(a),this)};V.prototype.f=function(a,b){Qb(a)&&this.a&&this.a(Rb(a),b)};function Ub(a,b){this.c=b=void 0===b?I:b;var c=this;a.addEventListener('message',function(d){if('object'===typeof d.data){var e=d.data;Qb(e)&&d.source&&c.a&&c.a(Rb(e),d.source)}})}r(Ub,Tb);Ub.prototype.b=function(a,b){b=void 0===b?this.c:b;if(!b)throw Error('Message destination must be defined at construction time or when sending the message.');b.postMessage(Sb(a),'*')};function Vb(){return'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g,function(a){var b=16*Math.random()|0;return'y'===a?(b&3|8).toString(16):b.toString(16)})};function Wb(a){if(!a.a||!a.a.document)throw Error('OMID Service Script is not running within a window.');var b=a.b;a.b=[];b.forEach(function(c){try{var d=a.c.C?'limited':'full',e=P(c.accessMode,sa)?c.accessMode:null;var f=e?'full'==e&&'limited'==d?d:'domain'==e?'limited':e:d;c.accessMode=f;a:{var l=c.resourceUrl,g=a.a.location.origin;try{var h=new URL(l,g);break a}catch(F){}try{h=new URL(l);break a}catch(F){}h=null}if(d=h){var k=Vb(),m=a.a.document,v=m.createElement('iframe');v.id='omid-verification-script-frame-'+\nk;v.style.display='none';['full','limited'].includes(f)?v.srcdoc=\"<html><head>\\n<script type=\\\"text/javascript\\\">window['omidVerificationProperties'] = {\\n'serviceWindow': window.parent,\\n'injectionSource': 'app',\\n'injectionId': '\"+(k+'\\',\\n};\\x3c/script>\\n<script type=\"text/javascript\" src=\"')+d.href+'\">\\x3c/script>\\n</head><body></body></html>':'domain'==f&&(v.src=Xb(a,k,d).href);['domain','limited'].includes(f)&&(v.sandbox='allow-scripts');m.body.appendChild(v);var B=c.vendorKey,x=c.verificationParameters;\nB=void 0===B?'':B;x=void 0===x?'':x;B&&'string'===typeof B&&''!==B&&x&&'string'===typeof x&&''!==x&&(a.f.i[B]=x);a.c.v.set(k,c)}}catch(F){Sa('OMID verification script '+c.resourceUrl+' failed to load: '+F)}})}\nfunction Xb(a,b,c){var d='/.well-known/omid/omloader-v1.html#';(new Map([['verificationScriptUrl',c.href],['injectionId',b]])).forEach(function(e,f){d+=encodeURIComponent(f)+'='+encodeURIComponent(e)+'&'});b=null;try{b=new URL(d,a.a.parent.location.origin)}catch(e){throw Error('OMID Service Script cannot access the parent window.');}return b};function Yb(){var a=Zb,b=$b,c=this;this.c=W;this.b=a;this.a=H();this.g=b;this.f=!1;this.registerSessionObserver(function(d){return ac(c,d)})}n=Yb.prototype;n.registerSessionObserver=function(a){ab(this.c,a)};n.setSlotElement=function(a){tb(a)?(this.a.f=a,this.b&&vb(this.b)):J('setSlotElement called with a non-HTMLElement.  It will be ignored.')};n.setElementBounds=function(a){this.a.j=a;this.b&&vb(this.b);this.b&&wb(this.b)};n.error=function(a,b){db(this.c,a,b)};\nn.registerAdEvents=function(){ob(this.c,'javascript')};n.registerMediaEvents=function(){nb(this.c,'javascript')};function Y(a,b,c){'impression'==b?pb(a.c,'javascript')&&(jb(a.c,'javascript'),a.b&&R(a.b)):('loaded'==b?(c=void 0===c?null:c,M(a.c,'javascript')&&kb(a.c,'javascript',c)):M(a.c,'javascript')&&lb(a.c,b,'javascript',c),['loaded','start'].includes(b)&&a.b&&R(a.b))}n.injectVerificationScriptResources=function(a){var b=this.g;b.b.push.apply(b.b,q(a));if(this.f)try{Wb(this.g)}catch(c){J(c.message)}};\nn.setCreativeType=function(a,b){b=void 0===b?null:b;if(!this.a.b||this.a.a)this.a.a=a,'video'==a||'audio'==a?this.a.b='video':'htmlDisplay'==a||'nativeDisplay'==a?this.a.b='display':'definedByJavaScript'==a&&b&&(this.a.b='none'==b?'display':'video')};n.setImpressionType=function(a){if(!this.a.b||this.a.a)this.a.h=a};\nfunction ac(a,b){if('sessionStart'===b.type){a.f=!0;try{Wb(a.g)}catch(c){J(c.message)}}'sessionFinish'===b.type&&(a.f=!1,(b=H().c)&&'native'==b.adSessionType||a.registerSessionObserver(function(c){return ac(a,c)}))}n.setClientInfo=function(a,b,c){var d=this.a.c||{};d.omidJsInfo=Object.assign({},d.omidJsInfo,{sessionClientVersion:a,partnerName:b,partnerVersion:c});this.a.c=d;return this.a.c.omidJsInfo.serviceVersion};function bc(a){return/\\d+\\.\\d+\\.\\d+(-.*)?/.test(a)}function cc(a){a=a.split('-')[0].split('.');for(var b=['1','0','3'],c=0;3>c;c++){var d=parseInt(a[c],10),e=parseInt(b[c],10);if(d>e)break;else if(d<e)return!1}return!0};function dc(a,b){return bc(a)&&cc(a)?b?b:[]:b&&'string'===typeof b?JSON.parse(b):[]};function ec(){var a=fc;var b=void 0===b?omidGlobal:b;this.a=a;this.f=b;this.b=new V;this.f.omid=this.f.omid||{};this.f.omid.v1_SessionServiceCommunication=this.b;this.c=b&&b.addEventListener&&b.postMessage?new Ub(b):null;this.g=null;this.b.a=this.h.bind(this);this.c&&(this.c.a=this.i.bind(this))}ec.prototype.h=function(a,b){gc(this,a,b,this.b)};\nec.prototype.i=function(a,b){this.g||(this.g=b);this.g!=b?J('The source window of session client post messages cannot be changed from the source of the first message.'):gc(this,a,b,this.c)};\nfunction gc(a,b,c,d){function e(h){for(var k=[],m=0;m<arguments.length;++m)k[m]=arguments[m];k=new U(f,'response',g,bc(g)&&cc(g)?k:JSON.stringify(k));d.b(k,c)}var f=b.b,l=b.method,g=b.version;b=dc(g,b.a);try{hc(a,l,e,b)}catch(h){d.b(new U(f,'error',g,'\\n        name: '+h.name+'\\n        message: '+h.message+'\\n        filename: '+h.filename+'\\n        lineNumber: '+h.lineNumber+'\\n        columnNumber: '+h.columnNumber+'\\n        stack: '+h.stack+'\\n        toString(): '+h.toString()),c)}}\nfunction hc(a,b,c,d){switch(b){case 'SessionService.registerAdEvents':a.a.registerAdEvents();break;case 'SessionService.registerMediaEvents':a.a.registerMediaEvents();break;case 'SessionService.registerSessionObserver':a.a.registerSessionObserver(c);break;case 'SessionService.setSlotElement':c=p(d).next().value;a.a.setSlotElement(c);break;case 'SessionService.setVideoElement':c=p(d).next().value;a=a.a;ub(c)?(a.a.g=c,a.b&&vb(a.b)):J('setVideoElement called with a non-HTMLVideoElement. It will be ignored.');\nbreak;case 'SessionService.setElementBounds':c=p(d).next().value;a.a.setElementBounds(c);break;case 'SessionService.startSession':J('Session start from JS is not supported in mobile app.');break;case 'SessionService.finishSession':J('Session finish from JS is not supported in mobile app.');break;case 'SessionService.impressionOccurred':Y(a.a,'impression');break;case 'SessionService.loaded':(c=p(d).next().value)?(b={skippable:c.isSkippable,autoPlay:c.isAutoPlay,position:c.position},c.isSkippable&&\n(b.skipOffset=c.skipOffset),Y(a.a,'loaded',b)):Y(a.a,'loaded');break;case 'SessionService.start':b=p(d);c=b.next().value;b=b.next().value;Y(a.a,'start',{duration:c,mediaPlayerVolume:b});break;case 'SessionService.firstQuartile':Y(a.a,'firstQuartile');break;case 'SessionService.midpoint':Y(a.a,'midpoint');break;case 'SessionService.thirdQuartile':Y(a.a,'thirdQuartile');break;case 'SessionService.complete':Y(a.a,'complete');break;case 'SessionService.pause':Y(a.a,'pause');break;case 'SessionService.resume':Y(a.a,\n'resume');break;case 'SessionService.bufferStart':Y(a.a,'bufferStart');break;case 'SessionService.bufferFinish':Y(a.a,'bufferFinish');break;case 'SessionService.skipped':Y(a.a,'skipped');break;case 'SessionService.volumeChange':c={mediaPlayerVolume:p(d).next().value};Y(a.a,'volumeChange',c);break;case 'SessionService.playerStateChange':c={state:p(d).next().value};Y(a.a,'playerStateChange',c);break;case 'SessionService.adUserInteraction':c={interactionType:p(d).next().value};Y(a.a,'adUserInteraction',\nc);break;case 'SessionService.setClientInfo':var e=p(d);b=e.next().value;d=e.next().value;e=e.next().value;a=a.a.setClientInfo(b,d,e);c(a);break;case 'SessionService.injectVerificationScriptResources':c=p(d).next().value;a.a.injectVerificationScriptResources(c);break;case 'SessionService.setCreativeType':c=p(d).next().value;a.a.setCreativeType(c);break;case 'SessionService.setImpressionType':c=p(d).next().value;a.a.setImpressionType(c);break;case 'SessionService.setContentUrl':c=p(d).next().value;\na.a.a.o=c;break;case 'SessionService.sessionError':b=p(d),c=b.next().value,b=b.next().value,a.a.error(c,b)}};function Z(){var a=W,b=ic,c=jc,d=Zb;this.f=fc;this.a=a;this.c=b;this.h=c;this.g=d;this.b=H()}n=Z.prototype;\nn.T=function(a){if(!(!(a&&N(a)&&P(a.impressionOwner,ra))||'videoEventsOwner'in a&&null!=a.videoEventsOwner&&!P(a.videoEventsOwner,ra)||'mediaEventsOwner'in a&&null!=a.mediaEventsOwner&&!P(a.mediaEventsOwner,ra))){if(a.creativeType&&a.impressionType){var b=a.mediaEventsOwner;null==this.b.a&&this.f.setCreativeType(a.creativeType,b);null==this.b.h&&(this.b.h=a.impressionType);nb(this.a,b)}else b=a.videoEventsOwner,this.b.b=null==b||'none'===b?'display':'video',this.b.a=null,this.b.h=null,nb(this.a,b);\nob(this.a,a.impressionOwner);a&&null!=a.isolateVerificationScripts&&'boolean'===typeof a.isolateVerificationScripts&&(this.b.C=a.isolateVerificationScripts)}};\nn.W=function(a,b,c,d){var e;if(N(b)){if(e=P(b.environment,ua)&&P(b.adSessionType,qa))e=b.omidNativeInfo,e=N(e)?O(e.partnerName)&&O(e.partnerVersion):!1;e&&(e=b.app,e=N(e)?O(e.libraryVersion)&&O(e.appId):!1)}else e=!1;e&&(Pb(d)&&(this.b.v=new Map(Object.entries(d))),d=this.f,c=void 0===c?null:c,null==a&&(a=Vb()),b.canMeasureVisibility=d.b.C(),d.a.adSessionId=a,a=d.a,e=b,void 0!==e.contentUrl&&(a.o=e.contentUrl,e.contentUrl=void 0),e=a.c||{},b.omidJsInfo=Object.assign({},e.omidJsInfo||{},b.omidJsInfo||\n{}),e=b=Object.assign({},e,b),a.C||(null!=a.g?(e.videoElement=a.g,e.accessMode='full'):null!=a.f&&(e.slotElement=a.f,e.accessMode='full')),a.c=b,eb(d.c,c),d.b&&R(d.b))};n.U=function(){var a=this.f;ib(a.c);a.b.m()};n.$=function(a){N(a)&&rb(a.x)&&rb(a.y)&&rb(a.width)&&rb(a.height)&&(this.b.G=a,qb(this.c,'container'))};n.aa=function(a){P(a,ta)&&(this.b.m=a,'backgrounded'===a?qb(this.c,'container','backgrounded'):qb(this.c,'container'))};n.X=function(a){'impression'===a&&(this.M(),this.g&&R(this.g))};\nn.M=function(){pb(this.a,'native')&&jb(this.a,'native')};n.V=function(a){a=void 0===a?null:a;M(this.a,'native')&&kb(this.a,'native',a)};n.error=function(a,b){P(a,oa)&&db(this.a,a,b)};n.Y=function(a,b){this.N(a,b)};n.N=function(a,b){M(this.a,'native')&&P(a,z)&&(void 0===b||N(b))&&('loaded'==a?kb(this.a,'native',b):lb(this.a,a,'native',b))};\nn.Z=function(a){if('none'!==this.a.a.i&&'number'===typeof a&&!isNaN(a)){this.b.u=a;a=this.h;var b=a.a.B;null!=b&&lb(a.b,'volumeChange','native',{mediaPlayerVolume:b,deviceVolume:a.a.u})}};Z.prototype.startSession=Z.prototype.W;Z.prototype.error=Z.prototype.error;Z.prototype.finishSession=Z.prototype.U;Z.prototype.publishAdEvent=Z.prototype.X;Z.prototype.publishImpressionEvent=Z.prototype.M;Z.prototype.publishVideoEvent=Z.prototype.Y;Z.prototype.publishMediaEvent=Z.prototype.N;\nZ.prototype.publishLoadedEvent=Z.prototype.V;Z.prototype.setNativeViewHierarchy=Z.prototype.$;Z.prototype.setState=Z.prototype.aa;Z.prototype.setDeviceVolume=Z.prototype.Z;Z.prototype.init=Z.prototype.T;function kc(){var a=W,b=lc;var c=void 0===c?I:c;this.g=a;this.a=b;this.h={};this.f={};this.c=new V;c.omid=c.omid||{};c.omid.v1_VerificationServiceCommunication=this.c;this.b=null;c&&c.addEventListener&&c.postMessage&&(this.b=new Ub(c));this.c.a=this.i.bind(this);this.b&&(this.b.a=this.j.bind(this))}function mc(a,b,c,d){Eb(a.a,b,c,d)}function nc(a,b,c,d){Db(a.a,'downloadJavaScriptResource')(b,c,d)}kc.prototype.j=function(a,b){this.b&&oc(this,a,b,this.b)};kc.prototype.i=function(a,b){oc(this,a,b,this.c)};\nfunction oc(a,b,c,d){function e(E){for(var X=[],pa=0;pa<arguments.length;++pa)X[pa]=arguments[pa];X=new U(f,'response',g,bc(g)&&cc(g)?X:JSON.stringify(X));d.b(X,c)}var f=b.b,l=b.method,g=b.version;b=dc(g,b.a);try{switch(l){case 'VerificationService.addEventListener':var h=p(b).next().value;Za(a.g,h,e);break;case 'VerificationService.addSessionListener':var k=p(b),m=k.next().value,v=k.next().value;ab(a.g,e,m,v);break;case 'VerificationService.sendUrl':var B=p(b).next().value;mc(a,B,function(){return e(!0)},\nfunction(){return e(!1)});break;case 'VerificationService.setTimeout':var x=p(b),F=x.next().value,K=x.next().value;a.h[F]=Ab(a.a,'setTimeout')(e,K);break;case 'VerificationService.clearTimeout':var tc=p(b).next().value;Cb(a.a,a.h[tc]);break;case 'VerificationService.setInterval':var Nb=p(b),uc=Nb.next().value,vc=Nb.next().value;a.f[uc]=zb(a.a,e,vc);break;case 'VerificationService.clearInterval':var wc=p(b).next().value;Bb(a.a,a.f[wc]);break;case 'VerificationService.injectJavaScriptResource':var xc=\np(b).next().value;nc(a,xc,function(E){return e(!0,E)},function(){return e(!1)});break;case 'VerificationService.getVersion':p(b).next();var yc=H().c.omidJsInfo;e(yc.serviceVersion)}}catch(E){d.b(new U(f,'error',g,'\\n              name: '+E.name+'\\n              message: '+E.message+'\\n              filename: '+E.filename+'\\n              lineNumber: '+E.lineNumber+'\\n              columnNumber: '+E.columnNumber+'\\n              stack: '+E.stack+'\\n              toString(): '+E.toString()+'\\n          '),\nc)}};function pc(){var a=I.document.createElement('iframe');a.id='omid_v1_present';a.name='omid_v1_present';a.style.display='none';I.document.body.appendChild(a)}function qc(){var a=new MutationObserver(function(b){b.forEach(function(c){'BODY'===c.addedNodes[0].nodeName&&(pc(),a.disconnect())})});a.observe(I.document.documentElement,{childList:!0})};var W=new Ta,lc=new function(){var a;this.a=a=void 0===a?omidGlobal:a};new kc;var rc=new function(){},sc=new function(){},ic=new function(){this.b=W;this.c=sc;this.a=H()},zc;I?zc=I.IntersectionObserver&&(I.MutationObserver||I.ResizeObserver)?new T(I,rc,ic,W):new S(I,sc,ic,lc,W):zc=null;var Zb=zc,$b=new function(){var a=W;var b=void 0===b?I:b;this.f=a;this.a=b;this.c=H();this.b=[]},fc=new Yb,jc=new function(){var a=W,b=H();this.b=a;this.a=b};I.omidBridge=new Z;new ec;\nif(I.frames&&I.document&&!('omid_v1_present'in I.frames)){var Ac;if(Ac=null==I.document.body)Ac='MutationObserver'in I;Ac?qc():I.document.body?pc():I.document.write('<iframe style=\"display:none\" id=\"omid_v1_present\" name=\"omid_v1_present\"></iframe>')};\n}).call(this, this);", strA);
                        } catch (Throwable th) {
                            fg.e(null, new StringBuilder("OmTracker: Unable to inject script: "), th);
                            strInjectScriptContentIntoHtml = null;
                        }
                    }
                    strA = strInjectScriptContentIntoHtml;
                    break;
                }
                wv9Var.Z = jSONObject.optBoolean("forceWebMediaPlayback");
                wv9Var.X = strA;
                wv9Var.Y = (float) jSONObject.optDouble("timeToReward", wv9Var.Y);
                return wv9Var;
            case 2:
                String str52 = str30;
                String str53 = str38;
                String str54 = str50;
                String str55 = str45;
                xda xdaVar2 = new xda(pp9Var);
                yda ydaVar3 = new yda(z2aVar.g);
                c(jSONObject, xdaVar2);
                JSONObject jSONObjectOptJSONObject17 = jSONObject.optJSONObject("styleSettings");
                if (jSONObjectOptJSONObject17 != null) {
                    b(jSONObjectOptJSONObject17, xdaVar2.X);
                }
                int i7 = liaVar.n;
                if (i7 > 0) {
                    xdaVar2.f0 = i7;
                } else {
                    xdaVar2.f0 = jSONObject.optInt("style", xdaVar2.f0);
                }
                xdaVar2.d0 = jSONObject.optBoolean("closeOnClick", xdaVar2.k());
                xdaVar2.e0 = jSONObject.optBoolean("videoRequired", xdaVar2.e0);
                xdaVar2.L = jSONObject.optBoolean("isSmartBanner", xdaVar2.L);
                jSONObject.optString("pattern");
                JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("cards");
                ArrayList arrayList3 = xdaVar2.Y;
                if (jSONArrayOptJSONArray5 != null) {
                    try {
                        Class.forName(RecyclerView.class.getName());
                        int length4 = jSONArrayOptJSONArray5.length();
                        int i8 = 0;
                        while (i8 < length4) {
                            int i9 = length4;
                            JSONObject jSONObjectOptJSONObject18 = jSONArrayOptJSONArray5.optJSONObject(i8);
                            JSONArray jSONArray2 = jSONArrayOptJSONArray5;
                            if (jSONObjectOptJSONObject18 != null) {
                                i = i8;
                                fo9 fo9Var = new fo9(xdaVar2.Q);
                                fo9Var.r = t2a.s;
                                fo9Var.B = xdaVar2.B;
                                fo9Var.d = xdaVar2.d;
                                fo9Var.m = xdaVar2.m;
                                fo9Var.C = xdaVar2.C;
                                fo9Var.D = xdaVar2.D;
                                fo9Var.t = xdaVar2.t;
                                fo9Var.s = xdaVar2.s;
                                fo9Var.E = xdaVar2.E;
                                fo9Var.r = xdaVar2.r;
                                fo9Var.h = xdaVar2.h;
                                fo9Var.i = xdaVar2.i;
                                fo9Var.l = xdaVar2.l;
                                fo9Var.j = xdaVar2.j;
                                fo9Var.k = xdaVar2.k;
                                fo9Var.M = xdaVar2.M;
                                fo9Var.K = xdaVar2.K;
                                fo9Var.J = xdaVar2.J;
                                fo9Var.r = xdaVar2.r;
                                str4 = str54;
                                this.a.b(jSONObjectOptJSONObject18, fo9Var, ks9.d);
                                if (!jSONObjectOptJSONObject18.has(str33)) {
                                    fo9Var.R = true;
                                }
                                if (TextUtils.isEmpty(fo9Var.F) || fo9Var.p == null) {
                                    fo9Var = null;
                                } else {
                                    fo9Var.B = jSONObjectOptJSONObject18.optString("cardID", fo9Var.B);
                                }
                                if (fo9Var != null) {
                                    arrayList3.add(fo9Var);
                                }
                            } else {
                                i = i8;
                                str4 = str54;
                            }
                            i8 = i + 1;
                            length4 = i9;
                            jSONArrayOptJSONArray5 = jSONArray2;
                            str54 = str4;
                        }
                    } catch (Throwable unused2) {
                        ydaVar3 = ydaVar3;
                        str53 = str53;
                        str3 = str54;
                        y14.r(null, "UiUtils: RecyclerView doesn't exist, add RecyclerView dependency to show cards");
                    }
                }
                str3 = str54;
                if (!arrayList3.isEmpty() || (jSONObjectOptJSONObject = jSONObject.optJSONObject(MimeTypes.BASE_TYPE_VIDEO)) == null) {
                    jSONObject2 = jSONObject;
                    xdaVar = xdaVar2;
                } else {
                    kha khaVar = new kha(pp9.d);
                    khaVar.B = xdaVar2.B;
                    khaVar.O = xdaVar2.O;
                    p0a p0aVar = new p0a(z2aVar, liaVar);
                    ks9 ks9Var = ks9.d;
                    qw9 qw9Var = (qw9) p0aVar.c;
                    qw9Var.b(jSONObjectOptJSONObject, khaVar, new ks9(ks9Var.a, ks9Var.b, ks9Var.c));
                    if (str48.equals(khaVar.A)) {
                        p0aVar.a(jSONObjectOptJSONObject, khaVar);
                        xdaVar = xdaVar2;
                    } else {
                        float f = khaVar.z;
                        if (f <= 0.0f) {
                            ks9Var.c(3007, "wrong parsed getDuration()=" + f);
                            xdaVar = xdaVar2;
                        } else {
                            khaVar.T = jSONObjectOptJSONObject.optString(str42, "Close");
                            khaVar.U = jSONObjectOptJSONObject.optString("replayActionText", khaVar.U);
                            khaVar.V = jSONObjectOptJSONObject.optString(str40, khaVar.V);
                            Boolean bool = liaVar.D;
                            khaVar.X = bool != null ? bool.booleanValue() : jSONObjectOptJSONObject.optBoolean("automute", khaVar.X);
                            khaVar.b0 = jSONObjectOptJSONObject.optBoolean("showPlayerControls", khaVar.b0);
                            Boolean bool2 = liaVar.E;
                            khaVar.Y = bool2 != null ? bool2.booleanValue() : jSONObjectOptJSONObject.optBoolean("autoplay", khaVar.Y);
                            khaVar.Z = jSONObjectOptJSONObject.optBoolean("hasCtaButton", khaVar.Z);
                            khaVar.g0 = (float) jSONObjectOptJSONObject.optDouble("allowSkipDelay", khaVar.g0);
                            khaVar.d0 = jSONObjectOptJSONObject.optBoolean("allowSkip", khaVar.d0);
                            p0aVar.a(jSONObjectOptJSONObject, khaVar);
                            Boolean bool3 = liaVar.u;
                            khaVar.c0 = bool3 != null ? bool3.booleanValue() : jSONObjectOptJSONObject.optBoolean("allowClose", khaVar.c0);
                            Boolean bool4 = liaVar.v;
                            khaVar.e0 = bool4 != null ? bool4.booleanValue() : jSONObjectOptJSONObject.optBoolean("hasPause", khaVar.e0);
                            Boolean bool5 = liaVar.B;
                            khaVar.a0 = bool5 != null ? bool5.booleanValue() : jSONObjectOptJSONObject.optBoolean("allowReplay", khaVar.a0);
                            float fOptDouble = liaVar.t;
                            if (fOptDouble < 0.0f) {
                                fOptDouble = (float) jSONObjectOptJSONObject.optDouble("allowCloseDelay", khaVar.f0);
                            }
                            khaVar.f0 = fOptDouble;
                            JSONObject jSONObjectOptJSONObject19 = jSONObjectOptJSONObject.optJSONObject("shoppable");
                            String str56 = str46;
                            if (jSONObjectOptJSONObject19 != null) {
                                String strOptString12 = jSONObjectOptJSONObject19.optString(str56);
                                if (TextUtils.isEmpty(strOptString12)) {
                                    y14.r(null, "CommonVideoParser: encoded shoppable source is empty or null");
                                } else {
                                    try {
                                        new String(Base64.decode(strOptString12, 0));
                                        int iOptInt6 = jSONObjectOptJSONObject19.optInt("interactionTimeout", 2);
                                        if (!jSONObjectOptJSONObject19.has("interactionTimeout") || iOptInt6 < 0) {
                                            iOptInt6 = 2;
                                        }
                                        Math.min(iOptInt6, khaVar.z);
                                        n1a n1aVar = new n1a();
                                        n1aVar.A = "shoppable";
                                        qw9Var.b(jSONObjectOptJSONObject19, n1aVar, ks9Var);
                                    } catch (Throwable th2) {
                                        y14.r(null, "CommonVideoParser: shoppable source parsing is ended with exception: " + th2);
                                        th2.toString();
                                    }
                                }
                            }
                            JSONObject jSONObjectOptJSONObject20 = jSONObjectOptJSONObject.optJSONObject("shoppableAdsData");
                            if (jSONObjectOptJSONObject20 != null) {
                                n4a n4aVar = new n4a(pp9.d);
                                qn9 qn9Var = new qn9(liaVar);
                                boolean zHas2 = jSONObjectOptJSONObject20.has(str48);
                                if (zHas2) {
                                    qn9Var.b(n4aVar, jSONObjectOptJSONObject20, -1.0f);
                                }
                                JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject20.optJSONArray(FirebaseAnalytics.Param.ITEMS);
                                if (jSONArrayOptJSONArray6 != null) {
                                    int length5 = jSONArrayOptJSONArray6.length();
                                    if (length5 != 0) {
                                        ArrayList arrayList4 = new ArrayList();
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 < length5) {
                                                JSONObject jSONObjectOptJSONObject21 = jSONArrayOptJSONArray6.optJSONObject(i10);
                                                if (jSONObjectOptJSONObject21 == null) {
                                                    y14.r(null, "ShoppableAdsDataParser: can't parse – hasn't shoppableItemJson");
                                                    str5 = str56;
                                                    xdaVar = xdaVar2;
                                                } else {
                                                    xdaVar = xdaVar2;
                                                    try {
                                                        if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString(str36))) {
                                                            y14.r(null, "ShoppableAdsDataParser: can't parse ShoppableAdsItem – hasn't url");
                                                            str5 = str56;
                                                        } else {
                                                            str5 = str56;
                                                            String str57 = str52;
                                                            try {
                                                                if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString(str57))) {
                                                                    y14.r(null, "ShoppableAdsDataParser: can't parse ShoppableAdsItem – hasn't id");
                                                                    str52 = str57;
                                                                } else {
                                                                    str52 = str57;
                                                                    try {
                                                                        if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString("picture"))) {
                                                                            y14.r(null, "ShoppableAdsDataParser: can't parse ShoppableAdsItem – hasn't picture");
                                                                        } else {
                                                                            if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString("text"))) {
                                                                                y14.r(null, "ShoppableAdsDataParser: can't parse ShoppableAdsItem – hasn't text");
                                                                            } else {
                                                                                if (jSONObjectOptJSONObject21.has("oldPrice")) {
                                                                                    jSONObjectOptJSONObject21.getString("oldPrice");
                                                                                }
                                                                                if (jSONObjectOptJSONObject21.has(FirebaseAnalytics.Param.PRICE)) {
                                                                                    jSONObjectOptJSONObject21.getString(FirebaseAnalytics.Param.PRICE);
                                                                                }
                                                                                if (jSONObjectOptJSONObject21.has("deeplink")) {
                                                                                    jSONObjectOptJSONObject21.getString("deeplink");
                                                                                }
                                                                                if (jSONObjectOptJSONObject21.has("deeplink_fallback_url")) {
                                                                                    jSONObjectOptJSONObject21.getString("deeplink_fallback_url");
                                                                                }
                                                                                try {
                                                                                    qn9Var.b(new n4a(pp9.d), jSONObjectOptJSONObject21, -1.0f);
                                                                                    j6aVar = new j6a();
                                                                                } catch (Throwable th3) {
                                                                                    th = th3;
                                                                                    str11 = null;
                                                                                    fg.e(null, new StringBuilder("ShoppableAdsDataParser: can't parse ShoppableAdsItem – "), th);
                                                                                    j6aVar = null;
                                                                                }
                                                                            }
                                                                            str11 = null;
                                                                            if (j6aVar == null) {
                                                                                y14.r(str11, "ShoppableAdsDataParser: can't parse shoppableAdsItem");
                                                                            } else {
                                                                                arrayList4.add(j6aVar);
                                                                            }
                                                                        }
                                                                    } catch (Throwable th4) {
                                                                        th = th4;
                                                                        str11 = null;
                                                                        fg.e(null, new StringBuilder("ShoppableAdsDataParser: can't parse ShoppableAdsItem – "), th);
                                                                        j6aVar = null;
                                                                        if (j6aVar == null) {
                                                                            y14.r(str11, "ShoppableAdsDataParser: can't parse shoppableAdsItem");
                                                                            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("companionAds");
                                                                            if (jSONArrayOptJSONArray != null) {
                                                                                length = jSONArrayOptJSONArray.length();
                                                                                for (i2 = 0; i2 < length; i2++) {
                                                                                    jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                                                                                    if (jSONObjectOptJSONObject2 == null) {
                                                                                        g1aVar = new g1a();
                                                                                        qw9Var.b(jSONObjectOptJSONObject2, g1aVar, ks9.d);
                                                                                        if (g1aVar.x == 0) {
                                                                                            g1aVar = null;
                                                                                        } else {
                                                                                            jSONObjectOptJSONObject2.optInt("assetWidth");
                                                                                            jSONObjectOptJSONObject2.optInt("assetHeight");
                                                                                            jSONObjectOptJSONObject2.optInt("expandedWidth");
                                                                                            jSONObjectOptJSONObject2.optInt("expandedHeight");
                                                                                            g1aVar.R = jSONObjectOptJSONObject2.optString("staticResource");
                                                                                            jSONObjectOptJSONObject2.optString("iframeResource");
                                                                                            g1aVar.S = jSONObjectOptJSONObject2.optString("htmlResource");
                                                                                            jSONObjectOptJSONObject2.optString("apiFramework");
                                                                                            jSONObjectOptJSONObject2.optString("adSlotID");
                                                                                            strOptString3 = jSONObjectOptJSONObject2.optString("required");
                                                                                            if (!TextUtils.isEmpty(strOptString3)) {
                                                                                                "none".equals(strOptString3);
                                                                                            }
                                                                                        }
                                                                                        if (g1aVar != null) {
                                                                                            khaVar.R.add(g1aVar);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            strOptString4 = jSONObjectOptJSONObject.optString(str51);
                                                                            if (!TextUtils.isEmpty(strOptString4)) {
                                                                                khaVar.S = h14.a(jSONObjectOptJSONObject.optInt(str49), jSONObjectOptJSONObject.optInt(str47), strOptString4);
                                                                            }
                                                                            TextUtils.isEmpty(jSONObjectOptJSONObject.optString("aboutCompany"));
                                                                            TextUtils.isEmpty(jSONObjectOptJSONObject.optString("marker"));
                                                                            jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("cta");
                                                                            if (jSONObjectOptJSONObject3 != null) {
                                                                                strOptString8 = jSONObjectOptJSONObject3.optString(str36);
                                                                                if (TextUtils.isEmpty(strOptString8)) {
                                                                                    sdaVar = null;
                                                                                    y14.r(null, "CommonVideoParser: CTA button hasn't button link");
                                                                                } else {
                                                                                    sdaVar = null;
                                                                                    if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("buttonText"))) {
                                                                                        y14.r(null, "CommonVideoParser: CTA button hasn't button link text");
                                                                                    } else {
                                                                                        if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("additionalText"))) {
                                                                                            y14.r(null, "CommonVideoParser: CTA button hasn't text");
                                                                                        }
                                                                                        if (y14.b(jSONObjectOptJSONObject3, "buttonColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {
                                                                                            y14.r(null, "CommonVideoParser: CTA button hasn't button color");
                                                                                        }
                                                                                        if (y14.b(jSONObjectOptJSONObject3, "buttonTextColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {
                                                                                            y14.r(null, "CommonVideoParser: CTA button hasn't button text color");
                                                                                        }
                                                                                        if (jSONObjectOptJSONObject3.has("icon")) {
                                                                                            p0a.b(jSONObjectOptJSONObject13);
                                                                                        }
                                                                                        sdaVar = new sda(strOptString8);
                                                                                    }
                                                                                }
                                                                                khaVar.W = sdaVar;
                                                                            }
                                                                            jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("qrCta");
                                                                            if (jSONObjectOptJSONObject4 != null) {
                                                                                jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject("timers");
                                                                                if (jSONObjectOptJSONObject7 != null) {
                                                                                    try {
                                                                                        jSONObjectOptJSONObject7.getInt("startValue");
                                                                                    } catch (JSONException e) {
                                                                                        y14.r(null, "TimersParser: invalid startValue field:" + e.getLocalizedMessage());
                                                                                    }
                                                                                    try {
                                                                                        jSONObjectOptJSONObject7.getInt("startPvalue");
                                                                                    } catch (JSONException e2) {
                                                                                        y14.r(null, "TimersParser: invalid startPvalue field:" + e2.getLocalizedMessage());
                                                                                    }
                                                                                    try {
                                                                                        jSONObjectOptJSONObject7.getInt("extraDuration");
                                                                                    } catch (JSONException e3) {
                                                                                        y14.r(null, "TimersParser: invalid extraDuration field:" + e3.getLocalizedMessage());
                                                                                    }
                                                                                    iw9Var = new iw9();
                                                                                } else {
                                                                                    iw9Var = null;
                                                                                }
                                                                                if (iw9Var != null) {
                                                                                    jSONObjectOptJSONObject8 = jSONObjectOptJSONObject4.optJSONObject("qrImage");
                                                                                    if (jSONObjectOptJSONObject8 != null) {
                                                                                        h14VarD = y14.d(jSONObjectOptJSONObject8);
                                                                                    } else {
                                                                                        h14VarD = null;
                                                                                    }
                                                                                    if (h14VarD != null) {
                                                                                        jSONObjectOptJSONObject9 = jSONObjectOptJSONObject4.optJSONObject("qrIconImage");
                                                                                        if (jSONObjectOptJSONObject9 != null) {
                                                                                            y14.e(jSONObjectOptJSONObject12);
                                                                                        }
                                                                                        jSONObjectOptJSONObject10 = jSONObjectOptJSONObject4.optJSONObject("additionalImage");
                                                                                        if (jSONObjectOptJSONObject10 != null) {
                                                                                            y14.d(jSONObjectOptJSONObject10);
                                                                                        }
                                                                                        strOptString6 = jSONObjectOptJSONObject4.optString(str33);
                                                                                        if (TextUtils.isEmpty(strOptString6)) {
                                                                                            strOptString6 = null;
                                                                                        }
                                                                                        if (strOptString6 != null) {
                                                                                            strOptString7 = jSONObjectOptJSONObject4.optString("additionalText");
                                                                                            if (TextUtils.isEmpty(strOptString7)) {
                                                                                                strOptString7 = null;
                                                                                            }
                                                                                            if (strOptString7 != null) {
                                                                                                jSONObjectOptJSONObject11 = jSONObjectOptJSONObject4.optJSONObject("position");
                                                                                                if (jSONObjectOptJSONObject11 != null) {
                                                                                                    y14.e(jSONObjectOptJSONObject11);
                                                                                                }
                                                                                                jSONObjectOptJSONObject4.optString("colorScheme").getClass();
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            }
                                                                            jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("postView");
                                                                            if (jSONObjectOptJSONObject5 != null) {
                                                                                strOptString5 = jSONObjectOptJSONObject5.optString("text");
                                                                                if (TextUtils.isEmpty(strOptString5)) {
                                                                                    y14.r(null, "CommonVideoParser: PostView hasn't text");
                                                                                }
                                                                                if (jSONObjectOptJSONObject5.has("backgroundImage")) {
                                                                                    h14VarB = null;
                                                                                } else {
                                                                                    h14VarB = null;
                                                                                }
                                                                                if (h14VarB == null) {
                                                                                    str10 = null;
                                                                                    y14.r(null, "CommonVideoParser: PostView hasn't backgroundImage");
                                                                                } else {
                                                                                    str10 = null;
                                                                                }
                                                                                if (TextUtils.isEmpty(strOptString5)) {
                                                                                }
                                                                                i3 = 0;
                                                                                jSONObjectOptJSONObject5.optBoolean("pauseOnHide", false);
                                                                                if (y14.b(jSONObjectOptJSONObject5, "overlay", Integer.MAX_VALUE) == Integer.MAX_VALUE) {
                                                                                    y14.r(str10, "CommonVideoParser: PostView hasn't overlay");
                                                                                }
                                                                                jSONObjectOptJSONObject5.optDouble(str3, 3.0d);
                                                                            } else {
                                                                                i3 = 0;
                                                                            }
                                                                            jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(str43);
                                                                            ks9VarA = ks9Var.a(str43);
                                                                            if (jSONArrayOptJSONArray2 != null) {
                                                                                xdaVar = xdaVar;
                                                                                y14.r(null, "CommonVideoParser: Mediafiles array is empty");
                                                                                ks9VarA.c(AuthApiStatusCodes.AUTH_APP_CERT_ERROR, "unable to find mediaFiles in MediaBanner");
                                                                            } else {
                                                                                xdaVar = xdaVar;
                                                                                y14.r(null, "CommonVideoParser: Mediafiles array is empty");
                                                                                ks9VarA.c(AuthApiStatusCodes.AUTH_APP_CERT_ERROR, "unable to find mediaFiles in MediaBanner");
                                                                            }
                                                                            jSONObject2 = jSONObject;
                                                                            jSONObjectOptJSONObject14 = jSONObject2.optJSONObject("endcard");
                                                                            if (jSONObjectOptJSONObject14 != null) {
                                                                                jiaVarA = a(jSONObjectOptJSONObject14, str, j8aVar, ydaVar3);
                                                                                if (jiaVarA != null) {
                                                                                    jiaVarA.B = xdaVar.B;
                                                                                }
                                                                                xdaVar.a0 = jiaVarA;
                                                                            }
                                                                            strOptString2 = jSONObject2.optString("adIconLink");
                                                                            if (!TextUtils.isEmpty(strOptString2)) {
                                                                                xdaVar.b0 = new h14(strOptString2);
                                                                                xdaVar.c0 = jSONObject2.optString("adIconClickLink");
                                                                            }
                                                                            return xdaVar;
                                                                        }
                                                                        arrayList4.add(j6aVar);
                                                                        i10++;
                                                                        length5 = length5;
                                                                        jSONArrayOptJSONArray6 = jSONArrayOptJSONArray6;
                                                                        xdaVar2 = xdaVar;
                                                                        str56 = str5;
                                                                    }
                                                                }
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                                str52 = str57;
                                                            }
                                                        }
                                                        j6aVar = null;
                                                        str11 = null;
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        str5 = str56;
                                                    }
                                                    if (j6aVar == null) {
                                                        y14.r(str11, "ShoppableAdsDataParser: can't parse shoppableAdsItem");
                                                    } else {
                                                        arrayList4.add(j6aVar);
                                                    }
                                                }
                                                i10++;
                                                length5 = length5;
                                                jSONArrayOptJSONArray6 = jSONArrayOptJSONArray6;
                                                xdaVar2 = xdaVar;
                                                str56 = str5;
                                                break;
                                            } else {
                                                str5 = str56;
                                                xdaVar = xdaVar2;
                                                if (arrayList4.size() == 0) {
                                                    y14.r(null, "ShoppableAdsDataParser: can't parse – no one valid shoppableAdItem");
                                                } else if (zHas2 && !n4aVar.j("shoppableAdsItemShow") && !n4aVar.j("show")) {
                                                    y14.r(null, "ShoppableAdsDataParser: hasn't show stat'");
                                                }
                                            }
                                        }
                                    } else {
                                        y14.r(null, "ShoppableAdsDataParser: can't parse – shoppableAdItems size is 0");
                                    }
                                } else {
                                    y14.r(null, "ShoppableAdsDataParser: can't parse – ShoppableAdItems'");
                                }
                                str5 = str56;
                                xdaVar = xdaVar2;
                            } else {
                                str5 = str56;
                                xdaVar = xdaVar2;
                            }
                            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("companionAds");
                            if (jSONArrayOptJSONArray != null) {
                                length = jSONArrayOptJSONArray.length();
                                while (i2 < length) {
                                    jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                                    if (jSONObjectOptJSONObject2 == null) {
                                        g1aVar = new g1a();
                                        qw9Var.b(jSONObjectOptJSONObject2, g1aVar, ks9.d);
                                        if (g1aVar.x == 0 && g1aVar.y != 0) {
                                            jSONObjectOptJSONObject2.optInt("assetWidth");
                                            jSONObjectOptJSONObject2.optInt("assetHeight");
                                            jSONObjectOptJSONObject2.optInt("expandedWidth");
                                            jSONObjectOptJSONObject2.optInt("expandedHeight");
                                            g1aVar.R = jSONObjectOptJSONObject2.optString("staticResource");
                                            jSONObjectOptJSONObject2.optString("iframeResource");
                                            g1aVar.S = jSONObjectOptJSONObject2.optString("htmlResource");
                                            jSONObjectOptJSONObject2.optString("apiFramework");
                                            jSONObjectOptJSONObject2.optString("adSlotID");
                                            strOptString3 = jSONObjectOptJSONObject2.optString("required");
                                            if (!TextUtils.isEmpty(strOptString3) && !TtmlNode.COMBINE_ALL.equals(strOptString3) && !"any".equals(strOptString3)) {
                                                "none".equals(strOptString3);
                                            }
                                        } else {
                                            g1aVar = null;
                                        }
                                        if (g1aVar != null) {
                                            khaVar.R.add(g1aVar);
                                        }
                                    }
                                }
                            }
                            strOptString4 = jSONObjectOptJSONObject.optString(str51);
                            if (!TextUtils.isEmpty(strOptString4)) {
                                khaVar.S = h14.a(jSONObjectOptJSONObject.optInt(str49), jSONObjectOptJSONObject.optInt(str47), strOptString4);
                            }
                            TextUtils.isEmpty(jSONObjectOptJSONObject.optString("aboutCompany"));
                            TextUtils.isEmpty(jSONObjectOptJSONObject.optString("marker"));
                            jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("cta");
                            if (jSONObjectOptJSONObject3 != null) {
                                strOptString8 = jSONObjectOptJSONObject3.optString(str36);
                                if (TextUtils.isEmpty(strOptString8)) {
                                    sdaVar = null;
                                    y14.r(null, "CommonVideoParser: CTA button hasn't button link");
                                } else {
                                    sdaVar = null;
                                    if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("buttonText"))) {
                                        y14.r(null, "CommonVideoParser: CTA button hasn't button link text");
                                    } else {
                                        if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("additionalText"))) {
                                            y14.r(null, "CommonVideoParser: CTA button hasn't text");
                                        }
                                        if (y14.b(jSONObjectOptJSONObject3, "buttonColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {
                                            y14.r(null, "CommonVideoParser: CTA button hasn't button color");
                                        }
                                        if (y14.b(jSONObjectOptJSONObject3, "buttonTextColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {
                                            y14.r(null, "CommonVideoParser: CTA button hasn't button text color");
                                        }
                                        if (jSONObjectOptJSONObject3.has("icon") && (jSONObjectOptJSONObject13 = jSONObjectOptJSONObject3.optJSONObject("icon")) != null) {
                                            p0a.b(jSONObjectOptJSONObject13);
                                        }
                                        sdaVar = new sda(strOptString8);
                                    }
                                }
                                khaVar.W = sdaVar;
                            }
                            jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("qrCta");
                            if (jSONObjectOptJSONObject4 != null) {
                                jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject("timers");
                                if (jSONObjectOptJSONObject7 != null) {
                                    jSONObjectOptJSONObject7.getInt("startValue");
                                    jSONObjectOptJSONObject7.getInt("startPvalue");
                                    jSONObjectOptJSONObject7.getInt("extraDuration");
                                    iw9Var = new iw9();
                                } else {
                                    iw9Var = null;
                                }
                                if (iw9Var != null) {
                                    jSONObjectOptJSONObject8 = jSONObjectOptJSONObject4.optJSONObject("qrImage");
                                    if (jSONObjectOptJSONObject8 != null) {
                                        h14VarD = y14.d(jSONObjectOptJSONObject8);
                                    } else {
                                        h14VarD = null;
                                    }
                                    if (h14VarD != null) {
                                        jSONObjectOptJSONObject9 = jSONObjectOptJSONObject4.optJSONObject("qrIconImage");
                                        if (jSONObjectOptJSONObject9 != null && y14.d(jSONObjectOptJSONObject9) != null && (jSONObjectOptJSONObject12 = jSONObjectOptJSONObject9.optJSONObject("position")) != null) {
                                            y14.e(jSONObjectOptJSONObject12);
                                        }
                                        jSONObjectOptJSONObject10 = jSONObjectOptJSONObject4.optJSONObject("additionalImage");
                                        if (jSONObjectOptJSONObject10 != null) {
                                            y14.d(jSONObjectOptJSONObject10);
                                        }
                                        strOptString6 = jSONObjectOptJSONObject4.optString(str33);
                                        if (TextUtils.isEmpty(strOptString6)) {
                                            strOptString6 = null;
                                        }
                                        if (strOptString6 != null) {
                                            strOptString7 = jSONObjectOptJSONObject4.optString("additionalText");
                                            if (TextUtils.isEmpty(strOptString7)) {
                                                strOptString7 = null;
                                            }
                                            if (strOptString7 != null) {
                                                jSONObjectOptJSONObject11 = jSONObjectOptJSONObject4.optJSONObject("position");
                                                if (jSONObjectOptJSONObject11 != null) {
                                                    y14.e(jSONObjectOptJSONObject11);
                                                }
                                                jSONObjectOptJSONObject4.optString("colorScheme").getClass();
                                            }
                                        }
                                    }
                                }
                            }
                            jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("postView");
                            if (jSONObjectOptJSONObject5 != null) {
                                strOptString5 = jSONObjectOptJSONObject5.optString("text");
                                if (TextUtils.isEmpty(strOptString5)) {
                                    y14.r(null, "CommonVideoParser: PostView hasn't text");
                                }
                                if (jSONObjectOptJSONObject5.has("backgroundImage") || (jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject("backgroundImage")) == null) {
                                    h14VarB = null;
                                } else {
                                    h14VarB = p0a.b(jSONObjectOptJSONObject6);
                                }
                                if (h14VarB == null) {
                                    str10 = null;
                                    y14.r(null, "CommonVideoParser: PostView hasn't backgroundImage");
                                } else {
                                    str10 = null;
                                }
                                if (TextUtils.isEmpty(strOptString5) || h14VarB != null) {
                                    i3 = 0;
                                    jSONObjectOptJSONObject5.optBoolean("pauseOnHide", false);
                                    if (y14.b(jSONObjectOptJSONObject5, "overlay", Integer.MAX_VALUE) == Integer.MAX_VALUE) {
                                        y14.r(str10, "CommonVideoParser: PostView hasn't overlay");
                                    }
                                    jSONObjectOptJSONObject5.optDouble(str3, 3.0d);
                                } else {
                                    y14.r(str10, "CommonVideoParser: PostView Text or Background Image should exist but both are empty");
                                    i3 = 0;
                                }
                            } else {
                                i3 = 0;
                            }
                            jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(str43);
                            ks9VarA = ks9Var.a(str43);
                            if (jSONArrayOptJSONArray2 != null || jSONArrayOptJSONArray2.length() == 0) {
                                xdaVar = xdaVar;
                                y14.r(null, "CommonVideoParser: Mediafiles array is empty");
                                ks9VarA.c(AuthApiStatusCodes.AUTH_APP_CERT_ERROR, "unable to find mediaFiles in MediaBanner");
                            } else {
                                ArrayList arrayList5 = new ArrayList();
                                int length6 = jSONArrayOptJSONArray2.length();
                                int i11 = i3;
                                while (i11 < length6) {
                                    JSONObject jSONObjectOptJSONObject22 = jSONArrayOptJSONArray2.optJSONObject(i11);
                                    ks9 ks9VarD = ks9VarA.d(i11);
                                    if (jSONObjectOptJSONObject22 != null) {
                                        String str58 = str5;
                                        String strOptString13 = jSONObjectOptJSONObject22.optString(str58);
                                        str7 = str44;
                                        int iOptInt7 = jSONObjectOptJSONObject22.optInt(str7);
                                        str8 = str55;
                                        int iOptInt8 = jSONObjectOptJSONObject22.optInt(str8);
                                        if (TextUtils.isEmpty(strOptString13) || iOptInt7 <= 0 || iOptInt8 <= 0) {
                                            jSONArray = jSONArrayOptJSONArray2;
                                            i4 = i11;
                                            str9 = str58;
                                            str6 = str53;
                                            StringBuilder sbA = mz0.a(iOptInt7, "bad mediafile object, src = ", strOptString13, ", width = ", ", height = ");
                                            sbA.append(iOptInt8);
                                            ks9VarD.c(3007, sbA.toString());
                                            rn9Var = null;
                                        } else {
                                            JSONObject jSONObjectOptJSONObject23 = jSONObjectOptJSONObject22.optJSONObject("loudnessMetadata");
                                            if (jSONObjectOptJSONObject23 != null) {
                                                jSONArray = jSONArrayOptJSONArray2;
                                                i4 = i11;
                                                str9 = str58;
                                                float fOptDouble2 = (float) jSONObjectOptJSONObject23.optDouble("integratedLufs");
                                                float fOptDouble3 = (float) jSONObjectOptJSONObject23.optDouble("truePeak");
                                                if (!Float.isNaN(fOptDouble2)) {
                                                    Float.isNaN(fOptDouble3);
                                                }
                                            } else {
                                                jSONArray = jSONArrayOptJSONArray2;
                                                i4 = i11;
                                                str9 = str58;
                                            }
                                            rn9Var = new rn9(strOptString13, iOptInt7, iOptInt8);
                                            str6 = str53;
                                            jSONObjectOptJSONObject22.optInt(str6);
                                            if (strOptString13.endsWith(".m3u8") && !ho9.a.b) {
                                                y14.r(null, "CommonVideoParser: HLS Video does not supported, add 'androidx.media3:media3-exoplayer-hls' dependency to play HLS video ");
                                                ks9VarD.c(3009, "HLS Video does not supported, add...");
                                                rn9Var = null;
                                            }
                                        }
                                        if (rn9Var != null) {
                                            arrayList5.add(rn9Var);
                                        }
                                    } else {
                                        jSONArray = jSONArrayOptJSONArray2;
                                        i4 = i11;
                                        str6 = str53;
                                        str7 = str44;
                                        str8 = str55;
                                        str9 = str5;
                                        ks9VarD.f(3007);
                                    }
                                    str53 = str6;
                                    str44 = str7;
                                    str5 = str9;
                                    i11 = i4 + 1;
                                    str55 = str8;
                                    jSONArrayOptJSONArray2 = jSONArray;
                                }
                                if (arrayList5.size() > 0) {
                                    rn9 rn9VarA = rn9.a(arrayList5);
                                    if (rn9VarA != null) {
                                        khaVar.h0 = rn9VarA;
                                    } else {
                                        ks9Var.g(3007, "Unable to find best video data for q=360");
                                    }
                                }
                                ks9Var.g(3008, "no video data parsed");
                            }
                        }
                        jSONObject2 = jSONObject;
                        jSONObjectOptJSONObject14 = jSONObject2.optJSONObject("endcard");
                        if (jSONObjectOptJSONObject14 != null) {
                            jiaVarA = a(jSONObjectOptJSONObject14, str, j8aVar, ydaVar3);
                            if (jiaVarA != null && jiaVarA.B.isEmpty()) {
                                jiaVarA.B = xdaVar.B;
                            }
                            xdaVar.a0 = jiaVarA;
                        }
                    }
                    n4a n4aVar2 = khaVar.a;
                    if (n4aVar2.b.isEmpty() && n4aVar2.c.isEmpty() && n4aVar2.f.isEmpty() && n4aVar2.g.isEmpty() && n4aVar2.e.isEmpty() && n4aVar2.d.isEmpty()) {
                        xdaVar = xdaVar;
                        n4aVar2.g(xdaVar.a, khaVar.z);
                    } else {
                        xdaVar = xdaVar;
                    }
                    xdaVar.Z = khaVar;
                    if (khaVar.Y) {
                        xdaVar.V = khaVar.c0;
                        xdaVar.S = khaVar.f0;
                        xdaVar.T = khaVar.g0;
                    }
                    jSONObject2 = jSONObject;
                    jSONObjectOptJSONObject14 = jSONObject2.optJSONObject("endcard");
                    if (jSONObjectOptJSONObject14 != null) {
                        jiaVarA = a(jSONObjectOptJSONObject14, str, j8aVar, ydaVar3);
                        if (jiaVarA != null) {
                            jiaVarA.B = xdaVar.B;
                        }
                        xdaVar.a0 = jiaVarA;
                    }
                }
                strOptString2 = jSONObject2.optString("adIconLink");
                if (!TextUtils.isEmpty(strOptString2)) {
                    xdaVar.b0 = new h14(strOptString2);
                    xdaVar.c0 = jSONObject2.optString("adIconClickLink");
                }
                return xdaVar;
            case 4:
                j1a j1aVar = new j1a(pp9.d);
                i2a i2aVar = new i2a(z2aVar, liaVar);
                i2aVar.c(jSONObject, j1aVar);
                JSONArray jSONArrayOptJSONArray7 = jSONObject.optJSONArray(FirebaseAnalytics.Param.ITEMS);
                if (jSONArrayOptJSONArray7 == null || jSONArrayOptJSONArray7.length() == 0) {
                    return null;
                }
                HashSet hashSet = new HashSet();
                int length7 = jSONArrayOptJSONArray7.length();
                int i12 = 0;
                boolean zAdd = true;
                while (i12 < length7) {
                    int i13 = length7;
                    JSONObject jSONObjectOptJSONObject24 = jSONArrayOptJSONArray7.optJSONObject(i12);
                    if (jSONObjectOptJSONObject24 == null) {
                        return null;
                    }
                    int i14 = i12;
                    String strOptString14 = jSONObjectOptJSONObject24.optString(str29);
                    strOptString14.getClass();
                    switch (strOptString14.hashCode()) {
                        case -1396342996:
                            if (strOptString14.equals(str32)) {
                                b2 = 0;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 3213227:
                            if (strOptString14.equals(str31)) {
                                b2 = 1;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 112202875:
                            if (strOptString14.equals(MimeTypes.BASE_TYPE_VIDEO)) {
                                b2 = 2;
                            } else {
                                b2 = -1;
                            }
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    qn9 qn9Var2 = i2aVar.d;
                    switch (b2) {
                        case 0:
                            String str59 = str50;
                            String str60 = str32;
                            str12 = str59;
                            jSONArrayOptJSONArray7 = jSONArrayOptJSONArray7;
                            i2aVar = i2aVar;
                            str29 = str29;
                            str35 = str35;
                            str13 = str30;
                            String str61 = str31;
                            str14 = str37;
                            str15 = str36;
                            str16 = str38;
                            str17 = str46;
                            str18 = str49;
                            str19 = str51;
                            str20 = str39;
                            str21 = str45;
                            str22 = str48;
                            str23 = str42;
                            str24 = str40;
                            str25 = str47;
                            str26 = str41;
                            String str62 = str34;
                            int iOptInt9 = jSONObjectOptJSONObject24.optInt("allowCloseDelay", -1);
                            if (iOptInt9 == -1) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            k6a k6aVar = j1aVar.Y;
                            k6aVar.c = iOptInt9;
                            String strOptString15 = jSONObjectOptJSONObject24.optString("iconLink");
                            if (TextUtils.isEmpty(strOptString15)) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            str34 = str62;
                            int iOptInt10 = jSONObjectOptJSONObject24.optInt("iconWidth", -1);
                            str27 = str61;
                            int iOptInt11 = jSONObjectOptJSONObject24.optInt("iconHeight", -1);
                            if (iOptInt10 == -1 || iOptInt11 == -1) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            k6aVar.d = h14.a(iOptInt10, iOptInt11, strOptString15);
                            str33 = str33;
                            String strOptString16 = jSONObjectOptJSONObject24.optString(str33);
                            if (TextUtils.isEmpty(strOptString16)) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            k6aVar.e = strOptString16;
                            String strOptString17 = jSONObjectOptJSONObject24.optString("ctaText");
                            if (!TextUtils.isEmpty(strOptString17)) {
                                k6aVar.f = strOptString17;
                            }
                            JSONArray jSONArrayOptJSONArray8 = jSONObjectOptJSONObject24.optJSONArray(str22);
                            if (jSONArrayOptJSONArray8 == null || jSONArrayOptJSONArray8.length() == 0) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            qn9Var2.b = 1;
                            qn9Var2.b((n4a) k6aVar.b, jSONObjectOptJSONObject24, j1aVar.z);
                            str28 = str60;
                            zAdd = hashSet.add(str28);
                            continue;
                            length7 = i13;
                            str38 = str16;
                            str48 = str22;
                            str36 = str15;
                            str33 = str33;
                            str50 = str12;
                            i2aVar = i2aVar;
                            str41 = str26;
                            str39 = str20;
                            str29 = str29;
                            str30 = str13;
                            str37 = str14;
                            str35 = str35;
                            str31 = str27;
                            str32 = str28;
                            i12 = i14 + 1;
                            str47 = str25;
                            str40 = str24;
                            str42 = str23;
                            str45 = str21;
                            str51 = str19;
                            str49 = str18;
                            str46 = str17;
                            jSONArrayOptJSONArray7 = jSONArrayOptJSONArray7;
                            break;
                            break;
                        case 1:
                            String str63 = str50;
                            str32 = str32;
                            str12 = str63;
                            str35 = str35;
                            str13 = str30;
                            str27 = str31;
                            str14 = str37;
                            str16 = str38;
                            str17 = str46;
                            str18 = str49;
                            str19 = str51;
                            str20 = str39;
                            str21 = str45;
                            str22 = str48;
                            str23 = str42;
                            str24 = str40;
                            str25 = str47;
                            str26 = str41;
                            String strA2 = qw9.a(jSONObjectOptJSONObject24, j8aVar, ks9.d);
                            boolean zIsEmpty = TextUtils.isEmpty(strA2);
                            j4a j4aVar = j1aVar.X;
                            if (zIsEmpty) {
                                i2a.d(j8aVar);
                            } else {
                                j4aVar.c = strA2;
                            }
                            String str64 = str34;
                            str15 = str36;
                            String strOptString18 = jSONObjectOptJSONObject24.optString(str15, str64);
                            if (TextUtils.isEmpty(strOptString18)) {
                                i2a.d(j8aVar);
                            } else {
                                j4aVar.d = strOptString18;
                            }
                            int iOptInt12 = jSONObjectOptJSONObject24.optInt("allowCloseDelay", -1);
                            if (iOptInt12 == -1) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            j4aVar.e = iOptInt12;
                            jSONObjectOptJSONObject24.optInt(str12, 5);
                            JSONArray jSONArrayOptJSONArray9 = jSONObjectOptJSONObject24.optJSONArray(str22);
                            if (jSONArrayOptJSONArray9 == null || jSONArrayOptJSONArray9.length() == 0) {
                                i2a.d(j8aVar);
                                return null;
                            }
                            qn9Var2.b = 1;
                            qn9Var2.b((n4a) j4aVar.b, jSONObjectOptJSONObject24, j1aVar.z);
                            zAdd = hashSet.add(str27);
                            str34 = str64;
                            break;
                            break;
                        case 2:
                            y8a y8aVar2 = new y8a(6, (byte) 0);
                            j1aVar.a0 = y8aVar2;
                            n4a n4aVar3 = (n4a) y8aVar2.b;
                            if (TextUtils.isEmpty(jSONObjectOptJSONObject24.optString(str30))) {
                                i2a.d(j8aVar);
                                str12 = str50;
                                str13 = str30;
                            } else {
                                str13 = str30;
                                int iOptInt13 = jSONObjectOptJSONObject24.optInt("allowCloseDelay", -1);
                                if (iOptInt13 != -1) {
                                    y8aVar2.c = iOptInt13;
                                    jSONObjectOptJSONObject24.optBoolean(str41, false);
                                    String strOptString19 = jSONObjectOptJSONObject24.optString(str39);
                                    if (!TextUtils.isEmpty(strOptString19)) {
                                        y8aVar2.d = new h14(strOptString19);
                                    }
                                    TextUtils.isEmpty(jSONObjectOptJSONObject24.optString(str37));
                                    JSONObject jSONObjectOptJSONObject25 = jSONObjectOptJSONObject24.optJSONObject(MimeTypes.BASE_TYPE_VIDEO);
                                    if (jSONObjectOptJSONObject25 == null) {
                                        i2a.d(j8aVar);
                                    } else {
                                        str14 = str37;
                                        y8aVar2.e = jSONObjectOptJSONObject25.optBoolean(str35, true);
                                        String str65 = str51;
                                        String strOptString20 = jSONObjectOptJSONObject25.optString(str65);
                                        str35 = str35;
                                        str20 = str39;
                                        String str66 = str49;
                                        str19 = str65;
                                        int iOptInt14 = jSONObjectOptJSONObject25.optInt(str66, -1);
                                        str18 = str66;
                                        String str67 = str47;
                                        str26 = str41;
                                        int iOptInt15 = jSONObjectOptJSONObject25.optInt(str67, -1);
                                        if (iOptInt14 != -1 && iOptInt15 != -1 && !TextUtils.isEmpty(strOptString20)) {
                                            y8aVar2.f = h14.a(iOptInt14, iOptInt15, strOptString20);
                                        }
                                        String str68 = str42;
                                        TextUtils.isEmpty(jSONObjectOptJSONObject25.optString(str68));
                                        String str69 = str40;
                                        TextUtils.isEmpty(jSONObjectOptJSONObject25.optString(str69));
                                        String str70 = str43;
                                        JSONArray jSONArrayOptJSONArray10 = jSONObjectOptJSONObject25.optJSONArray(str70);
                                        if (jSONArrayOptJSONArray10 == null || jSONArrayOptJSONArray10.length() == 0) {
                                            String str71 = str50;
                                            str32 = str32;
                                            str12 = str71;
                                            str24 = str69;
                                            str25 = str67;
                                            str43 = str70;
                                            str27 = str31;
                                            str16 = str38;
                                            str17 = str46;
                                            str22 = str48;
                                            str21 = str45;
                                            str23 = str68;
                                            i2a.d(j8aVar);
                                        } else {
                                            str43 = str70;
                                            JSONObject jSONObjectOptJSONObject26 = jSONArrayOptJSONArray10.optJSONObject(0);
                                            if (jSONObjectOptJSONObject26 == null) {
                                                i2a.d(j8aVar);
                                                str12 = str50;
                                                str24 = str69;
                                                str25 = str67;
                                            } else {
                                                str24 = str69;
                                                str25 = str67;
                                                String str72 = str44;
                                                int iOptInt16 = jSONObjectOptJSONObject26.optInt(str72, -1);
                                                if (iOptInt16 == -1) {
                                                    i2a.d(j8aVar);
                                                    str12 = str50;
                                                    str44 = str72;
                                                } else {
                                                    str44 = str72;
                                                    String str73 = str45;
                                                    str23 = str68;
                                                    int iOptInt17 = jSONObjectOptJSONObject26.optInt(str73, -1);
                                                    if (iOptInt17 == -1) {
                                                        i2a.d(j8aVar);
                                                        String str74 = str50;
                                                        str32 = str32;
                                                        str12 = str74;
                                                        str27 = str31;
                                                        str16 = str38;
                                                        str17 = str46;
                                                        y8aVar = null;
                                                        str21 = str73;
                                                        str22 = str48;
                                                        j1aVar.a0 = y8aVar;
                                                    } else {
                                                        String str75 = str46;
                                                        str21 = str73;
                                                        String strOptString21 = jSONObjectOptJSONObject26.optString(str75);
                                                        if (TextUtils.isEmpty(strOptString21)) {
                                                            i2a.d(j8aVar);
                                                            String str76 = str50;
                                                            str32 = str32;
                                                            str12 = str76;
                                                            str17 = str75;
                                                            str27 = str31;
                                                        } else {
                                                            String str77 = str50;
                                                            str32 = str32;
                                                            str12 = str77;
                                                            str17 = str75;
                                                            str27 = str31;
                                                            int iOptInt18 = jSONObjectOptJSONObject25.optInt(str12, -1);
                                                            if (iOptInt18 == -1) {
                                                                i2a.d(j8aVar);
                                                            } else {
                                                                y8aVar2.h = iOptInt18;
                                                                rn9 rn9Var2 = new rn9(strOptString21, iOptInt16, iOptInt17);
                                                                str16 = str38;
                                                                jSONObjectOptJSONObject26.optInt(str16, -1);
                                                                y8aVar2.g = rn9Var2;
                                                                str22 = str48;
                                                                JSONArray jSONArrayOptJSONArray11 = jSONObjectOptJSONObject24.optJSONArray(str22);
                                                                if (jSONArrayOptJSONArray11 == null || jSONArrayOptJSONArray11.length() == 0) {
                                                                    i2a.d(j8aVar);
                                                                } else {
                                                                    qn9Var2.b = 2;
                                                                    qn9Var2.b(n4aVar3, jSONObjectOptJSONObject24, j1aVar.z);
                                                                    qn9Var2.b(n4aVar3, jSONObjectOptJSONObject25, j1aVar.z);
                                                                    zAdd = hashSet.add(MimeTypes.BASE_TYPE_VIDEO);
                                                                }
                                                            }
                                                        }
                                                        str16 = str38;
                                                        str22 = str48;
                                                    }
                                                }
                                            }
                                            str27 = str31;
                                            str16 = str38;
                                            str17 = str46;
                                            str22 = str48;
                                            y8aVar = null;
                                            str21 = str45;
                                            str23 = str68;
                                            j1aVar.a0 = y8aVar;
                                        }
                                        y8aVar = null;
                                        j1aVar.a0 = y8aVar;
                                    }
                                    str15 = str36;
                                } else {
                                    i2a.d(j8aVar);
                                }
                                str12 = str50;
                            }
                            str27 = str31;
                            str14 = str37;
                            str16 = str38;
                            str17 = str46;
                            str18 = str49;
                            str19 = str51;
                            y8aVar = null;
                            str20 = str39;
                            str21 = str45;
                            str22 = str48;
                            str23 = str42;
                            str24 = str40;
                            str25 = str47;
                            str26 = str41;
                            j1aVar.a0 = y8aVar;
                            str15 = str36;
                            break;
                        default:
                            return null;
                    }
                    str28 = str32;
                    length7 = i13;
                    str38 = str16;
                    str48 = str22;
                    str36 = str15;
                    str33 = str33;
                    str50 = str12;
                    i2aVar = i2aVar;
                    str41 = str26;
                    str39 = str20;
                    str29 = str29;
                    str30 = str13;
                    str37 = str14;
                    str35 = str35;
                    str31 = str27;
                    str32 = str28;
                    i12 = i14 + 1;
                    str47 = str25;
                    str40 = str24;
                    str42 = str23;
                    str45 = str21;
                    str51 = str19;
                    str49 = str18;
                    str46 = str17;
                    jSONArrayOptJSONArray7 = jSONArrayOptJSONArray7;
                }
                if (!zAdd) {
                    return null;
                }
                JSONObject jSONObjectOptJSONObject27 = jSONObject.optJSONObject("styleSettings");
                if (jSONObjectOptJSONObject27 != null) {
                    b(jSONObjectOptJSONObject27, j1aVar.Z);
                }
                return j1aVar;
            default:
                j8aVar.a(l6a.s);
                return null;
        }
    }

    public final void c(JSONObject jSONObject, jia jiaVar) {
        boolean zOptBoolean;
        this.a.b(jSONObject, jiaVar, ks9.d);
        Boolean bool = this.b.C;
        jiaVar.W = bool != null ? bool.booleanValue() : jSONObject.optBoolean("allowBackButton", jiaVar.W);
        jiaVar.S = (float) jSONObject.optDouble("allowCloseDelay", jiaVar.S);
        jiaVar.T = (float) jSONObject.optDouble("allowSkipDelay", jiaVar.T);
        jiaVar.U = jSONObject.optBoolean("allowSkip", jiaVar.U);
        String strOptString = jSONObject.optString("close_icon_hd");
        if (!TextUtils.isEmpty(strOptString)) {
            jiaVar.R = new h14(strOptString);
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("featureFlags");
            if (jSONObjectOptJSONObject == null) {
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(AdFormat.INTERSTITIAL);
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    zOptBoolean = jSONObjectOptJSONObject2.optBoolean("isHitMapEnabled");
                } catch (Throwable unused) {
                    zOptBoolean = false;
                }
            } else {
                zOptBoolean = false;
            }
            jiaVar.Q.c = zOptBoolean;
        } catch (Throwable unused2) {
        }
    }
}
