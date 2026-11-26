.class public final Lu88;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu88$a;,
        Lu88$b;,
        Lu88$c;
    }
.end annotation


# instance fields
.field private final a:Lu88$b;
    .annotation runtime Lbq7;
        value = "left"
    .end annotation
.end field

.field private final b:Lu88$c;
    .annotation runtime Lbq7;
        value = "right"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu88$b;Lu88$c;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu88;->a:Lu88$b;

    iput-object p2, p0, Lu88;->b:Lu88$c;

    return-void
.end method


# virtual methods
.method public final a()Lu88$b;
    .locals 0

    iget-object p0, p0, Lu88;->a:Lu88$b;

    return-object p0
.end method

.method public final b()Lu88$c;
    .locals 0

    iget-object p0, p0, Lu88;->b:Lu88$c;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu88;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu88;

    iget-object v1, p0, Lu88;->a:Lu88$b;

    iget-object v3, p1, Lu88;->a:Lu88$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lu88;->b:Lu88$c;

    iget-object p1, p1, Lu88;->b:Lu88$c;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lu88;->a:Lu88$b;

    invoke-virtual {v0}, Lu88$b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lu88;->b:Lu88$c;

    invoke-virtual {p0}, Lu88$c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lu88;->a:Lu88$b;

    iget-object p0, p0, Lu88;->b:Lu88$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StepEarningBlockResponse(left="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
