.class public Lcom/my/target/e2$e;
.super Lcom/my/target/e2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ldha;


# direct methods
.method public constructor <init>(Ldha;Ljava/lang/String;Lao9;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/my/target/e2$a;-><init>(Lao9;)V

    iput-object p1, p0, Lcom/my/target/e2$e;->c:Ldha;

    iput-object p2, p0, Lcom/my/target/e2$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru.mail.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/e2$e;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "com.android.browser.application_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v1, v0, v2}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/my/target/e2$e;->c:Ldha;

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ldha;->a()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/my/target/e2$a;->a:Lao9;

    iget-boolean v0, v0, Lao9;->s:Z

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ldha;->a()V

    sget-object p0, Lcom/my/target/e2;->e:Ljava/util/WeakHashMap;

    invoke-static {p1, v3, v2, v2, v2}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_2
    new-instance v0, Lfk8;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0, p1}, Lfk8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return v1
.end method
