.class public final Lio/appmetrica/analytics/impl/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/d4;)Lio/appmetrica/analytics/impl/u4;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d4;->e:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    sget-object v0, Lio/appmetrica/analytics/impl/v4;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lio/appmetrica/analytics/impl/Ac;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Ac;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lio/appmetrica/analytics/impl/Ac;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Ac;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lio/appmetrica/analytics/impl/Jh;

    new-instance v0, Lio/appmetrica/analytics/impl/ik;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ik;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Jh;-><init>(Lio/appmetrica/analytics/impl/j5;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lio/appmetrica/analytics/impl/Jh;

    new-instance v0, Lio/appmetrica/analytics/impl/Lh;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Lh;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Jh;-><init>(Lio/appmetrica/analytics/impl/j5;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lio/appmetrica/analytics/impl/yj;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/yj;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lio/appmetrica/analytics/impl/vj;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/vj;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lio/appmetrica/analytics/impl/pc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/pc;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
