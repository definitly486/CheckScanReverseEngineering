.class public final Lng3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng3$a;,
        Lng3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lqx1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqx1<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final e:Lrm3$e;

.field public final f:Lrm3$d;

.field public final g:Lrm3$d;


# direct methods
.method public constructor <init>(Lgg3;Lqx1;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Lng3;->d:Lqx1;

    sget-object p1, Lrm3;->d:Lrm3$e;

    iput-object p1, p0, Lng3;->e:Lrm3$e;

    sget-object p1, Lrm3;->c:Lrm3$d;

    iput-object p1, p0, Lng3;->f:Lrm3$d;

    iput-object p1, p0, Lng3;->g:Lrm3$d;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lgv1;

    iget-object v1, p0, Lk0;->c:Lgg3;

    iget-object v4, p0, Lng3;->d:Lqx1;

    if-eqz v0, :cond_0

    new-instance v2, Lng3$a;

    move-object v3, p1

    check-cast v3, Lgv1;

    iget-object v6, p0, Lng3;->f:Lrm3$d;

    iget-object v7, p0, Lng3;->g:Lrm3$d;

    iget-object v5, p0, Lng3;->e:Lrm3$e;

    invoke-direct/range {v2 .. v7}, Lng3$a;-><init>(Lgv1;Lqx1;Lrm3$e;Lrm3$d;Lrm3$d;)V

    invoke-virtual {v1, v2}, Lgg3;->f(Lrh3;)V

    return-void

    :cond_0
    new-instance v2, Lng3$b;

    iget-object v6, p0, Lng3;->f:Lrm3$d;

    iget-object v7, p0, Lng3;->g:Lrm3$d;

    iget-object v5, p0, Lng3;->e:Lrm3$e;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lng3$b;-><init>(Lwb8;Lqx1;Lrm3$e;Lrm3$d;Lrm3$d;)V

    invoke-virtual {v1, v2}, Lgg3;->f(Lrh3;)V

    return-void
.end method
