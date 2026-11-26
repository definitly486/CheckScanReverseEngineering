.class public final synthetic Lnx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lv75;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnx6;->b:Ljava/lang/Object;

    iput-object p2, p0, Lnx6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc75$a;)V
    .locals 2

    iget-object v0, p0, Lnx6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    iget-object p0, p0, Lnx6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->d:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$a;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etTransferDestination:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0}, Lp37;->b()Lh37;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    new-instance v0, Lyy8;

    invoke-direct {v0, p1}, Lyy8;-><init>(Lc75$a;)V

    invoke-virtual {p0, v0, p0}, Lh37;->K(Lwk8;Lee0;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnx6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object p0, p0, Lnx6;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/model/RateLimit;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->i(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object p0

    return-object p0
.end method
