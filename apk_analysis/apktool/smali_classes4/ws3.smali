.class public final Lws3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lwi3;

.field public static final m:La93;

.field public static final n:Lax8;

.field public static final o:Lax8;

.field public static final p:Lpx1;

.field public static final q:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public static final r:Lws3;

.field public static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt39;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/gson/internal/Excluder;

.field public final b:Lfw4;

.field public final c:Lb93;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Lwi3;

.field public h:Lu98;

.field public i:Lbx8;

.field public final j:Lbx8;

.field public final k:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ly07;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lwi3;->d:Lwi3;

    sput-object v0, Lws3;->l:Lwi3;

    sget-object v0, La93;->IDENTITY:La93;

    sput-object v0, Lws3;->m:La93;

    sget-object v0, Lax8;->DOUBLE:Lax8;

    sput-object v0, Lws3;->n:Lax8;

    sget-object v0, Lax8;->LAZILY_PARSED_NUMBER:Lax8;

    sput-object v0, Lws3;->o:Lax8;

    new-instance v0, Lpx1;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v2, v1}, Lpx1;-><init>(Ljava/util/List;Ljava/util/Map;)V

    sput-object v0, Lws3;->p:Lpx1;

    new-instance v1, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lpx1;)V

    sput-object v1, Lws3;->q:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    new-instance v2, Lws3;

    invoke-direct {v2}, Lws3;-><init>()V

    sput-object v2, Lws3;->r:Lws3;

    invoke-virtual {v2, v0, v1}, Lws3;->a(Lpx1;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lws3;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson/internal/Excluder;->d:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lws3;->a:Lcom/google/gson/internal/Excluder;

    sget-object v0, Lfw4;->DEFAULT:Lfw4;

    iput-object v0, p0, Lws3;->b:Lfw4;

    sget-object v0, Lws3;->m:La93;

    iput-object v0, p0, Lws3;->c:Lb93;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lws3;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lws3;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lws3;->f:Ljava/util/ArrayList;

    sget-object v0, Lws3;->l:Lwi3;

    iput-object v0, p0, Lws3;->g:Lwi3;

    const/4 v0, 0x0

    iput-object v0, p0, Lws3;->h:Lu98;

    sget-object v0, Lws3;->n:Lax8;

    iput-object v0, p0, Lws3;->i:Lbx8;

    sget-object v0, Lws3;->o:Lax8;

    iput-object v0, p0, Lws3;->j:Lbx8;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lws3;->k:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static b(Ljava/util/AbstractCollection;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lpx1;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpx1;",
            "Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;",
            ")",
            "Ljava/util/List<",
            "Lt39;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->C:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lws3;->i:Lbx8;

    invoke-static {v1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->d(Lbx8;)Lt39;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lws3;->a:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lws3;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lws3;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    sget-object v1, Lcom/google/gson/internal/sql/a;->a:Lt39;

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->s:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->g:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->d:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->e:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->f:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lws3;->b:Lfw4;

    invoke-virtual {v1}, Lfw4;->a()Lcom/google/gson/TypeAdapter;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    invoke-static {v2, v3, v1}, Lcom/google/gson/internal/bind/TypeAdapters;->f(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lt39;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/lang/Double;

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->n:Lcom/google/gson/TypeAdapter;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2, v3}, Lcom/google/gson/internal/bind/TypeAdapters;->f(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lt39;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/lang/Float;

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->m:Lcom/google/gson/TypeAdapter;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2, v3}, Lcom/google/gson/internal/bind/TypeAdapters;->f(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lt39;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lax8;->LAZILY_PARSED_NUMBER:Lax8;

    iget-object v3, p0, Lws3;->j:Lbx8;

    if-ne v3, v2, :cond_2

    sget-object v2, Lcom/google/gson/internal/bind/NumberTypeAdapter;->b:Lt39;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->d(Lbx8;)Lt39;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->h:Lt39;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->i:Lt39;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1}, Lcom/google/gson/internal/bind/TypeAdapters;->a(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gson/internal/bind/TypeAdapters;->e(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lt39;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v1}, Lcom/google/gson/internal/bind/TypeAdapters;->b(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/gson/internal/bind/TypeAdapters;->e(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lt39;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->j:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->o:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->t:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->u:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->p:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->q:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->r:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->v:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->w:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->y:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->z:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->B:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->x:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->b:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->c:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->A:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;

    sget-object v3, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/bind/TypeAdapters$b;

    invoke-interface {v2}, Lcom/google/gson/internal/bind/TypeAdapters$b;->get()Lt39;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lcom/google/gson/internal/sql/a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->c:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->a:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {v1, p1}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lpx1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {v1, p1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lpx1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->D:Lt39;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v1, p0, Lws3;->k:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lws3;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    move-result-object v7

    iget-object v4, p0, Lws3;->c:Lb93;

    iget-object v5, p0, Lws3;->a:Lcom/google/gson/internal/Excluder;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lpx1;Lb93;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Lwd4;

    if-nez v0, :cond_1

    instance-of v1, p2, Lnc4;

    if-nez v1, :cond_1

    instance-of v1, p2, Lc64;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " does not implement any supported type adapter class or interface"

    const-string p2, "Class "

    invoke-static {p0, p2, p1}, Lbg;->h(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_6

    instance-of v1, p2, Lc64;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lws3;->d:Ljava/util/HashMap;

    move-object v2, p2

    check-cast v2, Lc64;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lws3;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    instance-of v0, p2, Lnc4;

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lx39;

    invoke-direct {v0, p1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e(Lx39;Ljava/lang/Object;)Lt39;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_5

    new-instance v0, Lx39;

    invoke-direct {v0, p1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    check-cast p2, Lcom/google/gson/TypeAdapter;

    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->d(Lx39;Lcom/google/gson/TypeAdapter;)Lt39;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :cond_6
    const-string p0, "Cannot override built-in adapter for "

    invoke-static {p1, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
