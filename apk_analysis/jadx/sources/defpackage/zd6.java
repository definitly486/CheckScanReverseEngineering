package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zd6 implements oc6 {
    public static final List<String> i = u96.h("groups");
    public final Context b;
    public final ta6 c;
    public final Object d = new Object();
    public volatile SharedPreferences e = null;
    public final LinkedHashMap f = new LinkedHashMap();
    public final LinkedHashSet g = new LinkedHashSet();
    public List<String> h;

    public zd6(Context context, ta6 ta6Var) {
        this.b = context;
        this.c = ta6Var;
    }

    @Override // defpackage.oc6
    public final void a(String str, Object obj) {
        Set<String> set;
        str.getClass();
        obj.getClass();
        synchronized (this.d) {
            SharedPreferences sharedPreferencesF = f();
            if (sharedPreferencesF == null) {
                this.g.remove(str);
                this.f.put(str, obj);
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesF.edit();
            if (obj instanceof Boolean) {
                editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof String) {
                editorEdit.putString(str, (String) obj);
            } else if (obj instanceof Float) {
                editorEdit.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Long) {
                editorEdit.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                editorEdit.putInt(str, ((Number) obj).intValue());
            } else {
                if (obj instanceof Collection) {
                    Set<String> setY0 = qn1.y0((Iterable) obj);
                    set = setY0 instanceof Set ? setY0 : null;
                    if (set == null || editorEdit.putStringSet(str, set) == null) {
                        editorEdit.getClass();
                        h(str, obj, editorEdit);
                        j59 j59Var = j59.a;
                    }
                } else if (obj instanceof Object[]) {
                    Set<String> setK0 = yr.k0((Object[]) obj);
                    set = setK0 instanceof Set ? setK0 : null;
                    if (set == null || editorEdit.putStringSet(str, set) == null) {
                        editorEdit.getClass();
                        h(str, obj, editorEdit);
                        j59 j59Var2 = j59.a;
                    }
                } else {
                    editorEdit.getClass();
                    h(str, obj, editorEdit);
                    j59 j59Var3 = j59.a;
                }
            }
            editorEdit.apply();
            j59 j59Var4 = j59.a;
        }
    }

    @Override // defpackage.oc6
    public final boolean b() {
        return f() != null;
    }

    @Override // defpackage.oc6
    public final void c(List<String> list) {
        list.getClass();
        synchronized (this.d) {
            SharedPreferences sharedPreferencesF = f();
            if (sharedPreferencesF == null) {
                Set setKeySet = this.f.keySet();
                setKeySet.getClass();
                Iterator it = setKeySet.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    str.getClass();
                    if (!list.contains(str)) {
                        it.remove();
                    }
                }
                this.h = list;
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesF.edit();
            Set<String> setG = g();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : setG) {
                if (list.contains((String) obj)) {
                    linkedHashSet.add(obj);
                }
            }
            Set<String> setKeySet2 = sharedPreferencesF.getAll().keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : setKeySet2) {
                String str2 = (String) obj2;
                if (!aa4.e(str2, "stringifiedKeys") && !list.contains(str2)) {
                    arrayList.add(obj2);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                editorEdit.remove((String) it2.next());
            }
            if (linkedHashSet.isEmpty()) {
                editorEdit.remove("stringifiedKeys");
            } else {
                editorEdit.putStringSet("stringifiedKeys", linkedHashSet);
            }
            editorEdit.apply();
            j59 j59Var = j59.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0017 A[PHI: r1
      0x0017: PHI (r1v3 java.lang.Object) = (r1v2 java.lang.Object), (r1v6 java.lang.Object) binds: [B:13:0x0021, B:7:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.oc6
    public final Object d(Object obj, String str) {
        Object obj2;
        str.getClass();
        synchronized (this.d) {
            try {
                SharedPreferences sharedPreferencesF = f();
                if (sharedPreferencesF != null) {
                    obj2 = sharedPreferencesF.getAll().get(str);
                    if (obj2 != null) {
                        obj = obj2;
                    }
                } else {
                    obj2 = this.f.get(str);
                    if (obj2 != null) {
                        obj = obj2;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return e(str, obj, g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object e(String str, Object obj, Set<String> set) {
        if ((obj instanceof String) && (i.contains(str) || set.contains(str))) {
            obj = (String) obj;
            try {
                Object objF = this.c.b().a.f(obj, new x39(Object.class));
                if (objF != null) {
                    return objF;
                }
            } catch (Throwable unused) {
            }
        }
        return obj;
    }

    public final SharedPreferences f() {
        SharedPreferences sharedPreferences = this.e;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        synchronized (this.d) {
            try {
                SharedPreferences sharedPreferences2 = this.e;
                if (sharedPreferences2 != null) {
                    return sharedPreferences2;
                }
                try {
                    SharedPreferences sharedPreferences3 = this.b.getSharedPreferences("posthog-android-" + this.c.t, 0);
                    if (sharedPreferences3 == null) {
                        return null;
                    }
                    this.e = sharedPreferences3;
                    List<String> list = this.h;
                    this.h = null;
                    List listT0 = qn1.t0(this.g);
                    this.g.clear();
                    Map mapL = n05.l(this.f);
                    this.f.clear();
                    if (list != null) {
                        c(list);
                    }
                    Iterator it = listT0.iterator();
                    while (it.hasNext()) {
                        remove((String) it.next());
                    }
                    for (Map.Entry entry : mapL.entrySet()) {
                        a((String) entry.getKey(), entry.getValue());
                    }
                    return sharedPreferences3;
                } catch (IllegalStateException e) {
                    this.c.v.a("Shared preferences are not available until the device is unlocked (Direct Boot): " + e + '.');
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Set<String> g() {
        Set<String> stringSet;
        SharedPreferences sharedPreferencesF = f();
        ox2 ox2Var = ox2.b;
        return (sharedPreferencesF == null || (stringSet = sharedPreferencesF.getStringSet("stringifiedKeys", ox2Var)) == null) ? ox2Var : stringSet;
    }

    @Override // defpackage.oc6
    public final LinkedHashMap getAll() {
        Map mapL;
        synchronized (this.d) {
            try {
                SharedPreferences sharedPreferencesF = f();
                if (sharedPreferencesF != null) {
                    Map<String, ?> all = sharedPreferencesF.getAll();
                    all.getClass();
                    mapL = n05.l(all);
                    if (!(mapL instanceof Map)) {
                        mapL = null;
                    }
                    if (mapL == null) {
                        mapL = mx2.b;
                    }
                } else {
                    mapL = n05.l(this.f);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapL.entrySet()) {
            String str = (String) entry.getKey();
            oc6.a.getClass();
            if (!oc6.a.b.contains(str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Set<String> setG = g();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str2 = (String) entry2.getKey();
            Object objE = e(str2, entry2.getValue(), setG);
            if (objE != null) {
                linkedHashMap2.put(str2, objE);
            }
        }
        return linkedHashMap2;
    }

    public final void h(String str, Object obj, SharedPreferences.Editor editor) {
        ta6 ta6Var = this.c;
        try {
            wd6 wd6VarB = ta6Var.b();
            wd6VarB.getClass();
            obj.getClass();
            Gson gson = wd6VarB.a;
            StringBuilder sb = new StringBuilder();
            gson.m(obj, Object.class, sb);
            editor.putString(str, sb.toString());
            editor.putStringSet("stringifiedKeys", mr7.m(g(), str));
        } catch (Throwable unused) {
            ta6Var.v.a("Value type: " + obj.getClass().getName() + " and value: " + obj + " isn't valid.");
        }
    }

    @Override // defpackage.oc6
    public final void remove(String str) {
        str.getClass();
        synchronized (this.d) {
            SharedPreferences sharedPreferencesF = f();
            if (sharedPreferencesF == null) {
                this.f.remove(str);
                this.g.add(str);
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesF.edit();
            editorEdit.remove(str);
            Set<String> setX0 = qn1.x0(g());
            if (setX0.contains(str)) {
                setX0.remove(str);
                editorEdit.putStringSet("stringifiedKeys", setX0);
            }
            editorEdit.apply();
            j59 j59Var = j59.a;
        }
    }
}
