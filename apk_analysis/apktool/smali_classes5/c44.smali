.class public final Lc44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk92;
.implements Lhu8;
.implements Lm02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk92;",
        "Lhu8;",
        "Lm02<",
        "Lc44;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb44;

.field public final b:Ld44;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lc44;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 2

    new-instance p1, Lb44;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lb44;-><init>(I)V

    new-instance v1, Ld44;

    invoke-direct {v1, v0}, Ld44;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lc44;-><init>(Lb44;Ld44;)V

    return-void
.end method

.method public constructor <init>(Lb44;Ld44;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc44;->a:Lb44;

    .line 17
    iput-object p2, p0, Lc44;->b:Ld44;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iput-object p1, p0, Ld44;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final a()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iget-object p0, p0, Ld44;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iget-object p0, p0, Lb44;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lc44;

    iget-object v1, p0, Lc44;->a:Lb44;

    invoke-virtual {v1}, Lb44;->a()Lb44;

    move-result-object v1

    iget-object p0, p0, Lc44;->b:Ld44;

    invoke-virtual {p0}, Ld44;->b()Ld44;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lc44;-><init>(Lb44;Ld44;)V

    return-object v0
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iput-object p1, p0, Ld44;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final g(Led2;)V
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    invoke-virtual {p0, p1}, Ld44;->g(Led2;)V

    return-void
.end method

.method public final getHour()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iget-object p0, p0, Ld44;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMinute()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iget-object p0, p0, Ld44;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h()Lxc;
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iget-object p0, p0, Ld44;->c:Lxc;

    return-object p0
.end method

.method public final i(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iput-object p1, p0, Ld44;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final k()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iget-object p0, p0, Lb44;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iput-object p1, p0, Lb44;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Lxc;)V
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iput-object p1, p0, Ld44;->c:Lxc;

    return-void
.end method

.method public final n()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iget-object p0, p0, Lb44;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final o(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iput-object p1, p0, Lb44;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final r()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iget-object p0, p0, Ld44;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final s(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iput-object p1, p0, Lb44;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final u(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iput-object p1, p0, Lb44;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final v(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    iput-object p1, p0, Ld44;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final w()Led2;
    .locals 0

    iget-object p0, p0, Lc44;->b:Ld44;

    invoke-virtual {p0}, Ld44;->w()Led2;

    move-result-object p0

    return-object p0
.end method

.method public final x()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iget-object p0, p0, Lb44;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final y(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iput-object p1, p0, Lb44;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final z()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lc44;->a:Lb44;

    iget-object p0, p0, Lb44;->c:Ljava/lang/Integer;

    return-object p0
.end method
