.class public final synthetic Lyfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/target/t2;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/t2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyfa;->b:Lcom/my/target/t2;

    iput p2, p0, Lyfa;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, -0x2

    iget v1, p0, Lyfa;->c:I

    if-eq v1, v0, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lyfa;->b:Lcom/my/target/t2;

    invoke-virtual {p0}, Lcom/my/target/t2;->e()V

    const-string p0, "InterstitialPromoMediaPresenterS2: Audiofocus loss, pausing"

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
