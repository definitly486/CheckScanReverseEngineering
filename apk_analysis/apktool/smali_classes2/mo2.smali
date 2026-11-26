.class public final Lmo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# virtual methods
.method public final a(Lf18$a;)V
    .locals 2

    sget-object p0, Lpo2;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljj2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljj2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
