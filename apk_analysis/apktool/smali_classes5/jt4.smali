.class public final Ljt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljt4$a;,
        Ljt4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljt4;",
        ">;"
    }
.end annotation

.annotation runtime Lup7;
    with = Lpt4;
.end annotation


# static fields
.field public static final Companion:Ljt4$a;


# instance fields
.field public final b:Ljava/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljt4$a;

    invoke-direct {v0}, Ljt4$a;-><init>()V

    sput-object v0, Ljt4;->Companion:Ljt4$a;

    new-instance v0, Ljt4;

    sget-object v1, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljt4;-><init>(Ljava/time/LocalDateTime;)V

    new-instance v0, Ljt4;

    sget-object v1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljt4;-><init>(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public constructor <init>(Lct4;Lut4;)V
    .locals 0

    iget-object p1, p1, Lct4;->b:Ljava/time/LocalDate;

    iget-object p2, p2, Lut4;->b:Ljava/time/LocalTime;

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    return-void
.end method


# virtual methods
.method public final a()Lct4;
    .locals 1

    new-instance v0, Lct4;

    iget-object p0, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lct4;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljt4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    iget-object p1, p1, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ljt4;

    if-eqz v0, :cond_0

    check-cast p1, Ljt4;

    iget-object p1, p1, Ljt4;->b:Ljava/time/LocalDateTime;

    iget-object p0, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljt4;->b:Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
