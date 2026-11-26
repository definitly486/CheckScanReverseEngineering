.class public final Lyads/vl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xl2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/vz2;)I
    .locals 0

    .line 25
    iget-object p0, p1, Lyads/vz2;->p:Lyads/ql2;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lyads/tl2;Lyads/vz2;)Lyads/eo2;
    .locals 1

    iget-object p0, p2, Lyads/vz2;->p:Lyads/ql2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lyads/eo2;

    new-instance p1, Lyads/rl2;

    new-instance p2, Lyads/k46;

    invoke-direct {p2}, Lyads/k46;-><init>()V

    const/16 v0, 0x1771

    invoke-direct {p1, p2, v0}, Lyads/rl2;-><init>(Ljava/lang/Exception;I)V

    invoke-direct {p0, p1}, Lyads/eo2;-><init>(Lyads/rl2;)V

    return-object p0
.end method

.method public final a(Landroid/os/Looper;Lyads/rw4;)V
    .locals 0

    .line 24
    return-void
.end method
