.class public final Lmo8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmo8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmo8$b$a;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "completed"
    .end annotation
.end field

.field private final d:Lmo8$b$a;
    .annotation runtime Lbq7;
        value = "actionButton"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLmo8$b$a;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmo8$b;->a:I

    iput-object p2, p0, Lmo8$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lmo8$b;->c:Z

    iput-object p4, p0, Lmo8$b;->d:Lmo8$b$a;

    return-void
.end method


# virtual methods
.method public final a()Lmo8$b$a;
    .locals 0

    iget-object p0, p0, Lmo8$b;->d:Lmo8$b$a;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lmo8$b;->c:Z

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lmo8$b;->a:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmo8$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmo8$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmo8$b;

    iget v1, p0, Lmo8$b;->a:I

    iget v3, p1, Lmo8$b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lmo8$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lmo8$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lmo8$b;->c:Z

    iget-boolean v3, p1, Lmo8$b;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lmo8$b;->d:Lmo8$b$a;

    iget-object p1, p1, Lmo8$b;->d:Lmo8$b$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lmo8$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lmo8$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lmo8$b;->c:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lmo8$b;->d:Lmo8$b$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmo8$b$a;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lmo8$b;->a:I

    iget-object v1, p0, Lmo8$b;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lmo8$b;->c:Z

    iget-object p0, p0, Lmo8$b;->d:Lmo8$b$a;

    const-string v3, ", text="

    const-string v4, ", completed="

    const-string v5, "SubtaskResponse(id="

    invoke-static {v0, v5, v3, v1, v4}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", actionButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
