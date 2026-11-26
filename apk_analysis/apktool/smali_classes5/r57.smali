.class public final Lr57;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Throwable;)Lk57$a;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lk57$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lk57$a;

    iget-object p0, p0, Lk57$a;->b:Ljava/lang/Throwable;

    throw p0
.end method
