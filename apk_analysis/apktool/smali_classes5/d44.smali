.class public final Ld44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhu8;
.implements Lm02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhu8;",
        "Lm02<",
        "Ld44;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Lxc;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Ld44;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v6}, Ld44;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lxc;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lxc;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld44;->a:Ljava/lang/Integer;

    iput-object p2, p0, Ld44;->b:Ljava/lang/Integer;

    iput-object p3, p0, Ld44;->c:Lxc;

    iput-object p4, p0, Ld44;->d:Ljava/lang/Integer;

    iput-object p5, p0, Ld44;->e:Ljava/lang/Integer;

    iput-object p6, p0, Ld44;->f:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ld44;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final a()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ld44;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b()Ld44;
    .locals 7

    new-instance v0, Ld44;

    iget-object v1, p0, Ld44;->a:Ljava/lang/Integer;

    iget-object v2, p0, Ld44;->b:Ljava/lang/Integer;

    iget-object v3, p0, Ld44;->c:Lxc;

    iget-object v4, p0, Ld44;->d:Ljava/lang/Integer;

    iget-object v5, p0, Ld44;->e:Ljava/lang/Integer;

    iget-object v6, p0, Ld44;->f:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v6}, Ld44;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lxc;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final c()Lut4;
    .locals 7

    iget-object v0, p0, Ld44;->a:Ljava/lang/Integer;

    iget-object v1, p0, Ld44;->b:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v6, v0, 0xb

    rem-int/2addr v6, v3

    add-int/2addr v6, v5

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Inconsistent hour and hour-of-am-pm: hour is "

    const-string v3, ", but hour-of-am-pm is "

    invoke-static {v0, v1, p0, v3}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    :goto_0
    iget-object v1, p0, Ld44;->c:Lxc;

    if-eqz v1, :cond_9

    sget-object v2, Lxc;->PM:Lxc;

    if-ne v1, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-lt v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-ne v2, v5, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent hour and the AM/PM marker: hour is "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but the AM/PM marker is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Ld44;->c:Lxc;

    if-eqz v1, :cond_8

    if-ne v0, v3, :cond_6

    move v0, v4

    :cond_6
    sget-object v2, Lxc;->PM:Lxc;

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_9
    :goto_4
    new-instance v1, Lut4;

    iget-object v2, p0, Ld44;->d:Ljava/lang/Integer;

    const-string v3, "minute"

    invoke-static {v2, v3}, Lft4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Ld44;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    iget-object p0, p0, Ld44;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_b
    invoke-direct {v1, v0, v2, v3, v4}, Lut4;-><init>(IIII)V

    return-object v1

    :cond_c
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    const-string v0, "Incomplete time: missing hour"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic copy()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld44;->b()Ld44;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ld44;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ld44;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld44;->a:Ljava/lang/Integer;

    check-cast p1, Ld44;

    iget-object v1, p1, Ld44;->a:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld44;->b:Ljava/lang/Integer;

    iget-object v1, p1, Ld44;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld44;->c:Lxc;

    iget-object v1, p1, Ld44;->c:Lxc;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld44;->d:Ljava/lang/Integer;

    iget-object v1, p1, Ld44;->d:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld44;->e:Ljava/lang/Integer;

    iget-object v1, p1, Ld44;->e:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld44;->f:Ljava/lang/Integer;

    iget-object p1, p1, Ld44;->f:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Led2;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Led2;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ld44;->f:Ljava/lang/Integer;

    return-void
.end method

.method public final getHour()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ld44;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMinute()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ld44;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h()Lxc;
    .locals 0

    iget-object p0, p0, Ld44;->c:Lxc;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ld44;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ld44;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    iget-object v0, p0, Ld44;->c:Lxc;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget-object v2, p0, Ld44;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    iget-object v0, p0, Ld44;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget-object p0, p0, Ld44;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ld44;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Lxc;)V
    .locals 0

    iput-object p1, p0, Ld44;->c:Lxc;

    return-void
.end method

.method public final r()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ld44;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld44;->a:Ljava/lang/Integer;

    const-string v2, "??"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld44;->d:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld44;->e:Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld44;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    invoke-static {v1, p0}, Lta8;->R(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "???"

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ld44;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final w()Led2;
    .locals 2

    iget-object p0, p0, Ld44;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Led2;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Led2;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
