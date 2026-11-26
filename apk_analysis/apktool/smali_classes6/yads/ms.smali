.class public final Lyads/ms;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ms;->a:Ljava/lang/String;

    iput-object p4, p0, Lyads/ms;->b:Ljava/lang/String;

    iput p1, p0, Lyads/ms;->c:I

    iput p2, p0, Lyads/ms;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ms;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ms;

    iget v1, p0, Lyads/ms;->c:I

    iget v3, p1, Lyads/ms;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lyads/ms;->d:I

    iget v3, p1, Lyads/ms;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lyads/ms;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyads/ms;->b:Ljava/lang/String;

    iget-object p1, p1, Lyads/ms;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/ms;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/ms;->b:Ljava/lang/String;

    iget v2, p0, Lyads/ms;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lyads/ms;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
