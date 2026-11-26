.class public final Loh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loh3$a;
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
.field public final d:Z


# direct methods
.method public constructor <init>(Lyg3;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Loh3;->d:Z

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Loh3$a;

    iget-boolean v1, p0, Loh3;->d:Z

    invoke-direct {v0, p1, v1}, Loh3$a;-><init>(Lwb8;Z)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
