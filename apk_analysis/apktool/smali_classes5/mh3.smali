.class public final Lmh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh3$a;
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
.field public final d:Lrm3$m;

.field public final e:J


# direct methods
.method public constructor <init>(Lgg3;)V
    .locals 2

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    sget-object p1, Lrm3;->f:Lrm3$m;

    iput-object p1, p0, Lmh3;->d:Lrm3$m;

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lmh3;->e:J

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v5, Ldc8;

    invoke-direct {v5}, Ldc8;-><init>()V

    invoke-interface {p1, v5}, Lwb8;->a(Lbc8;)V

    new-instance v0, Lmh3$a;

    iget-object v4, p0, Lmh3;->d:Lrm3$m;

    iget-object v6, p0, Lk0;->c:Lgg3;

    iget-wide v2, p0, Lmh3;->e:J

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmh3$a;-><init>(Lwb8;JLrm3$m;Ldc8;Ldt6;)V

    invoke-virtual {v0}, Lmh3$a;->b()V

    return-void
.end method
