.class public final La3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/w0;


# direct methods
.method public constructor <init>(Lcom/my/target/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3a;->b:Lcom/my/target/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, La3a;->b:Lcom/my/target/w0;

    iget-object p1, p0, Lcom/my/target/w0;->o:Lwv9;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lao9;->H:Lcom/my/target/q;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/w0;->l:Lcom/my/target/v;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/my/target/v;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/my/target/w0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/my/target/v;->c(Landroid/content/Context;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/my/target/q;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/my/target/w0;->h:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void
.end method
