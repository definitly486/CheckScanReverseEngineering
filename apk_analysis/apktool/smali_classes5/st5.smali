.class public final Lst5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzh6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lst5$a;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "refId"
    .end annotation
.end field

.field private final b:Lst5$a;
    .annotation runtime Lbq7;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILst5$a;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lst5;->a:I

    iput-object p2, p0, Lst5;->b:Lst5$a;

    sget-object p0, Lzh6$a;->OfferHeader:Lzh6$a;

    return-void
.end method


# virtual methods
.method public final a()Lst5$a;
    .locals 0

    iget-object p0, p0, Lst5;->b:Lst5$a;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lst5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lst5;

    iget v1, p0, Lst5;->a:I

    iget v3, p1, Lst5;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lst5;->b:Lst5$a;

    iget-object p1, p1, Lst5;->b:Lst5$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lst5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lst5;->b:Lst5$a;

    invoke-virtual {p0}, Lst5$a;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lst5;->a:I

    iget-object p0, p0, Lst5;->b:Lst5$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OfferHeaderResponse(refId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", content="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
