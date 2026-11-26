.class public final Lug3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug3$a;
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
.field public final d:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lx75<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lgg3;Lxl3;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Lug3;->d:Lxl3;

    const p1, 0x7fffffff

    iput p1, p0, Lug3;->e:I

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

    new-instance v0, Lug3$a;

    iget-object v1, p0, Lug3;->d:Lxl3;

    iget v2, p0, Lug3;->e:I

    invoke-direct {v0, p1, v1, v2}, Lug3$a;-><init>(Lwb8;Lxl3;I)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
