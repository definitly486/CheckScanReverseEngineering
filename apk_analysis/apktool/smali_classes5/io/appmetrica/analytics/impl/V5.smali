.class public final Lio/appmetrica/analytics/impl/V5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/U5;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/t5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/t5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/V5;->a:Lio/appmetrica/analytics/impl/t5;

    return-void
.end method


# virtual methods
.method public final getAdRevenueProcessorsHolder()Lio/appmetrica/analytics/impl/t5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V5;->a:Lio/appmetrica/analytics/impl/t5;

    return-object p0
.end method

.method public final getAdRevenueProcessorsHolder()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessorsHolder;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/V5;->a:Lio/appmetrica/analytics/impl/t5;

    return-object p0
.end method
