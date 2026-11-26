.class public final Lfc8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc8$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "counterText"
    .end annotation
.end field

.field private final c:Lfc8$a$a;
    .annotation runtime Lbq7;
        value = "bottom"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfc8$a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p4, p5, p6}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfc8$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lfc8$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lfc8$a;->c:Lfc8$a$a;

    iput-object p4, p0, Lfc8$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lfc8$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lfc8$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ld7;
    .locals 7

    iget-object v1, p0, Lfc8$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lfc8$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lfc8$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lfc8$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lfc8$a;->f:Ljava/lang/String;

    iget-object v0, p0, Lfc8$a;->c:Lfc8$a$a;

    if-eqz v0, :cond_1

    new-instance v6, Ld7$a;

    invoke-virtual {v0}, Lfc8$a$a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lfc8$a;->c:Lfc8$a$a;

    invoke-virtual {p0}, Lfc8$a$a;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-direct {v6, v0, p0}, Ld7$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    new-instance v0, Ld7;

    invoke-direct/range {v0 .. v6}, Ld7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ld7$a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfc8$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfc8$a;

    iget-object v1, p0, Lfc8$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lfc8$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfc8$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lfc8$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfc8$a;->c:Lfc8$a$a;

    iget-object v3, p1, Lfc8$a;->c:Lfc8$a$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfc8$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lfc8$a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lfc8$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lfc8$a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lfc8$a;->f:Ljava/lang/String;

    iget-object p1, p1, Lfc8$a;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lfc8$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lfc8$a;->b:Ljava/lang/String;

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

    iget-object v2, p0, Lfc8$a;->c:Lfc8$a$a;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lfc8$a$a;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lfc8$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lfc8$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lfc8$a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lfc8$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lfc8$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lfc8$a;->c:Lfc8$a$a;

    iget-object v3, p0, Lfc8$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lfc8$a;->e:Ljava/lang/String;

    iget-object p0, p0, Lfc8$a;->f:Ljava/lang/String;

    const-string v5, ", counterText="

    const-string v6, ", bottom="

    const-string v7, "BlockResponse(text="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    const-string v2, ")"

    invoke-static {v0, v4, v1, p0, v2}, Ldg;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
