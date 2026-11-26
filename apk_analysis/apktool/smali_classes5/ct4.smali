.class public final Lct4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct4$a;,
        Lct4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lct4;",
        ">;"
    }
.end annotation

.annotation runtime Lup7;
    with = Lht4;
.end annotation


# static fields
.field public static final Companion:Lct4$a;


# instance fields
.field public final b:Ljava/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lct4$a;

    invoke-direct {v0}, Lct4$a;-><init>()V

    sput-object v0, Lct4;->Companion:Lct4$a;

    new-instance v0, Lct4;

    sget-object v1, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lct4;-><init>(Ljava/time/LocalDate;)V

    new-instance v0, Lct4;

    sget-object v1, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lct4;-><init>(Ljava/time/LocalDate;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct4;->b:Ljava/time/LocalDate;

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcg;->h(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lct4;->b:Ljava/time/LocalDate;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lct4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lct4;->b:Ljava/time/LocalDate;

    iget-object p1, p1, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lct4;

    if-eqz v0, :cond_0

    check-cast p1, Lct4;

    iget-object p1, p1, Lct4;->b:Ljava/time/LocalDate;

    iget-object p0, p0, Lct4;->b:Ljava/time/LocalDate;

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

    iget-object p0, p0, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
