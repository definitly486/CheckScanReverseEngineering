.class public final Lsh3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh3$a;,
        Lsh3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:Ll3;

.field public final e:I


# direct methods
.method public constructor <init>(Lng3;Ll3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Lsh3;->d:Ll3;

    iput p3, p0, Lsh3;->e:I

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk0;->c:Lgg3;

    iget-object v1, p0, Lsh3;->d:Ll3;

    invoke-static {v0, p1, v1}, Lnh3;->a(Ldt6;Lwb8;Lxl3;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lsh3$b;

    iget p0, p0, Lsh3;->e:I

    invoke-direct {v2, p1, v1, p0}, Lsh3$b;-><init>(Lwb8;Ll3;I)V

    invoke-virtual {v0, v2}, Lgg3;->f(Lrh3;)V

    return-void
.end method
