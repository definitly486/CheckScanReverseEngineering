.class public final Lgq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgq6$a;,
        Lgq6$b;,
        Lgq6$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "go_to_url"
    .end annotation
.end field

.field private final b:Lgq6$b;
    .annotation runtime Lbq7;
        value = "row_info"
    .end annotation
.end field

.field private final c:Lgq6$a;
    .annotation runtime Lbq7;
        value = "full_info"
    .end annotation
.end field

.field private final d:Lgq6$c;
    .annotation runtime Lbq7;
        value = "withdraw_info"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lbq7;
        value = "program_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgq6$b;Lgq6$a;Lgq6$c;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq6;->a:Ljava/lang/String;

    iput-object p2, p0, Lgq6;->b:Lgq6$b;

    iput-object p3, p0, Lgq6;->c:Lgq6$a;

    iput-object p4, p0, Lgq6;->d:Lgq6$c;

    iput p5, p0, Lgq6;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lgq6$a;
    .locals 0

    iget-object p0, p0, Lgq6;->c:Lgq6$a;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgq6;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lgq6;->e:I

    return p0
.end method

.method public final d()Lzj9;
    .locals 3

    new-instance v0, Lzj9;

    iget v1, p0, Lgq6;->e:I

    iget-object v2, p0, Lgq6;->d:Lgq6$c;

    invoke-virtual {v2}, Lgq6$c;->b()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lgq6;->d:Lgq6$c;

    invoke-virtual {p0}, Lgq6$c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lzj9;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lgq6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lgq6;

    iget-object v1, p0, Lgq6;->a:Ljava/lang/String;

    iget-object v3, p1, Lgq6;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lgq6;->b:Lgq6$b;

    iget-object v3, p1, Lgq6;->b:Lgq6$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lgq6;->c:Lgq6$a;

    iget-object v3, p1, Lgq6;->c:Lgq6$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lgq6;->d:Lgq6$c;

    iget-object v3, p1, Lgq6;->d:Lgq6$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lgq6;->e:I

    iget p1, p1, Lgq6;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lgq6;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgq6;->b:Lgq6$b;

    invoke-virtual {v1}, Lgq6$b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lgq6;->c:Lgq6$a;

    invoke-virtual {v0}, Lgq6$a;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgq6;->d:Lgq6$c;

    invoke-virtual {v1}, Lgq6$c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lgq6;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lgq6;->a:Ljava/lang/String;

    iget-object v1, p0, Lgq6;->b:Lgq6$b;

    iget-object v2, p0, Lgq6;->c:Lgq6$a;

    iget-object v3, p0, Lgq6;->d:Lgq6$c;

    iget p0, p0, Lgq6;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PromocodeInfo(go_to_url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transferPromocodeInfo="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", full_info="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", withdrawal_info="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", program_id="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v4, v0, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
