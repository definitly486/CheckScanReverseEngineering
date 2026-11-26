.class public final Lio/appmetrica/analytics/impl/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Bn;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/v9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/v9;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dh;->a:Lio/appmetrica/analytics/impl/v9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/dh;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Bl;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dh;->a:Lio/appmetrica/analytics/impl/v9;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lio/appmetrica/analytics/impl/t9;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/Bl;

    sget-object v4, Lio/appmetrica/analytics/impl/dg;->a:Ljava/util/Map;

    new-instance v4, Lio/appmetrica/analytics/impl/t9;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/t9;-><init>()V

    iget-object v5, v3, Lio/appmetrica/analytics/impl/Bl;->a:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lio/appmetrica/analytics/impl/t9;->a:I

    :cond_0
    iget-object v5, v3, Lio/appmetrica/analytics/impl/Bl;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lio/appmetrica/analytics/impl/t9;->b:I

    :cond_1
    iget-object v5, v3, Lio/appmetrica/analytics/impl/Bl;->d:Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lio/appmetrica/analytics/impl/Bl;->d:Ljava/lang/String;

    iput-object v5, v4, Lio/appmetrica/analytics/impl/t9;->c:Ljava/lang/String;

    :cond_2
    iget-boolean v3, v3, Lio/appmetrica/analytics/impl/Bl;->c:Z

    iput-boolean v3, v4, Lio/appmetrica/analytics/impl/t9;->d:Z

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lio/appmetrica/analytics/impl/v9;->d:[Lio/appmetrica/analytics/impl/t9;

    :cond_4
    return-void
.end method
