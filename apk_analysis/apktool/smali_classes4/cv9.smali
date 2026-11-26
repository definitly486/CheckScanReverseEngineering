.class public final synthetic Lcv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/w;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcv9;->b:Lcom/my/target/w;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcv9;->b:Lcom/my/target/w;

    iget-object p1, p0, Lcom/my/target/w;->m:Lwv9;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lao9;->H:Lcom/my/target/q;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/w;->p:Lcom/my/target/v;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/my/target/v;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Lcom/my/target/w;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/my/target/q;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Lcom/my/target/v;->c(Landroid/content/Context;)V

    return-void
.end method
