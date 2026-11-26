.class public final Landroidx/navigation/serialization/RouteEncoder;
.super Lh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lh0;"
    }
.end annotation


# instance fields
.field private elementIndex:I

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final serializer:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final serializersModule:Ljq7;

.field private final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lh0;-><init>()V

    iput-object p1, p0, Landroidx/navigation/serialization/RouteEncoder;->serializer:Ldf4;

    iput-object p2, p0, Landroidx/navigation/serialization/RouteEncoder;->typeMap:Ljava/util/Map;

    sget-object p1, Lnq7;->a:Ltp7;

    iput-object p1, p0, Landroidx/navigation/serialization/RouteEncoder;->serializersModule:Ljq7;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/serialization/RouteEncoder;->map:Ljava/util/Map;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    return-void
.end method

.method private final internalEncodeValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/serialization/RouteEncoder;->serializer:Ldf4;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    iget v1, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    invoke-interface {v0, v1}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/serialization/RouteEncoder;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavType;

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroidx/navigation/CollectionNavType;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/navigation/CollectionNavType;

    invoke-virtual {v1, p1}, Landroidx/navigation/CollectionNavType;->serializeAsValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroidx/navigation/NavType;->serializeAsValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Landroidx/navigation/serialization/RouteEncoder;->map:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, "Cannot find NavType for argument "

    const-string p1, ". Please provide NavType through typeMap."

    invoke-static {p0, v0, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public encodeElement(Lmp7;I)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p2, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    const/4 p0, 0x1

    return p0
.end method

.method public encodeInline(Lmp7;)Lux2;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->isValueClass(Lmp7;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    :cond_0
    invoke-super {p0, p1}, Lh0;->encodeInline(Lmp7;)Lux2;

    move-result-object p0

    return-object p0
.end method

.method public encodeNull()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/navigation/serialization/RouteEncoder;->internalEncodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeSerializableValue(Lxp7;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxp7<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/navigation/serialization/RouteEncoder;->internalEncodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeToArgMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/serialization/RouteEncoder;->serializer:Ldf4;

    check-cast v0, Lxp7;

    invoke-super {p0, v0, p1}, Lh0;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/navigation/serialization/RouteEncoder;->map:Ljava/util/Map;

    invoke-static {p0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public encodeValue(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/navigation/serialization/RouteEncoder;->internalEncodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getSerializersModule()Ljq7;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/serialization/RouteEncoder;->serializersModule:Ljq7;

    return-object p0
.end method
