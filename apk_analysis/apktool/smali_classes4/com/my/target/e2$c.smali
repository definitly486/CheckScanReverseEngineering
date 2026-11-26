.class public final Lcom/my/target/e2$c;
.super Lcom/my/target/e2$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/my/target/e2$e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/e2$e;->c:Ldha;

    invoke-interface {p0}, Ldha;->a()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/e2$e;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
