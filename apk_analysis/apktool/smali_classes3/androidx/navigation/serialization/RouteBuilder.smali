.class public final Landroidx/navigation/serialization/RouteBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/serialization/RouteBuilder$ParamType;,
        Landroidx/navigation/serialization/RouteBuilder$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field private pathArgs:Ljava/lang/String;

.field private queryArgs:Ljava/lang/String;

.field private final serializer:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->serializer:Ldf4;

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldf4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Landroidx/navigation/serialization/RouteBuilder;->serializer:Ldf4;

    .line 29
    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    return-void
.end method

.method private final addPath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    return-void
.end method

.method private final addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    const-string v0, "&"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    return-void
.end method

.method private final computeParamType(ILandroidx/navigation/NavType;)Landroidx/navigation/serialization/RouteBuilder$ParamType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/navigation/serialization/RouteBuilder$ParamType;"
        }
    .end annotation

    instance-of p2, p2, Landroidx/navigation/CollectionNavType;

    if-nez p2, :cond_1

    iget-object p0, p0, Landroidx/navigation/serialization/RouteBuilder;->serializer:Ldf4;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0, p1}, Lmp7;->i(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/navigation/serialization/RouteBuilder$ParamType;->PATH:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/navigation/serialization/RouteBuilder$ParamType;->QUERY:Landroidx/navigation/serialization/RouteBuilder$ParamType;

    return-object p0
.end method


# virtual methods
.method public final appendArg(ILjava/lang/String;Landroidx/navigation/NavType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p3}, Landroidx/navigation/serialization/RouteBuilder;->computeParamType(ILandroidx/navigation/NavType;)Landroidx/navigation/serialization/RouteBuilder$ParamType;

    move-result-object p1

    sget-object p3, Landroidx/navigation/serialization/RouteBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    check-cast p4, Ljava/lang/Iterable;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroidx/navigation/serialization/RouteBuilder;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p3, :cond_3

    invoke-static {p4}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/navigation/serialization/RouteBuilder;->addPath(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "Expected one value for argument "

    const-string p1, ", found "

    invoke-static {p0, p2, p1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "values instead."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final appendPattern(ILjava/lang/String;Landroidx/navigation/NavType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p3}, Landroidx/navigation/serialization/RouteBuilder;->computeParamType(ILandroidx/navigation/NavType;)Landroidx/navigation/serialization/RouteBuilder$ParamType;

    move-result-object p1

    sget-object p3, Landroidx/navigation/serialization/RouteBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/16 v0, 0x7d

    const-string v1, "{"

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    invoke-static {v0, v1, p2}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroidx/navigation/serialization/RouteBuilder;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    invoke-static {v0, v1, p2}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/navigation/serialization/RouteBuilder;->addPath(Ljava/lang/String;)V

    return-void
.end method

.method public final build()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
