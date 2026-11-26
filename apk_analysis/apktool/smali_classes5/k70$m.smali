.class public final Lk70$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk70$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "preview"
    .end annotation
.end field

.field public final d:Lk70$b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$m;->a:Ljava/lang/String;

    iput p2, p0, Lk70$m;->b:I

    iput-boolean p3, p0, Lk70$m;->c:Z

    sget-object p1, Lk70$b$a;->TITLE:Lk70$b$a;

    iput-object p1, p0, Lk70$m;->d:Lk70$b$a;

    return-void
.end method


# virtual methods
.method public final a()Lhk9;
    .locals 1

    new-instance v0, Lek9;

    iget-object p0, p0, Lk70$m;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lek9;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lk70$m;->b:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lk70$m;->c:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$m;

    iget-object v1, p0, Lk70$m;->a:Ljava/lang/String;

    iget-object v3, p1, Lk70$m;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lk70$m;->b:I

    iget v3, p1, Lk70$m;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lk70$m;->c:Z

    iget-boolean p1, p1, Lk70$m;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getType()Lk70$b$a;
    .locals 0

    iget-object p0, p0, Lk70$m;->d:Lk70$b$a;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk70$m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lk70$m;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean p0, p0, Lk70$m;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lk70$m;->a:Ljava/lang/String;

    iget v1, p0, Lk70$m;->b:I

    iget-boolean p0, p0, Lk70$m;->c:Z

    const-string v2, ", sort="

    const-string v3, ", preview="

    const-string v4, "TitleBlockResponse(title="

    invoke-static {v1, v4, v0, v2, v3}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
