.class public final Ll91;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILcu0;Lnl3;I)Lmu0;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    sget-object p1, Lcu0;->SUSPEND:Lcu0;

    :cond_1
    and-int/lit8 p3, p3, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    move-object p2, v0

    :cond_2
    const/4 p3, -0x2

    const/4 v2, 0x1

    if-eq p0, p3, :cond_9

    const/4 p3, -0x1

    if-eq p0, p3, :cond_7

    if-eqz p0, :cond_5

    const p3, 0x7fffffff

    if-eq p0, p3, :cond_4

    sget-object p3, Lcu0;->SUSPEND:Lcu0;

    if-ne p1, p3, :cond_3

    new-instance p1, Lmu0;

    invoke-direct {p1, p0, p2}, Lmu0;-><init>(ILnl3;)V

    return-object p1

    :cond_3
    new-instance p3, Lgw1;

    invoke-direct {p3, p0, p1, p2}, Lgw1;-><init>(ILcu0;Lnl3;)V

    return-object p3

    :cond_4
    new-instance p0, Lmu0;

    invoke-direct {p0, p3, p2}, Lmu0;-><init>(ILnl3;)V

    return-object p0

    :cond_5
    sget-object p0, Lcu0;->SUSPEND:Lcu0;

    if-ne p1, p0, :cond_6

    new-instance p0, Lmu0;

    invoke-direct {p0, v1, p2}, Lmu0;-><init>(ILnl3;)V

    return-object p0

    :cond_6
    new-instance p0, Lgw1;

    invoke-direct {p0, v2, p1, p2}, Lgw1;-><init>(ILcu0;Lnl3;)V

    return-object p0

    :cond_7
    sget-object p0, Lcu0;->SUSPEND:Lcu0;

    if-ne p1, p0, :cond_8

    new-instance p0, Lgw1;

    sget-object p1, Lcu0;->DROP_OLDEST:Lcu0;

    invoke-direct {p0, v2, p1, p2}, Lgw1;-><init>(ILcu0;Lnl3;)V

    return-object p0

    :cond_8
    const-string p0, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_9
    sget-object p0, Lcu0;->SUSPEND:Lcu0;

    if-ne p1, p0, :cond_a

    new-instance p0, Lmu0;

    sget-object p1, Lx81;->s1:Lx81$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lx81$a;->b:I

    invoke-direct {p0, p1, p2}, Lmu0;-><init>(ILnl3;)V

    return-object p0

    :cond_a
    new-instance p0, Lgw1;

    invoke-direct {p0, v2, p1, p2}, Lgw1;-><init>(ILcu0;Lnl3;)V

    return-object p0
.end method
