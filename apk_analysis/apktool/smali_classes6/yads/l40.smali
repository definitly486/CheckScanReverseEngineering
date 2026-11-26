.class public final Lyads/l40;
.super Lyads/a0;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lyads/n40;


# direct methods
.method public constructor <init>(Lyads/n40;I)V
    .locals 0

    iput-object p1, p0, Lyads/l40;->d:Lyads/n40;

    invoke-direct {p0}, Lyads/a0;-><init>()V

    invoke-virtual {p1, p2}, Lyads/n40;->a(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lyads/l40;->b:Ljava/lang/Object;

    iput p2, p0, Lyads/l40;->c:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/l40;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lyads/l40;->d:Lyads/n40;

    invoke-virtual {v0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/l40;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lyads/l40;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lyads/l40;->d:Lyads/n40;

    invoke-virtual {v2}, Lyads/n40;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lyads/l40;->b:Ljava/lang/Object;

    iget-object v2, p0, Lyads/l40;->d:Lyads/n40;

    iget v3, p0, Lyads/l40;->c:I

    invoke-virtual {v2, v3}, Lyads/n40;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lyads/l40;->d:Lyads/n40;

    iget-object v2, p0, Lyads/l40;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lyads/n40;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lyads/l40;->c:I

    :cond_2
    iget v0, p0, Lyads/l40;->c:I

    if-ne v0, v1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object p0, p0, Lyads/l40;->d:Lyads/n40;

    invoke-virtual {p0, v0}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lyads/l40;->d:Lyads/n40;

    invoke-virtual {v0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/l40;->b:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lyads/l40;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lyads/l40;->d:Lyads/n40;

    invoke-virtual {v2}, Lyads/n40;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lyads/l40;->b:Ljava/lang/Object;

    iget-object v2, p0, Lyads/l40;->d:Lyads/n40;

    iget v3, p0, Lyads/l40;->c:I

    invoke-virtual {v2, v3}, Lyads/n40;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lyads/l40;->d:Lyads/n40;

    iget-object v2, p0, Lyads/l40;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lyads/n40;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lyads/l40;->c:I

    :cond_2
    iget v0, p0, Lyads/l40;->c:I

    iget-object v2, p0, Lyads/l40;->d:Lyads/n40;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lyads/l40;->b:Ljava/lang/Object;

    invoke-virtual {v2, p0, p1}, Lyads/n40;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v2, v0}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lyads/l40;->d:Lyads/n40;

    iget p0, p0, Lyads/l40;->c:I

    invoke-virtual {v1, p0, p1}, Lyads/n40;->a(ILjava/lang/Object;)V

    return-object v0
.end method
