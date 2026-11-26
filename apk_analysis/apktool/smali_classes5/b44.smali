.class public final Lb44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk92;
.implements Lm02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk92;",
        "Lm02<",
        "Lb44;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lb44;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Lb44;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb44;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lb44;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lb44;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lb44;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lb44;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lb44;
    .locals 6

    new-instance v0, Lb44;

    iget-object v1, p0, Lb44;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lb44;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lb44;->c:Ljava/lang/Integer;

    iget-object v4, p0, Lb44;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lb44;->e:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v5}, Lb44;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lb44;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c()Lct4;
    .locals 8

    iget-object v0, p0, Lb44;->a:Ljava/lang/Integer;

    const-string v1, "year"

    invoke-static {v0, v1}, Lft4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lb44;->e:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lct4;

    iget-object v3, p0, Lb44;->b:Ljava/lang/Integer;

    const-string v4, "monthNumber"

    invoke-static {v3, v4}, Lft4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lb44;->c:Ljava/lang/Integer;

    const-string v5, "dayOfMonth"

    invoke-static {v4, v5}, Lft4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v1, v0, v3, v4}, Lct4;-><init>(III)V

    goto/16 :goto_2

    :cond_0
    new-instance v3, Lct4;

    invoke-direct {v3, v0, v2, v2}, Lct4;-><init>(III)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    sget-object v5, Llc2;->Companion:Llc2$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Llc2;->a:Llc2$c;

    invoke-static {v3, v4, v5}, Lit4;->a(Lct4;ILlc2$b;)Lct4;

    move-result-object v3

    iget-object v4, v3, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v5

    const-string v6, "Can not create a LocalDate from the given input: the day of year is "

    if-ne v5, v0, :cond_8

    iget-object v0, p0, Lb44;->b:Ljava/lang/Integer;

    const-string v5, ", but "

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    iget-object v7, p0, Lb44;->b:Ljava/lang/Integer;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/datetime/DateTimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", which is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb44;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was specified as the month number"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lb44;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    iget-object v7, p0, Lb44;->c:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlinx/datetime/DateTimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", which is the day "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb44;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was specified as the day of month"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    move-object v1, v3

    :goto_2
    iget-object v0, v1, Lct4;->b:Ljava/time/LocalDate;

    iget-object p0, p0, Lb44;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v2

    if-eq p0, v3, :cond_7

    new-instance v3, Lkotlinx/datetime/DateTimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can not create a LocalDate from the given input: the day of week is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gt v2, p0, :cond_6

    const/16 v5, 0x8

    if-lt p0, v5, :cond_5

    goto :goto_3

    :cond_5
    sget-object v5, Luc2;->a:Li03;

    sub-int/2addr p0, v2

    invoke-virtual {v5, p0}, Li03;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/DayOfWeek;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but the date is "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", which is a "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_3
    const-string v0, "Expected ISO day-of-week number in 1..7, got "

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", which is not a valid day of year for the year "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic copy()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb44;->a()Lb44;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lb44;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb44;->a:Ljava/lang/Integer;

    check-cast p1, Lb44;

    iget-object v1, p1, Lb44;->a:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb44;->b:Ljava/lang/Integer;

    iget-object v1, p1, Lb44;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb44;->c:Ljava/lang/Integer;

    iget-object v1, p1, Lb44;->c:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb44;->d:Ljava/lang/Integer;

    iget-object v1, p1, Lb44;->d:Ljava/lang/Integer;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb44;->e:Ljava/lang/Integer;

    iget-object p1, p1, Lb44;->e:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lb44;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0xe1781

    mul-int/2addr v0, v2

    iget-object v2, p0, Lb44;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit16 v2, v2, 0x745f

    add-int/2addr v2, v0

    iget-object v0, p0, Lb44;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    mul-int/lit16 v0, v0, 0x3c1

    add-int/2addr v0, v2

    iget-object v2, p0, Lb44;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    iget-object p0, p0, Lb44;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v2, v1

    return v2
.end method

.method public final k()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lb44;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lb44;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final n()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lb44;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final o(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lb44;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final s(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lb44;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb44;->a:Ljava/lang/Integer;

    const-string v2, "??"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb44;->b:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb44;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (day of week is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb44;->d:Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    const/16 p0, 0x29

    invoke-static {v0, v2, p0}, Lvg;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lb44;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final x()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lb44;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final y(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lb44;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final z()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lb44;->c:Ljava/lang/Integer;

    return-object p0
.end method
