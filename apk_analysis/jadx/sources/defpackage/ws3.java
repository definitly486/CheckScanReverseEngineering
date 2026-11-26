package defpackage;

import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.JavaTimeTypeAdapters;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.a;
import java.lang.reflect.Type;
import java.time.Duration;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes4.dex */
public final class ws3 {
    public static final wi3 l = wi3.d;
    public static final a93 m = a93.IDENTITY;
    public static final ax8 n = ax8.DOUBLE;
    public static final ax8 o = ax8.LAZILY_PARSED_NUMBER;
    public static final px1 p;
    public static final JsonAdapterAnnotationTypeAdapterFactory q;
    public static final ws3 r;
    public static final List<t39> s;
    public final Excluder a = Excluder.d;
    public final fw4 b = fw4.DEFAULT;
    public final b93 c = m;
    public final HashMap d = new HashMap();
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public wi3 g = l;
    public u98 h = null;
    public bx8 i = n;
    public final bx8 j = o;
    public final ArrayDeque<y07> k = new ArrayDeque<>();

    static {
        px1 px1Var = new px1(Collections.EMPTY_LIST, Collections.EMPTY_MAP);
        p = px1Var;
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(px1Var);
        q = jsonAdapterAnnotationTypeAdapterFactory;
        ws3 ws3Var = new ws3();
        r = ws3Var;
        s = ws3Var.a(px1Var, jsonAdapterAnnotationTypeAdapterFactory);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List b(AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (abstractCollection.size() == 1) {
            return Collections.singletonList(abstractCollection instanceof List ? ((List) abstractCollection).get(0) : abstractCollection.iterator().next());
        }
        return Collections.unmodifiableList(Arrays.asList(abstractCollection.toArray()));
    }

    public final List<t39> a(px1 px1Var, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.C);
        arrayList.add(ObjectTypeAdapter.d(this.i));
        arrayList.add(this.a);
        ArrayList arrayList2 = this.e;
        if (!arrayList2.isEmpty()) {
            ArrayList arrayList3 = new ArrayList(arrayList2);
            Collections.reverse(arrayList3);
            arrayList.addAll(arrayList3);
        }
        ArrayList arrayList4 = this.f;
        if (!arrayList4.isEmpty()) {
            ArrayList arrayList5 = new ArrayList(arrayList4);
            Collections.reverse(arrayList5);
            arrayList.addAll(arrayList5);
        }
        t39 t39Var = a.a;
        arrayList.add(TypeAdapters.s);
        arrayList.add(TypeAdapters.g);
        arrayList.add(TypeAdapters.d);
        arrayList.add(TypeAdapters.e);
        arrayList.add(TypeAdapters.f);
        TypeAdapter<Number> typeAdapterA = this.b.a();
        arrayList.add(TypeAdapters.f(Long.TYPE, Long.class, typeAdapterA));
        arrayList.add(TypeAdapters.f(Double.TYPE, Double.class, TypeAdapters.n));
        arrayList.add(TypeAdapters.f(Float.TYPE, Float.class, TypeAdapters.m));
        ax8 ax8Var = ax8.LAZILY_PARSED_NUMBER;
        bx8 bx8Var = this.j;
        arrayList.add(bx8Var == ax8Var ? NumberTypeAdapter.b : NumberTypeAdapter.d(bx8Var));
        arrayList.add(TypeAdapters.h);
        arrayList.add(TypeAdapters.i);
        arrayList.add(TypeAdapters.e(AtomicLong.class, TypeAdapters.a(typeAdapterA)));
        arrayList.add(TypeAdapters.e(AtomicLongArray.class, TypeAdapters.b(typeAdapterA)));
        arrayList.add(TypeAdapters.j);
        arrayList.add(TypeAdapters.o);
        arrayList.add(TypeAdapters.t);
        arrayList.add(TypeAdapters.u);
        arrayList.add(TypeAdapters.p);
        arrayList.add(TypeAdapters.q);
        arrayList.add(TypeAdapters.r);
        arrayList.add(TypeAdapters.v);
        arrayList.add(TypeAdapters.w);
        arrayList.add(TypeAdapters.y);
        arrayList.add(TypeAdapters.z);
        arrayList.add(TypeAdapters.B);
        arrayList.add(TypeAdapters.x);
        arrayList.add(TypeAdapters.b);
        arrayList.add(DefaultDateTypeAdapter.c);
        arrayList.add(TypeAdapters.A);
        t39 t39Var2 = null;
        try {
            TypeAdapter<Duration> typeAdapter = JavaTimeTypeAdapters.a;
            t39Var2 = ((TypeAdapters.b) JavaTimeTypeAdapters.class.getDeclaredConstructor(null).newInstance(null)).get();
        } catch (LinkageError | ReflectiveOperationException unused) {
        }
        if (t39Var2 != null) {
            arrayList.add(t39Var2);
        }
        arrayList.addAll(a.d);
        arrayList.add(ArrayTypeAdapter.c);
        arrayList.add(TypeAdapters.a);
        arrayList.add(new CollectionTypeAdapterFactory(px1Var));
        arrayList.add(new MapTypeAdapterFactory(px1Var));
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.D);
        arrayList.add(new ReflectiveTypeAdapterFactory(px1Var, this.c, this.a, jsonAdapterAnnotationTypeAdapterFactory, b(this.k)));
        arrayList.trimToSize();
        return Collections.unmodifiableList(arrayList);
    }

    public final void c(Type type, Object obj) {
        Objects.requireNonNull(type);
        boolean z = obj instanceof wd4;
        if (!z && !(obj instanceof nc4) && !(obj instanceof c64) && !(obj instanceof TypeAdapter)) {
            bg.h(obj.getClass().getName(), "Class ", " does not implement any supported type adapter class or interface");
            return;
        }
        if (type == Object.class) {
            r01.e(type, "Cannot override built-in adapter for ");
            return;
        }
        if (obj instanceof c64) {
            this.d.put(type, (c64) obj);
        }
        ArrayList arrayList = this.e;
        if (z || (obj instanceof nc4)) {
            arrayList.add(TreeTypeAdapter.e(new x39(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            arrayList.add(TypeAdapters.d(new x39(type), (TypeAdapter) obj));
        }
    }
}
