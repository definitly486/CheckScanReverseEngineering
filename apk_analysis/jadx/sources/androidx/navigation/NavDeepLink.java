package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.aw4;
import defpackage.b36;
import defpackage.c9;
import defpackage.cl4;
import defpackage.ef4;
import defpackage.eg9;
import defpackage.eh4;
import defpackage.fg;
import defpackage.fh8;
import defpackage.g17;
import defpackage.iq7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.js3;
import defpackage.k17;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.me0;
import defpackage.mx2;
import defpackage.n7;
import defpackage.ne4;
import defpackage.nm4;
import defpackage.nn1;
import defpackage.po4;
import defpackage.q15;
import defpackage.qn1;
import defpackage.qr1;
import defpackage.r15;
import defpackage.ra8;
import defpackage.rr1;
import defpackage.s15;
import defpackage.ta8;
import defpackage.ti5;
import defpackage.tx;
import defpackage.u96;
import defpackage.wr1;
import defpackage.ze;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class NavDeepLink {
    private static final String ANY_SYMBOLS_IN_THE_TAIL = "([\\s\\S]+?)?";
    private final String action;
    private final cl4 fragArgs$delegate;
    private final cl4 fragArgsAndRegex$delegate;
    private final cl4 fragPattern$delegate;
    private final cl4 fragRegex$delegate;
    private boolean isExactDeepLink;
    private final cl4 isParameterizedQuery$delegate;
    private boolean isSingleQueryParamValueOnly;
    private final String mimeType;
    private final cl4 mimeTypePattern$delegate;
    private String mimeTypeRegex;
    private final List<String> pathArgs;
    private final cl4 pathPattern$delegate;
    private String pathRegex;
    private final cl4 queryArgsMap$delegate;
    private final String uriPattern;
    private static final Companion Companion = new Companion(null);
    private static final g17 SCHEME_PATTERN = new g17("^[a-zA-Z]+[+\\w\\-.]*:");
    private static final g17 FILL_IN_PATTERN = new g17("\\{(.+?)\\}");
    private static final g17 SCHEME_REGEX = new g17("http[s]?://");
    private static final g17 WILDCARD_REGEX = new g17(".*");
    private static final g17 PATH_REGEX = new g17("([^/]*?|)");
    private static final g17 QUERY_PATTERN = new g17("^[^?#]+\\?([^#]*).*");

    public static final class MimeType implements Comparable<MimeType> {
        private String subType;
        private String type;

        public MimeType(String str) {
            List listH;
            List listO0;
            str.getClass();
            Pattern patternCompile = Pattern.compile("/");
            patternCompile.getClass();
            Matcher matcher = patternCompile.matcher(str);
            if (matcher.find()) {
                ArrayList arrayList = new ArrayList(10);
                int iEnd = 0;
                do {
                    arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
                    iEnd = matcher.end();
                } while (matcher.find());
                arrayList.add(str.subSequence(iEnd, str.length()).toString());
                listH = arrayList;
            } else {
                listH = u96.h(str.toString());
            }
            if (listH.isEmpty()) {
                listO0 = kx2.b;
            } else {
                ListIterator listIterator = listH.listIterator(listH.size());
                while (listIterator.hasPrevious()) {
                    if (((String) listIterator.previous()).length() != 0) {
                        listO0 = qn1.o0(listH, listIterator.nextIndex() + 1);
                    }
                }
                listO0 = kx2.b;
            }
            this.type = (String) listO0.get(0);
            this.subType = (String) listO0.get(1);
        }

        @Override // java.lang.Comparable
        public int compareTo(MimeType mimeType) {
            mimeType.getClass();
            int i = aa4.e(this.type, mimeType.type) ? 2 : 0;
            return aa4.e(this.subType, mimeType.subType) ? i + 1 : i;
        }

        public final String getSubType() {
            return this.subType;
        }

        public final String getType() {
            return this.type;
        }

        public final void setSubType(String str) {
            str.getClass();
            this.subType = str;
        }

        public final void setType(String str) {
            str.getClass();
            this.type = str;
        }
    }

    public static final class ParamQuery {
        private final List<String> arguments = new ArrayList();
        private String paramRegex;

        public final void addArgumentName(String str) {
            str.getClass();
            this.arguments.add(str);
        }

        public final String getArgumentName(int i) {
            return this.arguments.get(i);
        }

        public final List<String> getArguments() {
            return this.arguments;
        }

        public final String getParamRegex() {
            return this.paramRegex;
        }

        public final void setParamRegex(String str) {
            this.paramRegex = str;
        }

        public final int size() {
            return this.arguments.size();
        }
    }

    public NavDeepLink(String str, String str2, String str3) {
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        this.pathArgs = new ArrayList();
        int i = 1;
        this.pathPattern$delegate = new fh8(new qr1(this, i));
        int i2 = 2;
        this.isParameterizedQuery$delegate = new fh8(new rr1(this, i2));
        po4 po4Var = po4.NONE;
        this.queryArgsMap$delegate = nm4.a(po4Var, new aw4(this, i2));
        this.fragArgsAndRegex$delegate = nm4.a(po4Var, new js3(this, i2));
        this.fragArgs$delegate = nm4.a(po4Var, new eh4(this, i2));
        this.fragRegex$delegate = nm4.a(po4Var, new ti5(this, 0));
        this.fragPattern$delegate = new fh8(new ze(this, 4));
        this.mimeTypePattern$delegate = new fh8(new wr1(this, i));
        parsePath();
        parseMime();
    }

    private final void buildRegex(String str, List<String> list, StringBuilder sb) {
        int i = 0;
        for (s15 s15VarA = g17.a(FILL_IN_PATTERN, str); s15VarA != null; s15VarA = s15VarA.next()) {
            q15 q15VarB = s15VarA.c.b(1);
            q15VarB.getClass();
            list.add(q15VarB.a);
            if (s15VarA.getRange().b > i) {
                String strQuote = Pattern.quote(str.substring(i, s15VarA.getRange().b));
                strQuote.getClass();
                sb.append(strQuote);
            }
            String strPattern = PATH_REGEX.b.pattern();
            strPattern.getClass();
            sb.append(strPattern);
            i = s15VarA.getRange().c + 1;
        }
        if (i < str.length()) {
            String strQuote2 = Pattern.quote(str.substring(i));
            strQuote2.getClass();
            sb.append(strQuote2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List fragArgs_delegate$lambda$5(NavDeepLink navDeepLink) {
        List<String> list;
        b36<List<String>, String> fragArgsAndRegex = navDeepLink.getFragArgsAndRegex();
        return (fragArgsAndRegex == null || (list = fragArgsAndRegex.b) == null) ? new ArrayList() : list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g17 fragPattern_delegate$lambda$8(NavDeepLink navDeepLink) {
        String fragRegex = navDeepLink.getFragRegex();
        if (fragRegex != null) {
            return new g17(fragRegex, k17.IGNORE_CASE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String fragRegex_delegate$lambda$6(NavDeepLink navDeepLink) {
        b36<List<String>, String> fragArgsAndRegex = navDeepLink.getFragArgsAndRegex();
        if (fragArgsAndRegex != null) {
            return fragArgsAndRegex.c;
        }
        return null;
    }

    private final List<String> getFragArgs() {
        return (List) this.fragArgs$delegate.getValue();
    }

    private final b36<List<String>, String> getFragArgsAndRegex() {
        return (b36) this.fragArgsAndRegex$delegate.getValue();
    }

    private final g17 getFragPattern() {
        return (g17) this.fragPattern$delegate.getValue();
    }

    private final String getFragRegex() {
        return (String) this.fragRegex$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getMatchingArguments$lambda$13(Bundle bundle, String str) {
        str.getClass();
        return !SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundle), str);
    }

    private final boolean getMatchingPathArguments(r15 r15Var, Bundle bundle, Map<String, NavArgument> map) {
        List<String> list = this.pathArgs;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            String str = (String) obj;
            q15 q15VarB = r15Var.getGroups().b(i2);
            String strDecode = q15VarB != null ? NavUriUtils.INSTANCE.decode(q15VarB.a) : null;
            if (strDecode == null) {
                strDecode = "";
            }
            try {
                parseArgument(bundle, str, strDecode, map.get(str));
                arrayList.add(j59.a);
                i = i2;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return true;
    }

    private final boolean getMatchingQueryArguments(Uri uri, Bundle bundle, Map<String, NavArgument> map) {
        String query;
        for (Map.Entry<String, ParamQuery> entry : getQueryArgsMap().entrySet()) {
            String key = entry.getKey();
            ParamQuery value = entry.getValue();
            List<String> queryParameters = uri.getQueryParameters(key);
            if (this.isSingleQueryParamValueOnly && (query = uri.getQuery()) != null && !query.equals(uri.toString())) {
                queryParameters = u96.h(query);
            }
            if (!parseInputParams(queryParameters, value, bundle, map)) {
                return false;
            }
        }
        return true;
    }

    private final void getMatchingUriFragment(String str, Bundle bundle, Map<String, NavArgument> map) {
        s15 s15VarD;
        g17 fragPattern = getFragPattern();
        if (fragPattern == null || (s15VarD = fragPattern.d(String.valueOf(str))) == null) {
            return;
        }
        List<String> fragArgs = getFragArgs();
        ArrayList arrayList = new ArrayList(kn1.q(fragArgs, 10));
        int i = 0;
        for (Object obj : fragArgs) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            String str2 = (String) obj;
            q15 q15VarB = s15VarD.c.b(i2);
            String strDecode = q15VarB != null ? NavUriUtils.INSTANCE.decode(q15VarB.a) : null;
            if (strDecode == null) {
                strDecode = "";
            }
            try {
                parseArgument(bundle, str2, strDecode, map.get(str2));
                arrayList.add(j59.a);
                i = i2;
            } catch (IllegalArgumentException unused) {
                return;
            }
        }
    }

    private final g17 getMimeTypePattern() {
        return (g17) this.mimeTypePattern$delegate.getValue();
    }

    private final g17 getPathPattern() {
        return (g17) this.pathPattern$delegate.getValue();
    }

    private final Map<String, ParamQuery> getQueryArgsMap() {
        return (Map) this.queryArgsMap$delegate.getValue();
    }

    private final boolean isParameterizedQuery() {
        return ((Boolean) this.isParameterizedQuery$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isParameterizedQuery_delegate$lambda$2(NavDeepLink navDeepLink) {
        String str = navDeepLink.uriPattern;
        return str != null && QUERY_PATTERN.e(str);
    }

    private final boolean matchAction(String str) {
        String str2 = this.action;
        if (str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return aa4.e(str2, str);
    }

    private final boolean matchMimeType(String str) {
        if (this.mimeType == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        g17 mimeTypePattern = getMimeTypePattern();
        mimeTypePattern.getClass();
        return mimeTypePattern.e(str);
    }

    private final boolean matchUri(Uri uri) {
        if (getPathPattern() == null) {
            return true;
        }
        if (uri == null) {
            return false;
        }
        g17 pathPattern = getPathPattern();
        pathPattern.getClass();
        return pathPattern.e(uri.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g17 mimeTypePattern_delegate$lambda$10(NavDeepLink navDeepLink) {
        String str = navDeepLink.mimeTypeRegex;
        if (str != null) {
            return new g17(str);
        }
        return null;
    }

    private final void parseArgument(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument != null) {
            navArgument.getType().parseAndPut(bundle, str, str2);
        } else {
            SavedStateWriter.m9489putStringimpl(SavedStateWriter.m9456constructorimpl(bundle), str, str2);
        }
    }

    private final boolean parseArgumentForRepeatedParam(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (!SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundle), str)) {
            return true;
        }
        if (navArgument == null) {
            return false;
        }
        NavType<Object> type = navArgument.getType();
        type.parseAndPut(bundle, str, str2, type.get(bundle, str));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b36<List<String>, String> parseFragment() {
        String str = this.uriPattern;
        if (str == null) {
            return null;
        }
        NavUriUtils navUriUtils = NavUriUtils.INSTANCE;
        if (navUriUtils.parse(str).getFragment() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String fragment = navUriUtils.parse(this.uriPattern).getFragment();
        StringBuilder sb = new StringBuilder();
        fragment.getClass();
        buildRegex(fragment, arrayList, sb);
        return new b36<>(arrayList, sb.toString());
    }

    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    private final boolean parseInputParams(List<String> list, ParamQuery paramQuery, Bundle bundle, Map<String, NavArgument> map) {
        s15 s15Var;
        Object objValueOf;
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        Iterator<T> it = paramQuery.getArguments().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            NavArgument navArgument = map.get(str);
            NavType<Object> type = navArgument != null ? navArgument.getType() : null;
            if ((type instanceof CollectionNavType) && !navArgument.isDefaultValuePresent()) {
                CollectionNavType collectionNavType = (CollectionNavType) type;
                collectionNavType.put(bundleBundleOf, str, collectionNavType.emptyCollection());
            }
        }
        for (String str2 : list) {
            String paramRegex = paramQuery.getParamRegex();
            if (paramRegex != null) {
                Pattern patternCompile = Pattern.compile(paramRegex);
                patternCompile.getClass();
                str2.getClass();
                Matcher matcher = patternCompile.matcher(str2);
                matcher.getClass();
                if (matcher.matches()) {
                    s15Var = new s15(matcher, str2);
                } else {
                    s15Var = null;
                }
            } else {
                s15Var = null;
            }
            if (s15Var == null) {
                return false;
            }
            List<String> arguments = paramQuery.getArguments();
            ArrayList arrayList = new ArrayList(kn1.q(arguments, 10));
            int i = 0;
            for (Object obj : arguments) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                String str3 = (String) obj;
                q15 q15VarB = s15Var.c.b(i2);
                String str4 = q15VarB != null ? q15VarB.a : null;
                if (str4 == null) {
                    str4 = "";
                }
                NavArgument navArgument2 = map.get(str3);
                try {
                    if (SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundleBundleOf), str3)) {
                        objValueOf = Boolean.valueOf(parseArgumentForRepeatedParam(bundleBundleOf, str3, str4, navArgument2));
                    } else {
                        parseArgument(bundleBundleOf, str3, str4, navArgument2);
                        objValueOf = j59.a;
                    }
                } catch (IllegalArgumentException unused) {
                    objValueOf = j59.a;
                }
                arrayList.add(objValueOf);
                i = i2;
            }
        }
        SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundle), bundleBundleOf);
        return true;
    }

    private final void parseMime() {
        if (this.mimeType == null) {
            return;
        }
        Pattern patternCompile = Pattern.compile("^[\\s\\S]+/[\\s\\S]+$");
        patternCompile.getClass();
        String str = this.mimeType;
        str.getClass();
        boolean zMatches = patternCompile.matcher(str).matches();
        String str2 = this.mimeType;
        if (!zMatches) {
            c9.f(me0.c("The given mimeType ", str2, " does not match to required \"type/subtype\" format"));
            return;
        }
        MimeType mimeType = new MimeType(str2);
        this.mimeTypeRegex = ra8.y("^(" + mimeType.getType() + "|[*]+)/(" + mimeType.getSubType() + "|[*]+)$", "*|[*]", "[\\s\\S]");
    }

    private final void parsePath() {
        if (this.uriPattern == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("^");
        g17 g17Var = SCHEME_PATTERN;
        String str = this.uriPattern;
        g17Var.getClass();
        str.getClass();
        if (!g17Var.b.matcher(str).find()) {
            String strPattern = SCHEME_REGEX.b.pattern();
            strPattern.getClass();
            sb.append(strPattern);
        }
        Pattern patternCompile = Pattern.compile("(\\?|#|$)");
        patternCompile.getClass();
        String str2 = this.uriPattern;
        str2.getClass();
        Matcher matcher = patternCompile.matcher(str2);
        matcher.getClass();
        boolean z = false;
        s15 s15VarB = eg9.b(matcher, 0, str2);
        if (s15VarB != null) {
            buildRegex(this.uriPattern.substring(0, s15VarB.getRange().b), this.pathArgs, sb);
            g17 g17Var2 = WILDCARD_REGEX;
            g17Var2.getClass();
            if (!g17Var2.b.matcher(sb).find()) {
                g17 g17Var3 = PATH_REGEX;
                g17Var3.getClass();
                if (!g17Var3.b.matcher(sb).find()) {
                    z = true;
                }
            }
            this.isExactDeepLink = z;
            sb.append("($|(\\?(.)*)|(#(.)*))");
        }
        this.pathRegex = saveWildcardInRegex(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, ParamQuery> parseQuery() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (isParameterizedQuery()) {
            NavUriUtils navUriUtils = NavUriUtils.INSTANCE;
            String str = this.uriPattern;
            str.getClass();
            Uri uri = navUriUtils.parse(str);
            for (String str2 : uri.getQueryParameterNames()) {
                StringBuilder sb = new StringBuilder();
                List<String> queryParameters = uri.getQueryParameters(str2);
                if (queryParameters.size() > 1) {
                    c9.f(me0.d(n7.d("Query parameter ", str2, " must only be present once in "), this.uriPattern, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                    return null;
                }
                String str3 = (String) qn1.V(queryParameters);
                if (str3 == null) {
                    this.isSingleQueryParamValueOnly = true;
                    str3 = str2;
                }
                ParamQuery paramQuery = new ParamQuery();
                int i = 0;
                for (s15 s15VarA = g17.a(FILL_IN_PATTERN, str3); s15VarA != null; s15VarA = s15VarA.next()) {
                    q15 q15VarB = s15VarA.c.b(1);
                    q15VarB.getClass();
                    paramQuery.addArgumentName(q15VarB.a);
                    if (s15VarA.getRange().b > i) {
                        String strQuote = Pattern.quote(str3.substring(i, s15VarA.getRange().b));
                        strQuote.getClass();
                        sb.append(strQuote);
                    }
                    sb.append(ANY_SYMBOLS_IN_THE_TAIL);
                    i = s15VarA.getRange().c + 1;
                }
                if (i < str3.length()) {
                    String strQuote2 = Pattern.quote(str3.substring(i));
                    strQuote2.getClass();
                    sb.append(strQuote2);
                }
                sb.append("$");
                paramQuery.setParamRegex(saveWildcardInRegex(sb.toString()));
                linkedHashMap.put(str2, paramQuery);
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g17 pathPattern_delegate$lambda$1(NavDeepLink navDeepLink) {
        String str = navDeepLink.pathRegex;
        if (str != null) {
            return new g17(str, k17.IGNORE_CASE);
        }
        return null;
    }

    private final String saveWildcardInRegex(String str) {
        if (ta8.D(str, "\\Q", false) && ta8.D(str, "\\E", false)) {
            return ra8.y(str, ".*", "\\E.*\\Q");
        }
        return ta8.D(str, "\\.\\*", false) ? ra8.y(str, "\\.\\*", ".*") : str;
    }

    public final int calculateMatchingPathSegments$navigation_common_release(Uri uri) {
        if (uri == null || this.uriPattern == null) {
            return 0;
        }
        return qn1.X(uri.getPathSegments(), NavUriUtils.INSTANCE.parse(this.uriPattern).getPathSegments()).size();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NavDeepLink)) {
            NavDeepLink navDeepLink = (NavDeepLink) obj;
            if (aa4.e(this.uriPattern, navDeepLink.uriPattern) && aa4.e(this.action, navDeepLink.action) && aa4.e(this.mimeType, navDeepLink.mimeType)) {
                return true;
            }
        }
        return false;
    }

    public final String getAction() {
        return this.action;
    }

    public final List<String> getArgumentsNames$navigation_common_release() {
        List<String> list = this.pathArgs;
        Collection<ParamQuery> collectionValues = getQueryArgsMap().values();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            nn1.s(((ParamQuery) it.next()).getArguments(), arrayList);
        }
        return qn1.h0(getFragArgs(), qn1.h0(arrayList, list));
    }

    public final Bundle getMatchingArguments(Uri uri, Map<String, NavArgument> map) {
        s15 s15VarD;
        uri.getClass();
        map.getClass();
        g17 pathPattern = getPathPattern();
        if (pathPattern == null || (s15VarD = pathPattern.d(uri.toString())) == null) {
            return null;
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        if (!getMatchingPathArguments(s15VarD, bundleBundleOf, map)) {
            return null;
        }
        if (isParameterizedQuery() && !getMatchingQueryArguments(uri, bundleBundleOf, map)) {
            return null;
        }
        getMatchingUriFragment(uri.getFragment(), bundleBundleOf, map);
        if (NavArgumentKt.missingRequiredArguments(map, new tx(bundleBundleOf, 3)).isEmpty()) {
            return bundleBundleOf;
        }
        return null;
    }

    public final Bundle getMatchingPathAndQueryArgs$navigation_common_release(Uri uri, Map<String, NavArgument> map) {
        g17 pathPattern;
        s15 s15VarD;
        map.getClass();
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        if (uri != null && (pathPattern = getPathPattern()) != null && (s15VarD = pathPattern.d(uri.toString())) != null) {
            getMatchingPathArguments(s15VarD, bundleBundleOf, map);
            if (isParameterizedQuery()) {
                getMatchingQueryArguments(uri, bundleBundleOf, map);
            }
        }
        return bundleBundleOf;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final int getMimeTypeMatchRating(String str) {
        str.getClass();
        if (this.mimeType == null) {
            return -1;
        }
        g17 mimeTypePattern = getMimeTypePattern();
        mimeTypePattern.getClass();
        if (mimeTypePattern.e(str)) {
            return new MimeType(this.mimeType).compareTo(new MimeType(str));
        }
        return -1;
    }

    public final String getUriPattern() {
        return this.uriPattern;
    }

    public int hashCode() {
        String str = this.uriPattern;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.action;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final boolean isExactDeepLink() {
        return this.isExactDeepLink;
    }

    public final boolean matches$navigation_common_release(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        return matchUri(navDeepLinkRequest.getUri()) && matchAction(navDeepLinkRequest.getAction()) && matchMimeType(navDeepLinkRequest.getMimeType());
    }

    public final void setExactDeepLink$navigation_common_release(boolean z) {
        this.isExactDeepLink = z;
    }

    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        private String action;
        private String mimeType;
        private String uriPattern;

        public static final Builder fromAction(String str) {
            return Companion.fromAction(str);
        }

        public static final Builder fromMimeType(String str) {
            return Companion.fromMimeType(str);
        }

        public static final Builder fromUriPattern(String str) {
            return Companion.fromUriPattern(str);
        }

        public static Builder setUriPattern$default(Builder builder, String str, Map map, int i, Object obj) {
            if ((i & 2) != 0) {
                map = mx2.b;
            }
            str.getClass();
            map.getClass();
            aa4.i();
            throw null;
        }

        public final NavDeepLink build() {
            return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
        }

        public final Builder setAction(String str) {
            str.getClass();
            if (str.length() > 0) {
                this.action = str;
                return this;
            }
            fg.c("The NavDeepLink cannot have an empty action.");
            return null;
        }

        public final Builder setMimeType(String str) {
            str.getClass();
            this.mimeType = str;
            return this;
        }

        public final <T> Builder setUriPattern(ne4<T> ne4Var, String str, Map<ef4, NavType<?>> map) {
            ne4Var.getClass();
            str.getClass();
            map.getClass();
            this.uriPattern = RouteSerializerKt.generateRoutePattern(iq7.b(ne4Var), map, str);
            return this;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public static Builder fromUriPattern$default(Companion companion, String str, Map map, int i, Object obj) {
                if ((i & 2) != 0) {
                    map = mx2.b;
                }
                str.getClass();
                map.getClass();
                new Builder();
                aa4.i();
                throw null;
            }

            public final Builder fromAction(String str) {
                str.getClass();
                if (str.length() <= 0) {
                    fg.c("The NavDeepLink cannot have an empty action.");
                    return null;
                }
                Builder builder = new Builder();
                builder.setAction(str);
                return builder;
            }

            public final Builder fromMimeType(String str) {
                str.getClass();
                Builder builder = new Builder();
                builder.setMimeType(str);
                return builder;
            }

            public final <T> Builder fromUriPattern(String str, Map<ef4, NavType<?>> map) {
                str.getClass();
                map.getClass();
                new Builder();
                aa4.i();
                throw null;
            }

            private Companion() {
            }

            public final Builder fromUriPattern(String str) {
                str.getClass();
                Builder builder = new Builder();
                builder.setUriPattern(str);
                return builder;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Builder setUriPattern$default(Builder builder, ne4 ne4Var, String str, Map map, int i, Object obj) {
            if ((i & 4) != 0) {
                map = mx2.b;
            }
            return builder.setUriPattern(ne4Var, str, map);
        }

        public final <T> Builder setUriPattern(ne4<T> ne4Var, String str) {
            ne4Var.getClass();
            str.getClass();
            return setUriPattern$default(this, ne4Var, str, null, 4, null);
        }

        public final <T> Builder setUriPattern(String str, Map<ef4, NavType<?>> map) {
            str.getClass();
            map.getClass();
            aa4.i();
            throw null;
        }

        public final Builder setUriPattern(String str) {
            str.getClass();
            this.uriPattern = str;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final boolean matches$navigation_common_release(Uri uri) {
        uri.getClass();
        return matches$navigation_common_release(new NavDeepLinkRequest(uri, null, null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLink(String str) {
        this(str, null, null);
        str.getClass();
    }
}
