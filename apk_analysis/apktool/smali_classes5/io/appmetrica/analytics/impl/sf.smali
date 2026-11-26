.class public final Lio/appmetrica/analytics/impl/sf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ef;

.field public final b:Lio/appmetrica/analytics/impl/nf;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Ef;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ef;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/nf;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/nf;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/sf;-><init>(Lio/appmetrica/analytics/impl/Ef;Lio/appmetrica/analytics/impl/nf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ef;Lio/appmetrica/analytics/impl/nf;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/sf;->a:Lio/appmetrica/analytics/impl/Ef;

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/sf;->b:Lio/appmetrica/analytics/impl/nf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/qf;)Lio/appmetrica/analytics/impl/Af;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/Af;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Af;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/sf;->a:Lio/appmetrica/analytics/impl/Ef;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/qf;->a:Lio/appmetrica/analytics/impl/Df;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Ef;->a(Lio/appmetrica/analytics/impl/Df;)Lio/appmetrica/analytics/impl/yf;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Af;->a:Lio/appmetrica/analytics/impl/yf;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/qf;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/zf;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Af;->b:[Lio/appmetrica/analytics/impl/zf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/qf;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/pf;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Af;->b:[Lio/appmetrica/analytics/impl/zf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/sf;->b:Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/nf;->a(Lio/appmetrica/analytics/impl/pf;)Lio/appmetrica/analytics/impl/zf;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Af;)Lio/appmetrica/analytics/impl/qf;
    .locals 6

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Af;->b:[Lio/appmetrica/analytics/impl/zf;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Af;->b:[Lio/appmetrica/analytics/impl/zf;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 60
    iget-object v5, p0, Lio/appmetrica/analytics/impl/sf;->b:Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {v5, v4}, Lio/appmetrica/analytics/impl/nf;->a(Lio/appmetrica/analytics/impl/zf;)Lio/appmetrica/analytics/impl/pf;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/qf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Af;->a:Lio/appmetrica/analytics/impl/yf;

    .line 62
    iget-object p0, p0, Lio/appmetrica/analytics/impl/sf;->a:Lio/appmetrica/analytics/impl/Ef;

    if-nez p1, :cond_1

    .line 63
    new-instance p1, Lio/appmetrica/analytics/impl/yf;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/yf;-><init>()V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ef;->a(Lio/appmetrica/analytics/impl/yf;)Lio/appmetrica/analytics/impl/Df;

    move-result-object p0

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ef;->a(Lio/appmetrica/analytics/impl/yf;)Lio/appmetrica/analytics/impl/Df;

    move-result-object p0

    .line 65
    :goto_1
    invoke-direct {v1, p0, v0}, Lio/appmetrica/analytics/impl/qf;-><init>(Lio/appmetrica/analytics/impl/Df;Ljava/util/List;)V

    return-object v1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/qf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/sf;->a(Lio/appmetrica/analytics/impl/qf;)Lio/appmetrica/analytics/impl/Af;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Af;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/sf;->a(Lio/appmetrica/analytics/impl/Af;)Lio/appmetrica/analytics/impl/qf;

    move-result-object p0

    return-object p0
.end method
