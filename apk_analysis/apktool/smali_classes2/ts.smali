.class public final Lts;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lns;

.field public final c:Lr14;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lns;Lr14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lts;->a:Ljava/lang/Object;

    iput-object p2, p0, Lts;->b:Lns;

    iput-object p3, p0, Lts;->c:Lr14;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lts;

    if-eqz v0, :cond_1

    check-cast p1, Lts;

    iget-object v0, p1, Lts;->b:Lns;

    iget-object v1, p0, Lts;->b:Lns;

    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lts;->a:Ljava/lang/Object;

    iget-object v2, p1, Lts;->a:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lns;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lts;->c:Lr14;

    iget-object p1, p1, Lts;->c:Lr14;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lts;->b:Lns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lts;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lns;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lts;->c:Lr14;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
