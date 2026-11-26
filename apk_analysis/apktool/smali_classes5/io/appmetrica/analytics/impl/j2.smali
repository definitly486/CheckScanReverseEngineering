.class public final Lio/appmetrica/analytics/impl/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/K2;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/K2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/K2;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/j2;-><init>(Lio/appmetrica/analytics/impl/K2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/K2;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/j2;->a:Lio/appmetrica/analytics/impl/K2;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/m2;)Lio/appmetrica/analytics/impl/i2;
    .locals 6

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 104
    :goto_0
    iget-object v3, p1, Lio/appmetrica/analytics/impl/m2;->a:[Lio/appmetrica/analytics/impl/l2;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 105
    aget-object v3, v3, v2

    .line 106
    new-instance v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;

    iget-object v5, v3, Lio/appmetrica/analytics/impl/l2;->a:Ljava/lang/String;

    iget-boolean v3, v3, Lio/appmetrica/analytics/impl/l2;->b:Z

    invoke-direct {v4, v5, v3}, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;-><init>(Ljava/lang/String;Z)V

    .line 107
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, p1, Lio/appmetrica/analytics/impl/m2;->b:Lio/appmetrica/analytics/impl/k2;

    if-eqz v2, :cond_1

    .line 109
    iget-object p0, p0, Lio/appmetrica/analytics/impl/j2;->a:Lio/appmetrica/analytics/impl/K2;

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/K2;->a(Lio/appmetrica/analytics/impl/k2;)Lio/appmetrica/analytics/impl/M2;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 110
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :goto_2
    iget-object v3, p1, Lio/appmetrica/analytics/impl/m2;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 112
    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    :cond_2
    new-instance p1, Lio/appmetrica/analytics/impl/i2;

    invoke-direct {p1, v0, p0, v2}, Lio/appmetrica/analytics/impl/i2;-><init>(Ljava/util/List;Lio/appmetrica/analytics/impl/M2;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/i2;)Lio/appmetrica/analytics/impl/m2;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/m2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/m2;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/l2;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m2;->a:[Lio/appmetrica/analytics/impl/l2;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/m2;->a:[Lio/appmetrica/analytics/impl/l2;

    new-instance v6, Lio/appmetrica/analytics/impl/l2;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/l2;-><init>()V

    iget-object v7, v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->name:Ljava/lang/String;

    iput-object v7, v6, Lio/appmetrica/analytics/impl/l2;->a:Ljava/lang/String;

    iget-boolean v4, v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->granted:Z

    iput-boolean v4, v6, Lio/appmetrica/analytics/impl/l2;->b:Z

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/i2;->b:Lio/appmetrica/analytics/impl/M2;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/j2;->a:Lio/appmetrica/analytics/impl/K2;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/K2;->a(Lio/appmetrica/analytics/impl/M2;)Lio/appmetrica/analytics/impl/k2;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/m2;->b:Lio/appmetrica/analytics/impl/k2;

    :cond_1
    iget-object p0, p1, Lio/appmetrica/analytics/impl/i2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/m2;->c:[Ljava/lang/String;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/i2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/m2;->c:[Ljava/lang/String;

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/i2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/j2;->a(Lio/appmetrica/analytics/impl/i2;)Lio/appmetrica/analytics/impl/m2;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/m2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/j2;->a(Lio/appmetrica/analytics/impl/m2;)Lio/appmetrica/analytics/impl/i2;

    move-result-object p0

    return-object p0
.end method
