.class public final Lyk6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk6$b$a;,
        Lyk6$b$b;,
        Lyk6$b$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "description"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "value"
    .end annotation
.end field

.field private final d:Lyk6$b$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "statusBadgeText"
    .end annotation
.end field

.field private final f:Lyk6$b$b;
    .annotation runtime Lbq7;
        value = "status"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "iconUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyk6$b$a;Ljava/lang/String;Lyk6$b$b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk6$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lyk6$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lyk6$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lyk6$b;->d:Lyk6$b$a;

    iput-object p5, p0, Lyk6$b;->e:Ljava/lang/String;

    iput-object p6, p0, Lyk6$b;->f:Lyk6$b$b;

    iput-object p7, p0, Lyk6$b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lv56;
    .locals 8

    iget-object v1, p0, Lyk6$b;->g:Ljava/lang/String;

    iget-object v2, p0, Lyk6$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lyk6$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lyk6$b;->d:Lyk6$b$a;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyk6$b$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    iget-object v5, p0, Lyk6$b;->e:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v6, Lv56$a;

    invoke-direct {v6, v5}, Lv56$a;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object v6, p0, Lyk6$b;->c:Ljava/lang/String;

    iget-object p0, p0, Lyk6$b;->f:Lyk6$b$b;

    sget-object v7, Lyk6$b$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v7, p0

    const/4 v7, 0x1

    if-eq p0, v7, :cond_3

    const/4 v7, 0x2

    if-ne p0, v7, :cond_2

    sget-object p0, Lv56$b;->Set:Lv56$b;

    :goto_2
    move-object v7, p0

    move-object v4, v0

    goto :goto_3

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-object v4

    :cond_3
    sget-object p0, Lv56$b;->NotSet:Lv56$b;

    goto :goto_2

    :goto_3
    new-instance v0, Lv56;

    invoke-direct/range {v0 .. v7}, Lv56;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv56$a;Ljava/lang/String;Lv56$b;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyk6$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyk6$b;

    iget-object v1, p0, Lyk6$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lyk6$b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyk6$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lyk6$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyk6$b;->c:Ljava/lang/String;

    iget-object v3, p1, Lyk6$b;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyk6$b;->d:Lyk6$b$a;

    iget-object v3, p1, Lyk6$b;->d:Lyk6$b$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyk6$b;->e:Ljava/lang/String;

    iget-object v3, p1, Lyk6$b;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyk6$b;->f:Lyk6$b$b;

    iget-object v3, p1, Lyk6$b;->f:Lyk6$b$b;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lyk6$b;->g:Ljava/lang/String;

    iget-object p1, p1, Lyk6$b;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyk6$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyk6$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyk6$b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyk6$b;->d:Lyk6$b$a;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lyk6$b$a;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyk6$b;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyk6$b;->f:Lyk6$b$b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyk6$b;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lyk6$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lyk6$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lyk6$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lyk6$b;->d:Lyk6$b$a;

    iget-object v4, p0, Lyk6$b;->e:Ljava/lang/String;

    iget-object v5, p0, Lyk6$b;->f:Lyk6$b$b;

    iget-object p0, p0, Lyk6$b;->g:Ljava/lang/String;

    const-string v6, ", description="

    const-string v7, ", value="

    const-string v8, "EmailBannerResponse(title="

    invoke-static {v8, v0, v6, v1, v7}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusBadgeText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
