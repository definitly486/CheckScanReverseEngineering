.class public final Lrm6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrm6$a;,
        Lrm6$b;,
        Lrm6$c;,
        Lrm6$d;,
        Lrm6$e;,
        Lrm6$f;,
        Lrm6$g;,
        Lrm6$h;,
        Lrm6$i;,
        Lrm6$j;,
        Lrm6$k;,
        Lrm6$l;,
        Lrm6$m;,
        Lrm6$n;,
        Lrm6$o;,
        Lrm6$p;
    }
.end annotation


# instance fields
.field private final a:Lrm6$l;
    .annotation runtime Lbq7;
        value = "personal"
    .end annotation
.end field

.field private final b:Lrm6$h;
    .annotation runtime Lbq7;
        value = "email"
    .end annotation
.end field

.field private final c:Lrm6$n;
    .annotation runtime Lbq7;
        value = "pro"
    .end annotation
.end field

.field private final d:Lrm6$k;
    .annotation runtime Lbq7;
        value = "invite"
    .end annotation
.end field

.field private final e:Lrm6$j;
    .annotation runtime Lbq7;
        value = "footer"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrm6$l;Lrm6$h;Lrm6$n;Lrm6$k;Lrm6$j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm6;->a:Lrm6$l;

    iput-object p2, p0, Lrm6;->b:Lrm6$h;

    iput-object p3, p0, Lrm6;->c:Lrm6$n;

    iput-object p4, p0, Lrm6;->d:Lrm6$k;

    iput-object p5, p0, Lrm6;->e:Lrm6$j;

    return-void
.end method


# virtual methods
.method public final a()Lrm6$h;
    .locals 0

    iget-object p0, p0, Lrm6;->b:Lrm6$h;

    return-object p0
.end method

.method public final b()Lrm6$j;
    .locals 0

    iget-object p0, p0, Lrm6;->e:Lrm6$j;

    return-object p0
.end method

.method public final c()Lrm6$k;
    .locals 0

    iget-object p0, p0, Lrm6;->d:Lrm6$k;

    return-object p0
.end method

.method public final d()Lrm6$l;
    .locals 0

    iget-object p0, p0, Lrm6;->a:Lrm6$l;

    return-object p0
.end method

.method public final e()Lrm6$n;
    .locals 0

    iget-object p0, p0, Lrm6;->c:Lrm6$n;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrm6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrm6;

    iget-object v1, p0, Lrm6;->a:Lrm6$l;

    iget-object v3, p1, Lrm6;->a:Lrm6$l;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrm6;->b:Lrm6$h;

    iget-object v3, p1, Lrm6;->b:Lrm6$h;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lrm6;->c:Lrm6$n;

    iget-object v3, p1, Lrm6;->c:Lrm6$n;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lrm6;->d:Lrm6$k;

    iget-object v3, p1, Lrm6;->d:Lrm6$k;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lrm6;->e:Lrm6$j;

    iget-object p1, p1, Lrm6;->e:Lrm6$j;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lrm6;->a:Lrm6$l;

    invoke-virtual {v0}, Lrm6$l;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrm6;->b:Lrm6$h;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lrm6$h;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrm6;->c:Lrm6$n;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lrm6$n;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrm6;->d:Lrm6$k;

    invoke-virtual {v1}, Lrm6$k;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lrm6;->e:Lrm6$j;

    invoke-virtual {p0}, Lrm6$j;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lrm6;->a:Lrm6$l;

    iget-object v1, p0, Lrm6;->b:Lrm6$h;

    iget-object v2, p0, Lrm6;->c:Lrm6$n;

    iget-object v3, p0, Lrm6;->d:Lrm6$k;

    iget-object p0, p0, Lrm6;->e:Lrm6$j;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ProfileResponse(personal="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", email="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pro="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", invite="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", footer="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
