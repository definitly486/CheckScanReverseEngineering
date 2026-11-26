.class public final Lio/appmetrica/analytics/billing/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/billing/impl/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/billing/impl/b;-><init>(Lio/appmetrica/analytics/billing/impl/i;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/billing/impl/i;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/billing/impl/b;->a:Lio/appmetrica/analytics/billing/impl/i;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/billing/impl/i;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/billing/impl/i;

    invoke-direct {p1}, Lio/appmetrica/analytics/billing/impl/i;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/billing/impl/b;-><init>(Lio/appmetrica/analytics/billing/impl/i;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/billing/impl/d;)Lio/appmetrica/analytics/billing/impl/a;
    .locals 6

    .line 60
    iget-object v0, p1, Lio/appmetrica/analytics/billing/impl/d;->a:[Lio/appmetrica/analytics/billing/impl/c;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 63
    iget-object v5, p0, Lio/appmetrica/analytics/billing/impl/b;->a:Lio/appmetrica/analytics/billing/impl/i;

    invoke-virtual {v5, v4}, Lio/appmetrica/analytics/billing/impl/i;->a(Lio/appmetrica/analytics/billing/impl/c;)Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    move-result-object v4

    .line 64
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-boolean p0, p1, Lio/appmetrica/analytics/billing/impl/d;->b:Z

    .line 66
    new-instance p1, Lio/appmetrica/analytics/billing/impl/a;

    invoke-direct {p1, v1, p0}, Lio/appmetrica/analytics/billing/impl/a;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/billing/impl/a;)Lio/appmetrica/analytics/billing/impl/d;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/billing/impl/d;

    invoke-direct {v0}, Lio/appmetrica/analytics/billing/impl/d;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/billing/impl/a;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    iget-object v4, p0, Lio/appmetrica/analytics/billing/impl/b;->a:Lio/appmetrica/analytics/billing/impl/i;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/billing/impl/i;->a(Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;)Lio/appmetrica/analytics/billing/impl/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/appmetrica/analytics/billing/impl/c;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/appmetrica/analytics/billing/impl/c;

    iput-object p0, v0, Lio/appmetrica/analytics/billing/impl/d;->a:[Lio/appmetrica/analytics/billing/impl/c;

    iget-boolean p0, p1, Lio/appmetrica/analytics/billing/impl/a;->b:Z

    iput-boolean p0, v0, Lio/appmetrica/analytics/billing/impl/d;->b:Z

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/a;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/b;->a(Lio/appmetrica/analytics/billing/impl/a;)Lio/appmetrica/analytics/billing/impl/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/d;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/b;->a(Lio/appmetrica/analytics/billing/impl/d;)Lio/appmetrica/analytics/billing/impl/a;

    move-result-object p0

    return-object p0
.end method
