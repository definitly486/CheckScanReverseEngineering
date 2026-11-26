.class public final Llg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg3$a;,
        Llg3$b;
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

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:Lhe7;


# direct methods
.method public constructor <init>(Lgg3;Lhe7;)V
    .locals 2

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Llg3;->d:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Llg3;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, Llg3;->f:Lhe7;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Llg3$b;

    new-instance v1, Ldq7;

    invoke-direct {v1, p1}, Ldq7;-><init>(Lwb8;)V

    iget-object p1, p0, Llg3;->f:Lhe7;

    invoke-virtual {p1}, Lhe7;->b()Lhe7$c;

    move-result-object v5

    iget-wide v2, p0, Llg3;->d:J

    iget-object v4, p0, Llg3;->e:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Llg3$b;-><init>(Ldq7;JLjava/util/concurrent/TimeUnit;Lhe7$c;)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
