.class public final Lio/appmetrica/analytics/billing/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/billing/impl/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/billing/impl/p;-><init>(Lio/appmetrica/analytics/billing/impl/g;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/billing/impl/g;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/billing/impl/p;->a:Lio/appmetrica/analytics/billing/impl/g;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/billing/impl/g;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/billing/impl/g;

    invoke-direct {p1}, Lio/appmetrica/analytics/billing/impl/g;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;-><init>(Lio/appmetrica/analytics/billing/impl/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/billing/impl/r;)Lio/appmetrica/analytics/billing/impl/B;
    .locals 3

    .line 24
    new-instance v0, Lio/appmetrica/analytics/billing/impl/B;

    .line 25
    iget-boolean v1, p1, Lio/appmetrica/analytics/billing/impl/r;->a:Z

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/p;->a:Lio/appmetrica/analytics/billing/impl/g;

    iget-object p1, p1, Lio/appmetrica/analytics/billing/impl/r;->b:Lio/appmetrica/analytics/billing/impl/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance p0, Lio/appmetrica/analytics/billing/impl/y;

    .line 28
    iget v2, p1, Lio/appmetrica/analytics/billing/impl/q;->a:I

    .line 29
    iget p1, p1, Lio/appmetrica/analytics/billing/impl/q;->b:I

    .line 30
    invoke-direct {p0, v2, p1}, Lio/appmetrica/analytics/billing/impl/y;-><init>(II)V

    .line 31
    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/billing/impl/B;-><init>(ZLio/appmetrica/analytics/billing/impl/y;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/impl/r;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/billing/impl/r;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/r;-><init>()V

    iget-boolean v1, p1, Lio/appmetrica/analytics/billing/impl/B;->a:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/billing/impl/r;->a:Z

    iget-object p1, p1, Lio/appmetrica/analytics/billing/impl/B;->b:Lio/appmetrica/analytics/billing/impl/y;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/p;->a:Lio/appmetrica/analytics/billing/impl/g;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/g;->a(Lio/appmetrica/analytics/billing/impl/y;)Lio/appmetrica/analytics/billing/impl/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v0, Lio/appmetrica/analytics/billing/impl/r;->b:Lio/appmetrica/analytics/billing/impl/q;

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/B;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;->a(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/impl/r;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/r;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;->a(Lio/appmetrica/analytics/billing/impl/r;)Lio/appmetrica/analytics/billing/impl/B;

    move-result-object p0

    return-object p0
.end method
