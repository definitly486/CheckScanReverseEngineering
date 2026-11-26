.class public final Lxa0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxa0$a;,
        Lxa0$b;,
        Lxa0$c;,
        Lxa0$d;,
        Lxa0$e;,
        Lxa0$f;,
        Lxa0$g;
    }
.end annotation


# instance fields
.field private final a:Lxa0$f;
    .annotation runtime Lbq7;
        value = "headerBlock"
    .end annotation
.end field

.field private final b:Lxa0$g;
    .annotation runtime Lbq7;
        value = "stepsBlock"
    .end annotation
.end field

.field private final c:Lxa0$b;
    .annotation runtime Lbq7;
        value = "benefitsBlock"
    .end annotation
.end field

.field private final d:Lxa0$d;
    .annotation runtime Lbq7;
        value = "descriptionBlock"
    .end annotation
.end field

.field private final e:Lxa0$c;
    .annotation runtime Lbq7;
        value = "buttonBlock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxa0$f;Lxa0$g;Lxa0$b;Lxa0$d;Lxa0$c;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa0;->a:Lxa0$f;

    iput-object p2, p0, Lxa0;->b:Lxa0$g;

    iput-object p3, p0, Lxa0;->c:Lxa0$b;

    iput-object p4, p0, Lxa0;->d:Lxa0$d;

    iput-object p5, p0, Lxa0;->e:Lxa0$c;

    return-void
.end method


# virtual methods
.method public final a()Lxa0$b;
    .locals 0

    iget-object p0, p0, Lxa0;->c:Lxa0$b;

    return-object p0
.end method

.method public final b()Lxa0$c;
    .locals 0

    iget-object p0, p0, Lxa0;->e:Lxa0$c;

    return-object p0
.end method

.method public final c()Lxa0$d;
    .locals 0

    iget-object p0, p0, Lxa0;->d:Lxa0$d;

    return-object p0
.end method

.method public final d()Lxa0$f;
    .locals 0

    iget-object p0, p0, Lxa0;->a:Lxa0$f;

    return-object p0
.end method

.method public final e()Lxa0$g;
    .locals 0

    iget-object p0, p0, Lxa0;->b:Lxa0$g;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxa0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lxa0;

    iget-object v1, p0, Lxa0;->a:Lxa0$f;

    iget-object v3, p1, Lxa0;->a:Lxa0$f;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lxa0;->b:Lxa0$g;

    iget-object v3, p1, Lxa0;->b:Lxa0$g;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lxa0;->c:Lxa0$b;

    iget-object v3, p1, Lxa0;->c:Lxa0$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lxa0;->d:Lxa0$d;

    iget-object v3, p1, Lxa0;->d:Lxa0$d;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lxa0;->e:Lxa0$c;

    iget-object p1, p1, Lxa0;->e:Lxa0$c;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lxa0;->a:Lxa0$f;

    invoke-virtual {v0}, Lxa0$f;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lxa0;->b:Lxa0$g;

    invoke-virtual {v1}, Lxa0$g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lxa0;->c:Lxa0$b;

    invoke-virtual {v0}, Lxa0$b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lxa0;->d:Lxa0$d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lxa0$d;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lxa0;->e:Lxa0$c;

    invoke-virtual {p0}, Lxa0$c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lxa0;->a:Lxa0$f;

    iget-object v1, p0, Lxa0;->b:Lxa0$g;

    iget-object v2, p0, Lxa0;->c:Lxa0$b;

    iget-object v3, p0, Lxa0;->d:Lxa0$d;

    iget-object p0, p0, Lxa0;->e:Lxa0$c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BankLandingResponse(headerBlock="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stepsBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", benefitsBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", descriptionBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
