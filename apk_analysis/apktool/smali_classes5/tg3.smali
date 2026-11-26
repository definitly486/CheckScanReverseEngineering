.class public final Ltg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltg3$a;,
        Ltg3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Lrm3$i;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lxg3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    sget-object p1, Lrm3;->a:Lrm3$i;

    iput-object p1, p0, Ltg3;->d:Lrm3$i;

    const/4 p1, 0x3

    iput p1, p0, Ltg3;->e:I

    iput p2, p0, Ltg3;->f:I

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

    iget-object v0, p0, Ltg3;->d:Lrm3$i;

    iget-object v1, p0, Lk0;->c:Lgg3;

    invoke-static {v1, p1, v0}, Lnh3;->a(Ldt6;Lwb8;Lxl3;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ltg3$b;

    iget-object v4, p0, Ltg3;->d:Lrm3$i;

    const/4 v5, 0x0

    iget v6, p0, Ltg3;->e:I

    iget v7, p0, Ltg3;->f:I

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ltg3$b;-><init>(Lwb8;Lxl3;ZII)V

    invoke-virtual {v1, v2}, Lgg3;->f(Lrh3;)V

    return-void
.end method
