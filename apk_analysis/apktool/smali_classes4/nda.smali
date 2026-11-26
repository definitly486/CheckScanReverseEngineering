.class public final synthetic Lnda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5a;


# instance fields
.field public final synthetic b:Lcom/my/target/e2;

.field public final synthetic c:Lao9;

.field public final synthetic d:Lcha;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/e2;Lao9;Lcha;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnda;->b:Lcom/my/target/e2;

    iput-object p2, p0, Lnda;->c:Lao9;

    iput-object p3, p0, Lnda;->d:Lcha;

    iput-object p4, p0, Lnda;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/my/target/d1$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/my/target/d1$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/my/target/d1$a;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lnda;->c:Lao9;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lnda;->b:Lcom/my/target/e2;

    iget-object v2, p0, Lnda;->d:Lcha;

    iget-object p0, p0, Lnda;->e:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v2, p0}, Lcom/my/target/e2;->c(Ljava/lang/String;Lao9;Lcha;Landroid/content/Context;)V

    :cond_1
    sget-object p0, Lcom/my/target/e2;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
