.class public final Lut4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lut4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lut4;",
        ">;"
    }
.end annotation

.annotation runtime Lup7;
    with = Lbu4;
.end annotation


# static fields
.field public static final Companion:Lut4$a;


# instance fields
.field public final b:Ljava/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lut4$a;

    invoke-direct {v0}, Lut4$a;-><init>()V

    sput-object v0, Lut4;->Companion:Lut4$a;

    new-instance v0, Lut4;

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lut4;-><init>(Ljava/time/LocalTime;)V

    new-instance v0, Lut4;

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lut4;-><init>(Ljava/time/LocalTime;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut4;->b:Ljava/time/LocalTime;

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcg;->h(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/time/LocalTime;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lut4;->b:Ljava/time/LocalTime;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lut4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lut4;->b:Ljava/time/LocalTime;

    iget-object p1, p1, Lut4;->b:Ljava/time/LocalTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lut4;

    if-eqz v0, :cond_0

    check-cast p1, Lut4;

    iget-object p1, p1, Lut4;->b:Ljava/time/LocalTime;

    iget-object p0, p0, Lut4;->b:Ljava/time/LocalTime;

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

    iget-object p0, p0, Lut4;->b:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lut4;->b:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
