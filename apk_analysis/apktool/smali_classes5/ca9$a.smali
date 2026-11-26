.class public final Lca9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca9$a$a;,
        Lca9$a$b;
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
        value = "text"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final d:Ljava/lang/Long;
    .annotation runtime Lbq7;
        value = "subId"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field private final f:Lca9$a$a;
    .annotation runtime Lbq7;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lca9$a$a;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca9$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lca9$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lca9$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lca9$a;->d:Ljava/lang/Long;

    iput-object p5, p0, Lca9$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lca9$a;->f:Lca9$a$a;

    return-void
.end method


# virtual methods
.method public final a()Lgj9;
    .locals 8

    iget-object v0, p0, Lca9$a;->d:Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lca9$a;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget-object v4, p0, Lca9$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lca9$a;->a:Ljava/lang/String;

    iget-object v6, p0, Lca9$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lca9$a;->f:Lca9$a$a;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lca9$a$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lca9$a;->e:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance v0, Lwi9$e;

    invoke-direct {v0, p0}, Lwi9$e;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lwi9$b;->a:Lwi9$b;

    goto :goto_1

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object p0, p0, Lca9$a;->d:Ljava/lang/Long;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance p0, Lwi9$c;

    invoke-direct {p0, v0, v1}, Lwi9$c;-><init>(J)V

    move-object v7, p0

    goto :goto_2

    :cond_5
    sget-object v0, Lwi9$b;->a:Lwi9$b;

    goto :goto_1

    :cond_6
    sget-object v0, Lwi9$b;->a:Lwi9$b;

    goto :goto_1

    :goto_2
    new-instance v2, Lgj9;

    invoke-direct/range {v2 .. v7}, Lgj9;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwi9;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lca9$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lca9$a;

    iget-object v1, p0, Lca9$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lca9$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lca9$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lca9$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lca9$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lca9$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lca9$a;->d:Ljava/lang/Long;

    iget-object v3, p1, Lca9$a;->d:Ljava/lang/Long;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lca9$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lca9$a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lca9$a;->f:Lca9$a$a;

    iget-object p1, p1, Lca9$a;->f:Lca9$a$a;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lca9$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lca9$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lca9$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lca9$a;->d:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lca9$a;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lca9$a;->f:Lca9$a$a;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lca9$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lca9$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lca9$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lca9$a;->d:Ljava/lang/Long;

    iget-object v4, p0, Lca9$a;->e:Ljava/lang/String;

    iget-object p0, p0, Lca9$a;->f:Lca9$a$a;

    const-string v5, ", text="

    const-string v6, ", logoUrl="

    const-string v7, "Card(title="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
