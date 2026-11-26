.class public final Lcom/my/target/w2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/my/target/w2;


# direct methods
.method public constructor <init>(Lcom/my/target/w2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/w2$b;->b:Lcom/my/target/w2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lcom/my/target/w2$b;->b:Lcom/my/target/w2;

    iget-object v0, p0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/w2;->d:Lxda;

    iget-object v1, v1, Lao9;->H:Lcom/my/target/q;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/w2;->g:Lcom/my/target/v;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/my/target/v;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/my/target/q;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/my/target/v;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/my/target/w2$b;->b:Lcom/my/target/w2;

    iget-object v0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/my/target/r0;->d()V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    .line 29
    iget-object p0, p0, Lcom/my/target/w2;->d:Lxda;

    .line 30
    invoke-virtual {v0, p0}, Lcom/my/target/m2$a;->b(Lao9;)V

    return-void
.end method

.method public final b(ILpfa;)V
    .locals 6

    iget-object p0, p0, Lcom/my/target/w2$b;->b:Lcom/my/target/w2;

    iget-object v0, p0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    iget-object v1, p0, Lcom/my/target/w2;->d:Lxda;

    invoke-static {p2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v4

    iget-object p0, p0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {p0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method
