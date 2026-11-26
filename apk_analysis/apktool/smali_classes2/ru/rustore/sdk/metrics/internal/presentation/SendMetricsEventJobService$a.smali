.class public final Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lql9;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;


# direct methods
.method public constructor <init>(Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;)V
    .locals 0

    iput-object p1, p0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$a;->f:Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lql9;->c:Lql9$b;

    iget-object p0, p0, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService$a;->f:Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;

    invoke-virtual {v0, p0}, Lql9$b;->a(Landroid/content/Context;)Lql9;

    move-result-object p0

    return-object p0
.end method
