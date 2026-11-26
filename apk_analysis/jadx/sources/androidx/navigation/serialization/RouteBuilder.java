package androidx.navigation.serialization;

import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import defpackage.df4;
import defpackage.g03;
import defpackage.h03;
import defpackage.lt0;
import defpackage.me0;
import defpackage.n7;
import defpackage.qn1;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteBuilder<T> {
    private final String path;
    private String pathArgs;
    private String queryArgs;
    private final df4<T> serializer;

    public enum ParamType {
        PATH,
        QUERY;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<ParamType> getEntries() {
            return $ENTRIES;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ParamType.values().length];
            try {
                iArr[ParamType.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ParamType.QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RouteBuilder(df4<T> df4Var) {
        df4Var.getClass();
        this.pathArgs = "";
        this.queryArgs = "";
        this.serializer = df4Var;
        this.path = df4Var.getDescriptor().h();
    }

    private final void addPath(String str) {
        this.pathArgs += '/' + str;
    }

    private final void addQuery(String str, String str2) {
        this.queryArgs += (this.queryArgs.length() == 0 ? "?" : "&") + str + '=' + str2;
    }

    private final ParamType computeParamType(int i, NavType<Object> navType) {
        return ((navType instanceof CollectionNavType) || this.serializer.getDescriptor().i(i)) ? ParamType.QUERY : ParamType.PATH;
    }

    public final void appendArg(int i, String str, NavType<Object> navType, List<String> list) {
        str.getClass();
        navType.getClass();
        list.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[computeParamType(i, navType).ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                me0.e();
                return;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                addQuery(str, (String) it.next());
            }
            return;
        }
        if (list.size() == 1) {
            addPath((String) qn1.T(list));
            return;
        }
        StringBuilder sbD = n7.d("Expected one value for argument ", str, ", found ");
        sbD.append(list.size());
        sbD.append("values instead.");
        throw new IllegalArgumentException(sbD.toString().toString());
    }

    public final void appendPattern(int i, String str, NavType<Object> navType) {
        str.getClass();
        navType.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[computeParamType(i, navType).ordinal()];
        if (i2 == 1) {
            addPath(lt0.d('}', "{", str));
        } else if (i2 == 2) {
            addQuery(str, lt0.d('}', "{", str));
        } else {
            me0.e();
        }
    }

    public final String build() {
        return this.path + this.pathArgs + this.queryArgs;
    }

    public RouteBuilder(String str, df4<T> df4Var) {
        str.getClass();
        df4Var.getClass();
        this.pathArgs = "";
        this.queryArgs = "";
        this.serializer = df4Var;
        this.path = str;
    }
}
