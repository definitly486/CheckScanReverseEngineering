.class public final Lmg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg3$a;,
        Lmg3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lrm3$i;

.field public final e:Lff1;


# direct methods
.method public constructor <init>(Lgg3;Lff1;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    sget-object p1, Lrm3;->a:Lrm3$i;

    iput-object p1, p0, Lmg3;->d:Lrm3$i;

    iput-object p2, p0, Lmg3;->e:Lff1;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lgv1;

    iget-object v1, p0, Lmg3;->e:Lff1;

    iget-object v2, p0, Lmg3;->d:Lrm3$i;

    iget-object p0, p0, Lk0;->c:Lgg3;

    if-eqz v0, :cond_0

    check-cast p1, Lgv1;

    new-instance v0, Lmg3$a;

    invoke-direct {v0, p1, v2, v1}, Lmg3$a;-><init>(Lgv1;Lrm3$i;Lff1;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void

    :cond_0
    new-instance v0, Lmg3$b;

    invoke-direct {v0, p1, v2, v1}, Lmg3$b;-><init>(Lwb8;Lrm3$i;Lff1;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
