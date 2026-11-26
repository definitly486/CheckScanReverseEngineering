.class public final Lio/appmetrica/analytics/impl/Nb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Lcl4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nb;->a:Lio/appmetrica/analytics/impl/i5;

    new-instance p1, Lio/appmetrica/analytics/impl/Mb;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Mb;-><init>(Lio/appmetrica/analytics/impl/Nb;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Nb;->b:Lcl4;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/Nb;)Lio/appmetrica/analytics/impl/i5;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nb;->a:Lio/appmetrica/analytics/impl/i5;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/rh;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nb;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rh;

    return-object p0
.end method

.method public final bridge synthetic getConfig()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nb;->a()Lio/appmetrica/analytics/impl/rh;

    move-result-object p0

    return-object p0
.end method
