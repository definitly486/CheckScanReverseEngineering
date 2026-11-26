.class public final Lk70$h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk70$h$a$a;,
        Lk70$h$a$b;,
        Lk70$h$a$c;,
        Lk70$h$a$d;
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
        value = "url"
    .end annotation
.end field

.field private final c:Lk70$h$a$d;
    .annotation runtime Lbq7;
        value = "event"
    .end annotation
.end field

.field private final d:Lk70$h$a$c;
    .annotation runtime Lbq7;
        value = "confirm"
    .end annotation
.end field

.field private final e:Lk70$h$a$a;
    .annotation runtime Lbq7;
        value = "card"
    .end annotation
.end field

.field private final f:Lk70$h$a$b;
    .annotation runtime Lbq7;
        value = "claimTask"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk70$h$a$d;Lk70$h$a$c;Lk70$h$a$a;Lk70$h$a$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$h$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lk70$h$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lk70$h$a;->c:Lk70$h$a$d;

    iput-object p4, p0, Lk70$h$a;->d:Lk70$h$a$c;

    iput-object p5, p0, Lk70$h$a;->e:Lk70$h$a$a;

    iput-object p6, p0, Lk70$h$a;->f:Lk70$h$a$b;

    return-void
.end method


# virtual methods
.method public final a()Luj9$a;
    .locals 4

    iget-object v0, p0, Lk70$h$a;->f:Lk70$h$a$b;

    if-eqz v0, :cond_0

    new-instance v1, Lwi9$a;

    invoke-virtual {v0}, Lk70$h$a$b;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lwi9$a;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk70$h$a;->e:Lk70$h$a$a;

    if-eqz v0, :cond_1

    new-instance v1, Lwi9$c;

    invoke-virtual {v0}, Lk70$h$a$a;->a()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lwi9$c;-><init>(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk70$h$a;->c:Lk70$h$a$d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lk70$h$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v2, Lwi9$i;

    invoke-virtual {v0}, Lk70$h$a$d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lk70$h$a;->c:Lk70$h$a$d;

    invoke-virtual {v3}, Lk70$h$a$d;->b()Z

    move-result v3

    invoke-direct {v2, v1, v0, v3}, Lwi9$i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lwi9$j;

    invoke-virtual {v0}, Lk70$h$a$d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lk70$h$a;->c:Lk70$h$a$d;

    invoke-virtual {v2}, Lk70$h$a$d;->b()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lwi9$j;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lk70$h$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Lwi9$e;

    invoke-direct {v1, v0}, Lwi9$e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lwi9$b;->a:Lwi9$b;

    :goto_0
    iget-object v0, p0, Lk70$h$a;->d:Lk70$h$a$c;

    iget-object p0, p0, Lk70$h$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v2, Luj9$a;

    new-instance v3, Lwi9$k;

    invoke-virtual {v0}, Lk70$h$a$c;->a()Lec;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lwi9$k;-><init>(Lec;Lwi9;)V

    invoke-direct {v2, v3, p0}, Luj9$a;-><init>(Lwi9;Ljava/lang/String;)V

    return-object v2

    :cond_5
    new-instance v0, Luj9$a;

    invoke-direct {v0, v1, p0}, Luj9$a;-><init>(Lwi9;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Lvj9$a;
    .locals 5

    new-instance v0, Lvj9$a;

    iget-object v1, p0, Lk70$h$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lk70$h$a;->f:Lk70$h$a$b;

    if-eqz v2, :cond_0

    new-instance p0, Lwi9$a;

    invoke-virtual {v2}, Lk70$h$a$b;->a()I

    move-result v2

    invoke-direct {p0, v2}, Lwi9$a;-><init>(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lk70$h$a;->e:Lk70$h$a$a;

    if-eqz v2, :cond_1

    new-instance p0, Lwi9$c;

    invoke-virtual {v2}, Lk70$h$a$a;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lwi9$c;-><init>(J)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lk70$h$a;->c:Lk70$h$a$d;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lk70$h$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v4, Lwi9$i;

    invoke-virtual {v2}, Lk70$h$a$d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lk70$h$a;->c:Lk70$h$a$d;

    invoke-virtual {p0}, Lk70$h$a$d;->b()Z

    move-result p0

    invoke-direct {v4, v3, v2, p0}, Lwi9$i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p0, v4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    new-instance v3, Lwi9$j;

    invoke-virtual {v2}, Lk70$h$a$d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lk70$h$a;->c:Lk70$h$a$d;

    invoke-virtual {p0}, Lk70$h$a$d;->b()Z

    move-result p0

    invoke-direct {v3, v2, p0}, Lwi9$j;-><init>(Ljava/lang/String;Z)V

    move-object p0, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lk70$h$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "checkscan://"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iget-object p0, p0, Lk70$h$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Lwi9$e;

    invoke-direct {v2, p0}, Lwi9$e;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lwi9$d;

    invoke-direct {v2, p0}, Lwi9$d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p0, Lwi9$b;->a:Lwi9$b;

    :goto_1
    invoke-direct {v0, p0, v1}, Lvj9$a;-><init>(Lwi9;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$h$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$h$a;

    iget-object v1, p0, Lk70$h$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lk70$h$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk70$h$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lk70$h$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk70$h$a;->c:Lk70$h$a$d;

    iget-object v3, p1, Lk70$h$a;->c:Lk70$h$a$d;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lk70$h$a;->d:Lk70$h$a$c;

    iget-object v3, p1, Lk70$h$a;->d:Lk70$h$a$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lk70$h$a;->e:Lk70$h$a$a;

    iget-object v3, p1, Lk70$h$a;->e:Lk70$h$a$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lk70$h$a;->f:Lk70$h$a$b;

    iget-object p1, p1, Lk70$h$a;->f:Lk70$h$a$b;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk70$h$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lk70$h$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lk70$h$a;->c:Lk70$h$a$d;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lk70$h$a$d;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lk70$h$a;->d:Lk70$h$a$c;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lk70$h$a$c;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lk70$h$a;->e:Lk70$h$a$a;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lk70$h$a$a;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lk70$h$a;->f:Lk70$h$a$b;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lk70$h$a$b;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lk70$h$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lk70$h$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lk70$h$a;->c:Lk70$h$a$d;

    iget-object v3, p0, Lk70$h$a;->d:Lk70$h$a$c;

    iget-object v4, p0, Lk70$h$a;->e:Lk70$h$a$a;

    iget-object p0, p0, Lk70$h$a;->f:Lk70$h$a$b;

    const-string v5, ", url="

    const-string v6, ", event="

    const-string v7, "ButtonResponse(title="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", claimTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
