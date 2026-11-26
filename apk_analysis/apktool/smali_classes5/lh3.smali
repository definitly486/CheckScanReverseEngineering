.class public final Llh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh3$a;
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
.field public final d:J


# direct methods
.method public constructor <init>(Lgg3;)V
    .locals 2

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Llh3;->d:J

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

    new-instance v4, Ldc8;

    invoke-direct {v4}, Ldc8;-><init>()V

    invoke-interface {p1, v4}, Lwb8;->a(Lbc8;)V

    new-instance v0, Llh3$a;

    iget-wide v1, p0, Llh3;->d:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    const-wide/16 v5, 0x1

    sub-long v5, v1, v5

    :cond_0
    move-wide v2, v5

    iget-object v5, p0, Lk0;->c:Lgg3;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llh3$a;-><init>(Lwb8;JLdc8;Ldt6;)V

    invoke-virtual {v0}, Llh3$a;->b()V

    return-void
.end method
