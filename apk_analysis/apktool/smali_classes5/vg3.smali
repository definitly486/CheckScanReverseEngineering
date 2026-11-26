.class public final Lvg3;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final c:Lzg3;

.field public final d:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lzg3;Ln08;I)V
    .locals 0

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Lvg3;->c:Lzg3;

    iput-object p2, p0, Lvg3;->d:Lxl3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lvg3;->e:Z

    const p1, 0x7fffffff

    iput p1, p0, Lvg3;->f:I

    iput p3, p0, Lvg3;->g:I

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lvg3;->d:Lxl3;

    iget-object v1, p0, Lvg3;->c:Lzg3;

    invoke-static {v1, p1, v0}, Lnh3;->a(Ldt6;Lwb8;Lxl3;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ltg3$b;

    iget-object v4, p0, Lvg3;->d:Lxl3;

    iget-boolean v5, p0, Lvg3;->e:Z

    iget v6, p0, Lvg3;->f:I

    iget v7, p0, Lvg3;->g:I

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ltg3$b;-><init>(Lwb8;Lxl3;ZII)V

    invoke-virtual {v1, v2}, Lgg3;->a(Lwb8;)V

    return-void
.end method
