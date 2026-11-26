.class public final Lcn1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "null value in entry: "

    const-string v0, "=null"

    invoke-static {p0, p1, v0}, Lch;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null key in entry: null="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " cannot be negative but was: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Z)V
    .locals 1

    const-string v0, "no calls to next() since the last call to remove()"

    invoke-static {p0, v0}, Lo8;->s(ZLjava/lang/Object;)V

    return-void
.end method

.method public static final d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p3, Lcd0;

    if-nez v1, :cond_0

    invoke-static {p3, p2, p0}, Lzya;->c(Lbm3;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lv39;->c(ILjava/lang/Object;)V

    check-cast p3, Lbm3;

    invoke-interface {p3, p2, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lkotlinx/coroutines/DispatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance p3, Lyq1;

    invoke-direct {p3, p2, v0}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    move-object p2, p3

    :goto_1
    sget-object p3, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p2, p3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Lsb4;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lvp2;->d:Lbh8;

    if-ne v0, v1, :cond_2

    :goto_2
    return-object p3

    :cond_2
    invoke-virtual {p0}, Laf7;->n0()V

    instance-of p3, v0, Lyq1;

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    move-object p1, v0

    check-cast p1, Lyq1;

    iget-object p1, p1, Lyq1;->a:Ljava/lang/Throwable;

    instance-of p3, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz p3, :cond_4

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    iget-object p1, p1, Lkotlinx/coroutines/TimeoutCancellationException;->b:Lmb4;

    if-ne p1, p0, :cond_4

    instance-of p0, p2, Lyq1;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    check-cast p2, Lyq1;

    iget-object p0, p2, Lyq1;->a:Ljava/lang/Throwable;

    throw p0

    :cond_4
    check-cast v0, Lyq1;

    iget-object p0, v0, Lyq1;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    invoke-static {v0}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_3
    return-object p2

    :goto_4
    new-instance p2, Lyq1;

    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->b:Ljava/lang/Throwable;

    invoke-direct {p2, p1, v0}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, p2}, Lsb4;->T(Ljava/lang/Object;)Z

    throw p1
.end method
