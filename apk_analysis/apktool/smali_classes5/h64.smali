.class public final Lh64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh64$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh64;",
        ">;"
    }
.end annotation

.annotation runtime Lup7;
    with = Lj64;
.end annotation


# static fields
.field public static final Companion:Lh64$a;

.field public static final c:Lh64;

.field public static final d:Lh64;


# instance fields
.field public final b:Ljava/time/Instant;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lh64$a;

    invoke-direct {v0}, Lh64$a;-><init>()V

    sput-object v0, Lh64;->Companion:Lh64$a;

    new-instance v0, Lh64;

    const-wide v1, -0x2ed378be301L

    const-wide/32 v3, 0x3b9ac9ff

    invoke-static {v1, v2, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lh64;-><init>(Ljava/time/Instant;)V

    new-instance v0, Lh64;

    const-wide v1, 0x2d044a2eb00L

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lh64;-><init>(Ljava/time/Instant;)V

    new-instance v0, Lh64;

    sget-object v1, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lh64;-><init>(Ljava/time/Instant;)V

    sput-object v0, Lh64;->c:Lh64;

    new-instance v0, Lh64;

    sget-object v1, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lh64;-><init>(Ljava/time/Instant;)V

    sput-object v0, Lh64;->d:Lh64;

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh64;->b:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh64;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    iget-object p1, p1, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lh64;

    if-eqz v0, :cond_0

    check-cast p1, Lh64;

    iget-object p1, p1, Lh64;->b:Ljava/time/Instant;

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

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

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh64;->b:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
