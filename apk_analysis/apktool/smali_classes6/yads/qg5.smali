.class public final Lyads/qg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/d95;


# instance fields
.field public final a:Lyads/d9;

.field public final b:Landroid/content/Context;

.field public final synthetic c:Lyads/sg5;


# direct methods
.method public constructor <init>(Lyads/sg5;Landroid/content/Context;Lyads/d9;)V
    .locals 0

    iput-object p1, p0, Lyads/qg5;->c:Lyads/sg5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/qg5;->a:Lyads/d9;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/qg5;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 61
    iget-object v0, p0, Lyads/qg5;->a:Lyads/d9;

    iget-object v1, p0, Lyads/qg5;->c:Lyads/sg5;

    .line 62
    iget-object v1, v1, Lyads/sg5;->g:Lyads/e4;

    .line 63
    new-instance v2, Lyads/xh4;

    invoke-direct {v2}, Lyads/xh4;-><init>()V

    .line 64
    iget-object v3, p0, Lyads/qg5;->c:Lyads/sg5;

    .line 65
    iget-object v4, v3, Lyads/sg5;->e:Lyads/qd5;

    .line 66
    iget-object v5, p0, Lyads/qg5;->b:Landroid/content/Context;

    iget-object v6, p0, Lyads/qg5;->a:Lyads/d9;

    .line 67
    iget-object v3, v3, Lyads/sg5;->h:Lyads/vh4;

    .line 68
    invoke-virtual {v4, v5, v6, v3}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/vh4;)V

    .line 69
    iget-object v3, p0, Lyads/qg5;->c:Lyads/sg5;

    .line 70
    iget-object v3, v3, Lyads/sg5;->e:Lyads/qd5;

    .line 71
    iget-object v4, p0, Lyads/qg5;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/qg5;->a:Lyads/d9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    new-instance v5, Lyads/h75;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    .line 73
    invoke-virtual {v2, v1, v0, v7}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object v0

    .line 74
    sget-object v1, Lyads/f75;->c:Lyads/f75;

    .line 75
    const-string v1, "success"

    .line 76
    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v1, Lyads/e75;->g:Lyads/e75;

    invoke-virtual {v3, v4, p0, v1, v0}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/e75;Lyads/h75;)V

    return-void
.end method

.method public final a(Lyads/vg4;)V
    .locals 8

    iget-object v0, p0, Lyads/qg5;->a:Lyads/d9;

    iget-object v1, p0, Lyads/qg5;->c:Lyads/sg5;

    iget-object v1, v1, Lyads/sg5;->g:Lyads/e4;

    new-instance v2, Lyads/xh4;

    invoke-direct {v2}, Lyads/xh4;-><init>()V

    iget-object v3, p0, Lyads/qg5;->c:Lyads/sg5;

    iget-object v4, v3, Lyads/sg5;->e:Lyads/qd5;

    iget-object v5, p0, Lyads/qg5;->b:Landroid/content/Context;

    iget-object v6, p0, Lyads/qg5;->a:Lyads/d9;

    iget-object v3, v3, Lyads/sg5;->h:Lyads/vh4;

    invoke-virtual {v4, v5, v6, v3}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/vh4;)V

    iget-object v3, p0, Lyads/qg5;->c:Lyads/sg5;

    iget-object v3, v3, Lyads/sg5;->e:Lyads/qd5;

    iget-object v4, p0, Lyads/qg5;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/qg5;->a:Lyads/d9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lyads/h75;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    invoke-virtual {v2, v1, v0, p1}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object p1

    sget-object v0, Lyads/f75;->c:Lyads/f75;

    const-string v0, "success"

    const-string v1, "status"

    invoke-virtual {p1, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyads/e75;->g:Lyads/e75;

    invoke-virtual {v3, v4, p0, v0, p1}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/e75;Lyads/h75;)V

    return-void
.end method
