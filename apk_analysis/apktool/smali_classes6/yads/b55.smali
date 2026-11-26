.class public final Lyads/b55;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/q84;

.field public final c:Lyads/sk;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/n5;Lyads/n70;Lyads/d9;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance p2, Lyads/sk;

    invoke-direct {p2, p3, p4, p6}, Lyads/sk;-><init>(Lyads/n5;Lyads/n70;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/b55;->a:Lyads/d9;

    iput-object p1, p0, Lyads/b55;->b:Lyads/q84;

    iput-object p2, p0, Lyads/b55;->c:Lyads/sk;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/b55;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lyads/b55;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/b55;->c:Lyads/sk;

    invoke-virtual {v0}, Lyads/sk;->a()Lyads/h75;

    move-result-object v0

    iget-object v1, p0, Lyads/b55;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->u:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lyads/b55;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->i:Lyads/c;

    iput-object v1, v0, Lyads/h75;->b:Lyads/c;

    new-instance v2, Lyads/g75;

    sget-object v3, Lyads/e75;->c:Lyads/e75;

    iget-object v0, v0, Lyads/h75;->a:Ljava/util/Map;

    const-string v3, "rebind"

    invoke-static {v0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/b55;->b:Lyads/q84;

    invoke-virtual {p0, v2}, Lyads/q84;->a(Lyads/g75;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/b55;->d:Z

    return-void
.end method
