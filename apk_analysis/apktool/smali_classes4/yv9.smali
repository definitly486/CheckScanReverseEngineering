.class public final Lyv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/q;

.field public final synthetic c:Lcom/my/target/a0;


# direct methods
.method public constructor <init>(Lcom/my/target/a0;Lcom/my/target/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyv9;->c:Lcom/my/target/a0;

    iput-object p2, p0, Lyv9;->b:Lcom/my/target/q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lyv9;->c:Lcom/my/target/a0;

    iget-object v1, v0, Lcom/my/target/a0;->d:Lcom/my/target/v;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/my/target/v;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/my/target/a0;->d:Lcom/my/target/v;

    if-nez v0, :cond_1

    iget-object p0, p0, Lyv9;->b:Lcom/my/target/q;

    iget-object p0, p0, Lcom/my/target/q;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0, v0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/my/target/v;->c(Landroid/content/Context;)V

    return-void
.end method
