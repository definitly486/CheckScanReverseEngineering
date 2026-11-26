.class public final Lcom/tapjoy/internal/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Double;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Double;

.field public final e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/r1;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/r1;->b:Ljava/lang/Double;

    iput-object v0, p0, Lcom/tapjoy/internal/r1;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/r1;->d:Ljava/lang/Double;

    iput-object v0, p0, Lcom/tapjoy/internal/r1;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/tapjoy/TJPurchases;->INSTANCE:Lcom/tapjoy/TJPurchases;

    invoke-virtual {v0}, Lcom/tapjoy/TJPurchases;->getPurchaseCurrency()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/r1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJPurchases;->getPurchaseTotalPrice()Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/r1;->b:Ljava/lang/Double;

    invoke-virtual {v0}, Lcom/tapjoy/TJPurchases;->getPurchaseLastTime()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/r1;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/tapjoy/TJPurchases;->getPurchaseLastPrice()Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/r1;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Lcom/tapjoy/TJPurchases;->getPurchaseTotalCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/r1;->e:Ljava/lang/Integer;

    return-void
.end method
