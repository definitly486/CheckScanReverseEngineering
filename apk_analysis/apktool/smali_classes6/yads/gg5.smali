.class public final Lyads/gg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/d95;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/d9;

.field public final synthetic c:Lyads/lg5;


# direct methods
.method public constructor <init>(Lyads/lg5;Landroid/content/Context;Lyads/d9;)V
    .locals 0

    iput-object p1, p0, Lyads/gg5;->c:Lyads/lg5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/gg5;->a:Landroid/content/Context;

    iput-object p3, p0, Lyads/gg5;->b:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 63
    iget-object v0, p0, Lyads/gg5;->c:Lyads/lg5;

    .line 64
    iget-object v1, v0, Lyads/lg5;->f:Lyads/qd5;

    .line 65
    iget-object v2, p0, Lyads/gg5;->a:Landroid/content/Context;

    iget-object v3, p0, Lyads/gg5;->b:Lyads/d9;

    .line 66
    iget-object v0, v0, Lyads/lg5;->e:Lyads/vh4;

    .line 67
    invoke-virtual {v1, v2, v3, v0}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/vh4;)V

    .line 68
    iget-object v0, p0, Lyads/gg5;->c:Lyads/lg5;

    .line 69
    iget-object v0, v0, Lyads/lg5;->f:Lyads/qd5;

    .line 70
    iget-object v1, p0, Lyads/gg5;->a:Landroid/content/Context;

    iget-object p0, p0, Lyads/gg5;->b:Lyads/d9;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/wh4;)V

    return-void
.end method

.method public final a(Lyads/vg4;)V
    .locals 8

    iget-object v0, p0, Lyads/gg5;->b:Lyads/d9;

    iget-object v1, p0, Lyads/gg5;->c:Lyads/lg5;

    iget-object v1, v1, Lyads/lg5;->b:Lyads/dp;

    iget-object v1, v1, Lyads/dp;->b:Lyads/e4;

    new-instance v2, Lyads/xh4;

    invoke-direct {v2}, Lyads/xh4;-><init>()V

    iget-object v3, p0, Lyads/gg5;->c:Lyads/lg5;

    iget-object v4, v3, Lyads/lg5;->f:Lyads/qd5;

    iget-object v5, p0, Lyads/gg5;->a:Landroid/content/Context;

    iget-object v6, p0, Lyads/gg5;->b:Lyads/d9;

    iget-object v3, v3, Lyads/lg5;->e:Lyads/vh4;

    invoke-virtual {v4, v5, v6, v3}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/vh4;)V

    iget-object v3, p0, Lyads/gg5;->c:Lyads/lg5;

    iget-object v3, v3, Lyads/lg5;->f:Lyads/qd5;

    iget-object v4, p0, Lyads/gg5;->a:Landroid/content/Context;

    iget-object p0, p0, Lyads/gg5;->b:Lyads/d9;

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
