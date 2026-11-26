.class public Lyads/ch4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ok4;


# instance fields
.field public final a:Lyads/ae4;

.field public final b:Lyads/d9;

.field public final c:Lyads/pr4;

.field public final d:Lyads/vh6;

.field public e:Ljava/lang/String;

.field public f:Lyads/dh4;


# direct methods
.method public constructor <init>(Lyads/ae4;Lyads/d9;)V
    .locals 2

    new-instance v0, Lyads/pr4;

    invoke-direct {v0}, Lyads/pr4;-><init>()V

    new-instance v1, Lyads/vh6;

    invoke-direct {v1}, Lyads/vh6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ch4;->a:Lyads/ae4;

    iput-object p2, p0, Lyads/ch4;->b:Lyads/d9;

    iput-object v0, p0, Lyads/ch4;->c:Lyads/pr4;

    iput-object v1, p0, Lyads/ch4;->d:Lyads/vh6;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IZ)Lyads/i66;
    .locals 4

    iget-object p1, p0, Lyads/ch4;->f:Lyads/dh4;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {p1}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    new-instance p0, Lyads/f66;

    sget-object p1, Lyads/e66;->g:Lyads/e66;

    invoke-direct {p0, p1, v0, v0}, Lyads/f66;-><init>(Lyads/e66;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p1}, Lyads/eh6;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lyads/f66;

    sget-object p1, Lyads/e66;->h:Lyads/e66;

    invoke-direct {p0, p1, v0, v0}, Lyads/f66;-><init>(Lyads/e66;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object v1, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {v1, p1}, Lyads/th6;->a(Landroid/view/View;)Lyads/uh6;

    move-result-object v1

    iget-object v2, v1, Lyads/uh6;->b:Ljava/lang/String;

    iput-object v2, p0, Lyads/ch4;->e:Ljava/lang/String;

    iget v1, v1, Lyads/uh6;->a:I

    const/4 v3, 0x1

    if-ge v1, v3, :cond_3

    invoke-static {v3, v0, v2}, Lyads/d66;->a(ILjava/lang/String;Ljava/lang/String;)Lyads/f66;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lyads/ch4;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    iget-object p0, p0, Lyads/ch4;->e:Ljava/lang/String;

    new-instance p1, Lyads/f66;

    sget-object p2, Lyads/e66;->e:Lyads/e66;

    invoke-direct {p1, p2, v0, p0}, Lyads/f66;-><init>(Lyads/e66;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    iget-object p2, p0, Lyads/ch4;->b:Lyads/d9;

    iget-object p2, p2, Lyads/d9;->k:Ljava/lang/String;

    sget-object v0, Lyads/tn0;->b:[Lyads/tn0;

    const-string v0, "divkit"

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lyads/ch4;->b:Lyads/d9;

    iget-boolean p2, p2, Lyads/d9;->H:Z

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p2, Lyads/g66;

    invoke-direct {p2}, Lyads/g66;-><init>()V

    if-nez p3, :cond_7

    iget-object p3, p0, Lyads/ch4;->d:Lyads/vh6;

    invoke-virtual {p3, p1}, Lyads/vh6;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lyads/ch4;->c:Lyads/pr4;

    invoke-virtual {p0, p1, p3}, Lyads/pr4;->a(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result p0

    if-lez p0, :cond_7

    new-instance p0, Lyads/g66;

    iget-object p1, p2, Lyads/g66;->a:Ljava/util/List;

    sget-object p2, Lyads/h66;->f:Lyads/h66;

    invoke-static {p2, p1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/g66;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_1
    return-object p2

    :cond_8
    :goto_2
    iget-object p2, p0, Lyads/ch4;->a:Lyads/ae4;

    invoke-virtual {p2, p3}, Lyads/ae4;->a(Z)Lyads/i66;

    move-result-object p2

    if-nez p3, :cond_b

    instance-of p3, p2, Lyads/g66;

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    iget-object p3, p0, Lyads/ch4;->d:Lyads/vh6;

    invoke-virtual {p3, p1}, Lyads/vh6;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lyads/ch4;->c:Lyads/pr4;

    invoke-virtual {p0, p1, p3}, Lyads/pr4;->a(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result p0

    if-lez p0, :cond_b

    new-instance p0, Lyads/g66;

    check-cast p2, Lyads/g66;

    iget-object p1, p2, Lyads/g66;->a:Ljava/util/List;

    sget-object p2, Lyads/h66;->f:Lyads/h66;

    invoke-static {p2, p1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/g66;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_b
    :goto_3
    return-object p2
.end method

.method public final a(Lyads/dh4;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lyads/ch4;->a:Lyads/ae4;

    .line 186
    iput-object p1, v0, Lyads/ae4;->d:Lyads/dh4;

    .line 187
    iput-object p1, p0, Lyads/ch4;->f:Lyads/dh4;

    return-void
.end method

.method public final a()Z
    .locals 0

    .line 182
    iget-object p0, p0, Lyads/ch4;->f:Lyads/dh4;

    if-eqz p0, :cond_1

    .line 183
    iget-object p0, p0, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {p0}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p0}, Lyads/eh6;->b(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 2

    .line 188
    invoke-static {p1}, Lyads/eh6;->a(Landroid/view/View;)I

    move-result p1

    .line 189
    const-string v0, "actualPercent: "

    const-string v1, ", expectedPercent: "

    .line 190
    invoke-static {p1, p2, v0, v1}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iput-object v0, p0, Lyads/ch4;->e:Ljava/lang/String;

    if-ge p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lyads/m85;
    .locals 0

    iget-object p0, p0, Lyads/ch4;->a:Lyads/ae4;

    invoke-virtual {p0}, Lyads/ae4;->e()Lyads/m85;

    move-result-object p0

    return-object p0
.end method
