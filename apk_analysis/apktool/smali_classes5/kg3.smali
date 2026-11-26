.class public final Lkg3;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg3$f;,
        Lkg3$c;,
        Lkg3$e;,
        Lkg3$d;,
        Lkg3$h;,
        Lkg3$g;,
        Lkg3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljh3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljh3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ln00;


# direct methods
.method public constructor <init>(Ljh3;Ln00;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljh3<",
            "TT;>;",
            "Ln00;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Lkg3;->c:Ljh3;

    iput-object p2, p0, Lkg3;->d:Ln00;

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

    sget-object v0, Lkg3$a;->a:[I

    iget-object v1, p0, Lkg3;->d:Ln00;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lkg3$c;

    sget v1, Lgg3;->b:I

    invoke-direct {v0, p1, v1}, Lkg3$c;-><init>(Lwb8;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkg3$f;

    invoke-direct {v0, p1}, Lkg3$f;-><init>(Lwb8;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkg3$d;

    invoke-direct {v0, p1}, Lkg3$b;-><init>(Lwb8;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lkg3$e;

    invoke-direct {v0, p1}, Lkg3$b;-><init>(Lwb8;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lkg3$g;

    invoke-direct {v0, p1}, Lkg3$b;-><init>(Lwb8;)V

    :goto_0
    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    :try_start_0
    iget-object p0, p0, Lkg3;->c:Ljh3;

    invoke-interface {p0, v0}, Ljh3;->subscribe(Lqg3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lkg3$b;->d(Ljava/lang/Throwable;)V

    return-void
.end method
