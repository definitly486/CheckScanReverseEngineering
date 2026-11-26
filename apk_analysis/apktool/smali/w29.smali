.class public final Lw29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq29;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq29<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lhz;

.field public final b:Ljava/lang/String;

.field public final c:Liy2;

.field public final d:Ld29;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld29<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Ld39;


# direct methods
.method public constructor <init>(Lhz;Ljava/lang/String;Liy2;Ld29;Ld39;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw29;->a:Lhz;

    iput-object p2, p0, Lw29;->b:Ljava/lang/String;

    iput-object p3, p0, Lw29;->c:Liy2;

    iput-object p4, p0, Lw29;->d:Ld29;

    iput-object p5, p0, Lw29;->e:Ld39;

    return-void
.end method


# virtual methods
.method public final a(Lry;)V
    .locals 2

    new-instance v0, Lki0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lki0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lw29;->b(Lry;Lf39;)V

    return-void
.end method

.method public final b(Lry;Lf39;)V
    .locals 7

    const-string v0, "Null transportName"

    iget-object v3, p0, Lw29;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v5, p0, Lw29;->d:Ld29;

    if-eqz v5, :cond_2

    new-instance v1, Lgz;

    iget-object v2, p0, Lw29;->a:Lhz;

    iget-object v6, p0, Lw29;->c:Liy2;

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lgz;-><init>(Lhz;Ljava/lang/String;Lry;Ld29;Liy2;)V

    iget-object p0, p0, Lw29;->e:Ld39;

    iget-object p1, p0, Ld39;->c:Lie7;

    iget-object v2, v1, Lgz;->a:Lhz;

    iget-object v3, v1, Lgz;->c:Lry;

    iget-object v4, v3, Lry;->b:Lig6;

    invoke-virtual {v2, v4}, Ls29;->e(Lig6;)Lhz;

    move-result-object v2

    new-instance v4, Lsy$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lsy$a;->f:Ljava/util/HashMap;

    iget-object v5, p0, Ld39;->a:Lhm1;

    invoke-interface {v5}, Lhm1;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lsy$a;->d:Ljava/lang/Long;

    iget-object p0, p0, Ld39;->b:Lhm1;

    invoke-interface {p0}, Lhm1;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v4, Lsy$a;->e:Ljava/lang/Long;

    iget-object p0, v1, Lgz;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    iput-object p0, v4, Lsy$a;->a:Ljava/lang/String;

    new-instance p0, Lsx2;

    iget-object v0, v1, Lgz;->d:Ld29;

    iget-object v5, v3, Lry;->a:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ld29;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, v1, Lgz;->e:Liy2;

    invoke-direct {p0, v1, v0}, Lsx2;-><init>(Liy2;[B)V

    iput-object p0, v4, Lsy$a;->c:Lsx2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iput-object p0, v4, Lsy$a;->b:Ljava/lang/Integer;

    iget-object p0, v3, Lry;->c:Ldz;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ldz;->a()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, v3, Lry;->c:Ldz;

    invoke-virtual {p0}, Ldz;->a()Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, Lsy$a;->g:Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lsy$a;->b()Lsy;

    move-result-object p0

    invoke-interface {p1, v2, p0, p2}, Lie7;->a(Lhz;Lsy;Lf39;)V

    return-void

    :cond_1
    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Null transformer"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method
