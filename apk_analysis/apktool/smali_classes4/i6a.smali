.class public final synthetic Li6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/target/f1;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/f1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6a;->b:Lcom/my/target/f1;

    iput p2, p0, Li6a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, -0x2

    iget v1, p0, Li6a;->c:I

    if-eq v1, v0, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Li6a;->b:Lcom/my/target/f1;

    invoke-virtual {p0}, Lcom/my/target/f1;->i()V

    const-string p0, "DoubleInterstitialCardPresenter: Audiofocus loss, pausing"

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
