.class public final Lio/appmetrica/analytics/impl/K2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/k2;)Lio/appmetrica/analytics/impl/M2;
    .locals 2

    .line 68
    iget p0, p1, Lio/appmetrica/analytics/impl/k2;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    move-object p0, v0

    goto :goto_0

    .line 69
    :pswitch_0
    sget-object p0, Lio/appmetrica/analytics/impl/L2;->a:Lio/appmetrica/analytics/impl/L2;

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object p0, Lio/appmetrica/analytics/impl/L2;->f:Lio/appmetrica/analytics/impl/L2;

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object p0, Lio/appmetrica/analytics/impl/L2;->e:Lio/appmetrica/analytics/impl/L2;

    goto :goto_0

    .line 72
    :pswitch_3
    sget-object p0, Lio/appmetrica/analytics/impl/L2;->d:Lio/appmetrica/analytics/impl/L2;

    goto :goto_0

    .line 73
    :pswitch_4
    sget-object p0, Lio/appmetrica/analytics/impl/L2;->c:Lio/appmetrica/analytics/impl/L2;

    goto :goto_0

    .line 74
    :pswitch_5
    sget-object p0, Lio/appmetrica/analytics/impl/L2;->b:Lio/appmetrica/analytics/impl/L2;

    .line 75
    :goto_0
    iget p1, p1, Lio/appmetrica/analytics/impl/k2;->b:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 77
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    :goto_1
    new-instance p1, Lio/appmetrica/analytics/impl/M2;

    invoke-direct {p1, p0, v0}, Lio/appmetrica/analytics/impl/M2;-><init>(Lio/appmetrica/analytics/impl/L2;Ljava/lang/Boolean;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lio/appmetrica/analytics/impl/M2;)Lio/appmetrica/analytics/impl/k2;
    .locals 4

    new-instance p0, Lio/appmetrica/analytics/impl/k2;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/k2;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/M2;->a:Lio/appmetrica/analytics/impl/L2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    iput v1, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    goto :goto_0

    :cond_3
    iput v3, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    iput v0, p0, Lio/appmetrica/analytics/impl/k2;->a:I

    :cond_6
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/M2;->b:Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iput v2, p0, Lio/appmetrica/analytics/impl/k2;->b:I

    return-object p0

    :cond_7
    iput v1, p0, Lio/appmetrica/analytics/impl/k2;->b:I

    :cond_8
    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/M2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/K2;->a(Lio/appmetrica/analytics/impl/M2;)Lio/appmetrica/analytics/impl/k2;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/k2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/K2;->a(Lio/appmetrica/analytics/impl/k2;)Lio/appmetrica/analytics/impl/M2;

    move-result-object p0

    return-object p0
.end method
