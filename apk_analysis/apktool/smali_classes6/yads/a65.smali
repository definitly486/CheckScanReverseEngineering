.class public final Lyads/a65;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/a65;->b:Lc31;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lyads/hi6;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/SerializationException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/a65;->b:Lc31;

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lk57;

    invoke-direct {p1, v0}, Lk57;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    throw p1
.end method
