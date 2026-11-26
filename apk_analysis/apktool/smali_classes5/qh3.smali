.class public final Lqh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqh3$a;
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
.field public final d:Lhe7;

.field public final e:Z


# direct methods
.method public constructor <init>(Lgg3;Lhe7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg3<",
            "TT;>;",
            "Lhe7;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Lqh3;->d:Lhe7;

    iput-boolean p3, p0, Lqh3;->e:Z

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

    iget-object v0, p0, Lqh3;->d:Lhe7;

    invoke-virtual {v0}, Lhe7;->b()Lhe7$c;

    move-result-object v0

    new-instance v1, Lqh3$a;

    iget-object v2, p0, Lk0;->c:Lgg3;

    iget-boolean p0, p0, Lqh3;->e:Z

    invoke-direct {v1, p1, v0, v2, p0}, Lqh3$a;-><init>(Lwb8;Lhe7$c;Ldt6;Z)V

    invoke-interface {p1, v1}, Lwb8;->a(Lbc8;)V

    invoke-virtual {v0, v1}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    return-void
.end method
