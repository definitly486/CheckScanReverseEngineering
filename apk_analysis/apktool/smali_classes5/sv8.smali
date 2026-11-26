.class public Lsv8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsv8$a;
    }
.end annotation

.annotation runtime Lup7;
    with = Luv8;
.end annotation


# static fields
.field public static final Companion:Lsv8$a;


# instance fields
.field public final a:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsv8$a;

    invoke-direct {v0}, Lsv8$a;-><init>()V

    sput-object v0, Lsv8;->Companion:Lsv8$a;

    new-instance v0, Lda9;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lda9;-><init>(Ljava/time/ZoneOffset;)V

    new-instance v0, Lgc3;

    return-void
.end method

.method public constructor <init>(Ljava/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv8;->a:Ljava/time/ZoneId;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lsv8;

    if-eqz v0, :cond_0

    check-cast p1, Lsv8;

    iget-object p1, p1, Lsv8;->a:Ljava/time/ZoneId;

    iget-object p0, p0, Lsv8;->a:Ljava/time/ZoneId;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object p0, p0, Lsv8;->a:Ljava/time/ZoneId;

    invoke-virtual {p0}, Ljava/time/ZoneId;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsv8;->a:Ljava/time/ZoneId;

    invoke-virtual {p0}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
