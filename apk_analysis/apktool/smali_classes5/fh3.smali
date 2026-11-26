.class public final Lfh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh3$a;
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
.field public final d:I

.field public final e:Z

.field public final f:Lrm3$d;


# direct methods
.method public constructor <init>(Lah3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput p2, p0, Lfh3;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfh3;->e:Z

    sget-object p1, Lrm3;->c:Lrm3$d;

    iput-object p1, p0, Lfh3;->f:Lrm3$d;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lfh3$a;

    iget-boolean v1, p0, Lfh3;->e:Z

    iget-object v2, p0, Lfh3;->f:Lrm3$d;

    iget v3, p0, Lfh3;->d:I

    invoke-direct {v0, p1, v3, v1, v2}, Lfh3$a;-><init>(Lwb8;IZLrm3$d;)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
