.class public final synthetic Lr7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/k1;

.field public final synthetic c:Lcom/my/target/q;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/k1;Lcom/my/target/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7a;->b:Lcom/my/target/k1;

    iput-object p2, p0, Lr7a;->c:Lcom/my/target/q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lr7a;->b:Lcom/my/target/k1;

    iget-object v0, p1, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget-object v1, p1, Lcom/my/target/k1;->j:Lcom/my/target/v;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/my/target/v;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/my/target/k1;->j:Lcom/my/target/v;

    if-nez p1, :cond_1

    iget-object p0, p0, Lr7a;->c:Lcom/my/target/q;

    iget-object p0, p0, Lcom/my/target/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0, v0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/my/target/v;->c(Landroid/content/Context;)V

    return-void
.end method
