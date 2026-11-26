.class public final Ldy4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "rewardAmount"
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lbq7;
        value = "totalAmountSpent"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldy4$a$a;->a:I

    iput p2, p0, Ldy4$a$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ldy4$a$a;->a:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ldy4$a$a;->b:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldy4$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldy4$a$a;

    iget v1, p0, Ldy4$a$a;->a:I

    iget v3, p1, Ldy4$a$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Ldy4$a$a;->b:I

    iget p1, p1, Ldy4$a$a;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ldy4$a$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Ldy4$a$a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ldy4$a$a;->a:I

    iget p0, p0, Ldy4$a$a;->b:I

    const-string v1, ", totalAmountSpent="

    const-string v2, ")"

    const-string v3, "Level(rewardAmount="

    invoke-static {v0, p0, v3, v1, v2}, Lln;->c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
