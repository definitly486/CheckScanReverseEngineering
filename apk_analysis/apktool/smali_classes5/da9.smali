.class public final Lda9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda9$a;
    }
.end annotation

.annotation runtime Lup7;
    with = Lxa9;
.end annotation


# static fields
.field public static final Companion:Lda9$a;


# instance fields
.field public final a:Ljava/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lda9$a;

    invoke-direct {v0}, Lda9$a;-><init>()V

    sput-object v0, Lda9;->Companion:Lda9$a;

    new-instance v0, Lda9;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lda9;-><init>(Ljava/time/ZoneOffset;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/ZoneOffset;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda9;->a:Ljava/time/ZoneOffset;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lda9;

    if-eqz v0, :cond_0

    check-cast p1, Lda9;

    iget-object p1, p1, Lda9;->a:Ljava/time/ZoneOffset;

    iget-object p0, p0, Lda9;->a:Ljava/time/ZoneOffset;

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
    .locals 0

    iget-object p0, p0, Lda9;->a:Ljava/time/ZoneOffset;

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lda9;->a:Ljava/time/ZoneOffset;

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
