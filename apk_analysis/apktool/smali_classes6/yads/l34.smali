.class public final Lyads/l34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/d9;

.field public final d:Lyads/k34;

.field public final e:Lyads/u64;

.field public final f:Lyads/w95;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lyads/e75;->k:Lyads/e75;

    sget-object v1, Lyads/e75;->l:Lyads/e75;

    filled-new-array {v0, v1}, [Lyads/e75;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/l34;->g:Ljava/util/List;

    sget-object v0, Lyads/e75;->m:Lyads/e75;

    sget-object v1, Lyads/e75;->n:Lyads/e75;

    sget-object v2, Lyads/e75;->x:Lyads/e75;

    sget-object v3, Lyads/e75;->y:Lyads/e75;

    filled-new-array {v0, v1, v2, v3}, [Lyads/e75;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/l34;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 3

    new-instance v0, Lyads/k34;

    invoke-direct {v0}, Lyads/k34;-><init>()V

    new-instance v1, Lyads/u64;

    invoke-direct {v1}, Lyads/u64;-><init>()V

    new-instance v2, Lyads/w95;

    invoke-direct {v2}, Lyads/w95;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l34;->a:Lyads/e4;

    iput-object p2, p0, Lyads/l34;->b:Lyads/bf5;

    iput-object p3, p0, Lyads/l34;->c:Lyads/d9;

    iput-object v0, p0, Lyads/l34;->d:Lyads/k34;

    iput-object v1, p0, Lyads/l34;->e:Lyads/u64;

    iput-object v2, p0, Lyads/l34;->f:Lyads/w95;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lyads/l34;->d:Lyads/k34;

    iget-object v1, p0, Lyads/l34;->c:Lyads/d9;

    iget-object v2, p0, Lyads/l34;->a:Lyads/e4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, v1, Lyads/d9;->m:Lyads/p60;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    sget-object v5, Lyads/p60;->b:Lyads/p60;

    if-ne v4, v5, :cond_2

    iget-object v4, v1, Lyads/d9;->t:Ljava/lang/Object;

    instance-of v5, v4, Lyads/vg4;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lyads/vg4;

    :cond_1
    iget-object v0, v0, Lyads/k34;->b:Lyads/xh4;

    invoke-virtual {v0, v2, v1, v3}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lyads/k34;->a:Lyads/e40;

    invoke-virtual {v0, v2, v1}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lyads/l34;->e:Lyads/u64;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lyads/u64;->a(Lyads/x54;)Lyads/h75;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object v0

    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance p5, Lyads/g75;

    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    invoke-direct {p5, p2, v1, v0}, Lyads/g75;-><init>(Lyads/e75;Ljava/util/Map;Lyads/c;)V

    iget-object v0, p0, Lyads/l34;->b:Lyads/bf5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/l34;->b:Lyads/bf5;

    check-cast p0, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p0, p0, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p0

    invoke-virtual {p0, p5}, Lyads/q84;->a(Lyads/g75;)V

    new-instance p0, Lyads/le;

    invoke-direct {p0, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    iget-object p1, p5, Lyads/g75;->b:Ljava/util/Map;

    iget-object p3, p3, Lyads/x54;->g:Lyads/j5;

    invoke-virtual {p0, p2, p1, p4, p3}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/x54;Ljava/util/Map;)V
    .locals 6

    .line 105
    sget-object v2, Lyads/e75;->e:Lyads/e75;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 106
    invoke-virtual/range {v0 .. v5}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
