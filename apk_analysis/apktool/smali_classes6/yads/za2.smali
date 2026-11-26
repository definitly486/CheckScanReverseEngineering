.class public final Lyads/za2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zo1;

.field public final b:Lyads/fs2;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcl4;

.field public final e:Lcl4;

.field public final f:Lcl4;


# direct methods
.method public constructor <init>(Lyads/zo1;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/za2;->a:Lyads/zo1;

    iput-object p2, p0, Lyads/za2;->b:Lyads/fs2;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/za2;->c:Ljava/util/ArrayList;

    new-instance p1, Law4;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Law4;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/za2;->d:Lcl4;

    new-instance p1, Ljs3;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Ljs3;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/za2;->e:Lcl4;

    new-instance p1, Leh4;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Leh4;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/za2;->f:Lcl4;

    return-void
.end method

.method public static final a(Lyads/za2;)Lyads/q10;
    .locals 2

    .line 105
    new-instance v0, Lyads/q10;

    .line 106
    iget-object v1, p0, Lyads/za2;->a:Lyads/zo1;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    iget-object p0, p0, Lyads/za2;->b:Lyads/fs2;

    .line 108
    invoke-direct {v0, v1, p0}, Lyads/q10;-><init>(Landroid/content/Context;Lyads/fs2;)V

    return-object v0
.end method

.method public static final b(Lyads/za2;)Lyads/yc4;
    .locals 2

    new-instance v0, Lyads/yc4;

    iget-object v1, p0, Lyads/za2;->a:Lyads/zo1;

    iget-object p0, p0, Lyads/za2;->b:Lyads/fs2;

    invoke-direct {v0, v1, p0}, Lyads/yc4;-><init>(Lyads/zo1;Lyads/fs2;)V

    return-object v0
.end method

.method public static final c(Lyads/za2;)Lyads/hl5;
    .locals 2

    new-instance v0, Lyads/hl5;

    iget-object v1, p0, Lyads/za2;->a:Lyads/zo1;

    iget-object p0, p0, Lyads/za2;->b:Lyads/fs2;

    invoke-direct {v0, v1, p0}, Lyads/hl5;-><init>(Lyads/zo1;Lyads/fs2;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/text/Spanned;Landroid/text/Layout;)V
    .locals 10

    iget-object v0, p0, Lyads/za2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/i41;

    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    move v5, v4

    invoke-virtual {p3, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v6, v3

    iget-object v3, v0, Lyads/i41;->c:Lyads/h92;

    instance-of v3, v3, Lyads/f92;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lyads/za2;->f:Lcl4;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/q10;

    iget-object v7, v0, Lyads/i41;->b:Lyads/o92;

    iget-object v8, v0, Lyads/i41;->c:Lyads/h92;

    move-object v2, p3

    move-object v0, v3

    move v3, v5

    move v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lyads/q10;->a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILyads/o92;Lyads/h92;)V

    goto :goto_0

    :cond_0
    move v3, v5

    move v5, v1

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lyads/za2;->d:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ab2;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lyads/za2;->e:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ab2;

    :goto_1
    iget-object v7, v0, Lyads/i41;->b:Lyads/o92;

    iget-object v8, v0, Lyads/i41;->c:Lyads/h92;

    move-object v2, p3

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lyads/ab2;->a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILyads/o92;Lyads/h92;)V

    goto :goto_0

    :cond_2
    return-void
.end method
