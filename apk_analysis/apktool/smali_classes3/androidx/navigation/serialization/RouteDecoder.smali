.class public final Landroidx/navigation/serialization/RouteDecoder;
.super Lf0;
.source "SourceFile"


# instance fields
.field private elementIndex:I

.field private elementName:Ljava/lang/String;

.field private final serializersModule:Ljq7;

.field private final store:Landroidx/navigation/serialization/ArgStore;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lf0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementIndex:I

    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    sget-object v0, Lnq7;->a:Ltp7;

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->serializersModule:Ljq7;

    new-instance v0, Landroidx/navigation/serialization/SavedStateArgStore;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/SavedStateArgStore;-><init>(Landroid/os/Bundle;Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->store:Landroidx/navigation/serialization/ArgStore;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-direct {p0}, Lf0;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementIndex:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    .line 31
    sget-object v0, Lnq7;->a:Ltp7;

    .line 32
    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->serializersModule:Ljq7;

    .line 33
    new-instance v0, Landroidx/navigation/serialization/SavedStateHandleArgStore;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/SavedStateHandleArgStore;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->store:Landroidx/navigation/serialization/ArgStore;

    return-void
.end method

.method public static synthetic getSerializersModule$annotations()V
    .locals 0

    return-void
.end method

.method private final internalDecodeValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->store:Landroidx/navigation/serialization/ArgStore;

    iget-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/serialization/ArgStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Unexpected null value for non-nullable argument "

    iget-object p0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    invoke-static {p0, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public decodeElementIndex(Lmp7;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lmp7;->e()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-interface {p1, v0}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/navigation/serialization/RouteDecoder;->store:Landroidx/navigation/serialization/ArgStore;

    invoke-virtual {v2, v1}, Landroidx/navigation/serialization/ArgStore;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementIndex:I

    iput-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    return v0
.end method

.method public decodeInline(Lmp7;)Lud2;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->isValueClass(Lmp7;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementIndex:I

    :cond_0
    invoke-super {p0, p1}, Lf0;->decodeInline(Lmp7;)Lud2;

    move-result-object p0

    return-object p0
.end method

.method public decodeNotNullMark()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->store:Landroidx/navigation/serialization/ArgStore;

    iget-object p0, p0, Landroidx/navigation/serialization/RouteDecoder;->elementName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/navigation/serialization/ArgStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public decodeNull()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final decodeRouteWithArgs$navigation_common_release(Lxl2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl2<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lf0;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeSerializableValue(Lxl2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl2<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/navigation/serialization/RouteDecoder;->internalDecodeValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeValue()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/serialization/RouteDecoder;->internalDecodeValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSerializersModule()Ljq7;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/serialization/RouteDecoder;->serializersModule:Ljq7;

    return-object p0
.end method
