.class public final Lyads/vr1;
.super Lu0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyads/wr1;


# direct methods
.method public constructor <init>(Lyads/wr1;)V
    .locals 0

    iput-object p1, p0, Lyads/vr1;->b:Lyads/wr1;

    invoke-direct {p0}, Lu0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/cn1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lyads/cn1;

    invoke-super {p0, p1}, Lv;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyads/vr1;->b:Lyads/wr1;

    iget-boolean v1, v0, Lyads/wr1;->r:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lyads/vr1;->b:Lyads/wr1;

    invoke-virtual {p0, p1}, Lyads/wr1;->e(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    return-object p0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lyads/vr1;->b:Lyads/wr1;

    invoke-virtual {v0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lyads/vr1;->b:Lyads/wr1;

    iget-boolean p0, p0, Lyads/wr1;->r:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lyads/cn1;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lyads/cn1;

    invoke-super {p0, p1}, Lu0;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lyads/cn1;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lyads/cn1;

    invoke-super {p0, p1}, Lu0;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
