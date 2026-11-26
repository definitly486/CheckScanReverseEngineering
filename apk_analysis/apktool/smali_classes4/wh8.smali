.class public final synthetic Lwh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tapjoy/TJCurrency;

.field public final synthetic c:I

.field public final synthetic d:Lcom/tapjoy/TJSpendCurrencyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TJCurrency;ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh8;->b:Lcom/tapjoy/TJCurrency;

    iput p2, p0, Lwh8;->c:I

    iput-object p3, p0, Lwh8;->d:Lcom/tapjoy/TJSpendCurrencyListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lwh8;->c:I

    iget-object v1, p0, Lwh8;->d:Lcom/tapjoy/TJSpendCurrencyListener;

    iget-object p0, p0, Lwh8;->b:Lcom/tapjoy/TJCurrency;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJCurrency;->a(ILcom/tapjoy/TJSpendCurrencyListener;)V

    return-void
.end method
