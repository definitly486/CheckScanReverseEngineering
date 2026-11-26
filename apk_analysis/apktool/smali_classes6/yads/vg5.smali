.class public final Lyads/vg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/o03;


# instance fields
.field public final a:Lyads/ea5;

.field public final b:Lyads/dp;

.field public final c:Lyads/bf5;

.field public final d:Lyads/xf4;

.field public final e:Lyads/qd5;

.field public final f:Lyads/fk4;

.field public final g:Lyads/e4;

.field public final h:Lyads/vh4;

.field public final i:Lyads/x03;

.field public j:Lyads/d9;

.field public k:Lyads/pg4;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ea5;Lyads/dp;Lyads/bf5;)V
    .locals 1

    new-instance v0, Lyads/xf4;

    invoke-direct {v0}, Lyads/xf4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/vg5;->a:Lyads/ea5;

    iput-object p3, p0, Lyads/vg5;->b:Lyads/dp;

    iput-object p4, p0, Lyads/vg5;->c:Lyads/bf5;

    iput-object v0, p0, Lyads/vg5;->d:Lyads/xf4;

    iget-object p2, p3, Lyads/dp;->b:Lyads/e4;

    iput-object p2, p0, Lyads/vg5;->g:Lyads/e4;

    new-instance v0, Lyads/vh4;

    invoke-direct {v0, p2}, Lyads/vh4;-><init>(Lyads/e4;)V

    iput-object v0, p0, Lyads/vg5;->h:Lyads/vh4;

    iget-object p3, p3, Lyads/dp;->a:Lyads/t5;

    new-instance v0, Lyads/qd5;

    invoke-direct {v0, p2, p4}, Lyads/qd5;-><init>(Lyads/e4;Lyads/bf5;)V

    iput-object v0, p0, Lyads/vg5;->e:Lyads/qd5;

    new-instance v0, Lyads/fk4;

    invoke-direct {v0, p1, p2, p3, p4}, Lyads/fk4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    iput-object v0, p0, Lyads/vg5;->f:Lyads/fk4;

    new-instance p1, Lyads/x03;

    invoke-direct {p1, p4}, Lyads/x03;-><init>(Lyads/bf5;)V

    iput-object p1, p0, Lyads/vg5;->i:Lyads/x03;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d13;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lyads/ba5;

    sget-object v0, Lyads/z6;->b:Lyads/y6;

    invoke-static {v0}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object v0

    iget-object v2, p0, Lyads/vg5;->j:Lyads/d9;

    iget-object v6, p0, Lyads/vg5;->k:Lyads/pg4;

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    iget-object v3, p0, Lyads/vg5;->g:Lyads/e4;

    iget-object v5, p0, Lyads/vg5;->c:Lyads/bf5;

    iget-object v4, p1, Lyads/w93;->c:Lyads/h9;

    iget v7, v3, Lyads/e4;->n:I

    new-instance v1, Lyads/f2;

    const/4 v8, 0x0

    const/16 v9, 0x40

    invoke-direct/range {v1 .. v9}, Lyads/f2;-><init>(Lyads/d9;Lyads/e4;Lyads/h9;Lyads/bf5;Lyads/pg4;ILyads/en0;I)V

    iget-object p1, p0, Lyads/vg5;->i:Lyads/x03;

    invoke-virtual {p1, p2, v1}, Lyads/x03;->a(Landroid/app/Activity;Lyads/f2;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lyads/vg5;->j:Lyads/d9;

    iput-object p2, p0, Lyads/vg5;->k:Lyads/pg4;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lyads/vg5;->l:Z

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lyads/vg5;->j:Lyads/d9;

    .line 47
    iput-object p1, p0, Lyads/vg5;->k:Lyads/pg4;

    .line 48
    iget-object p0, p0, Lyads/vg5;->f:Lyads/fk4;

    .line 49
    iget-object p0, p0, Lyads/fk4;->b:Lyads/df4;

    .line 50
    invoke-virtual {p0}, Lyads/df4;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/d9;)V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lyads/vg5;->l:Z

    if-nez v0, :cond_0

    .line 52
    iput-object p2, p0, Lyads/vg5;->j:Lyads/d9;

    .line 53
    iget-object v0, p0, Lyads/vg5;->b:Lyads/dp;

    .line 54
    iget-object v0, v0, Lyads/dp;->a:Lyads/t5;

    .line 55
    sget-object v1, Lyads/s5;->c:Lyads/s5;

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lyads/ug5;

    invoke-direct {v0, p0}, Lyads/ug5;-><init>(Lyads/vg5;)V

    .line 58
    new-instance v1, Lyads/tg5;

    invoke-direct {v1, p0, p1, p2}, Lyads/tg5;-><init>(Lyads/vg5;Landroid/content/Context;Lyads/d9;)V

    .line 59
    iget-object p0, p0, Lyads/vg5;->f:Lyads/fk4;

    invoke-virtual {p0, p2, v0, v1}, Lyads/fk4;->a(Lyads/d9;Lyads/ek4;Lyads/d95;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lyads/vg5;->d:Lyads/xf4;

    iget-object p0, p0, Lyads/vg5;->k:Lyads/pg4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/xf4;->b(Lyads/pg4;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyads/vg5;->d:Lyads/xf4;

    iget-object p0, p0, Lyads/vg5;->k:Lyads/pg4;

    invoke-virtual {v0, p0}, Lyads/xf4;->c(Lyads/pg4;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
