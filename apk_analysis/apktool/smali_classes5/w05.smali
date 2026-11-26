.class public final Lw05;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lw05;->b:Ljava/util/ArrayList;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object p1, p0, Lw05;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ly05;
    .locals 8

    iget-object v0, p0, Lw05;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb15;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Ld12;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "Cyclic dependency chain found: "

    invoke-static {v3, p0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v0, Lv36$a;

    invoke-direct {v0}, Lv36$a;-><init>()V

    iget-object p0, p0, Lw05;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Ld15$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, p0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Ld15$a;->d:I

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Ld15$a;->a:I

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Ld15$a;->b:I

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, p0

    add-float/2addr v6, v4

    float-to-int p0, v6

    iput p0, v2, Ld15$a;->c:I

    iput p0, v2, Ld15$a;->e:I

    iput v3, v2, Ld15$a;->f:I

    new-instance p0, Lx05$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lg15$a;

    invoke-direct {v3}, Lg15$a;-><init>()V

    new-instance v4, Lc15$a;

    invoke-direct {v4}, Lc15$a;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb15;

    invoke-interface {v7, v0}, Lb15;->e(Lv36$a;)V

    invoke-interface {v7, p0}, Lb15;->b(Lx05$a;)V

    invoke-interface {v7, v3}, Lb15;->g(Lg15$a;)V

    invoke-interface {v7, v4}, Lb15;->d(Lc15$a;)V

    goto :goto_1

    :cond_4
    new-instance v6, Ld15;

    invoke-direct {v6, v2}, Ld15;-><init>(Ld15$a;)V

    new-instance v2, Lc15;

    iget-object v4, v4, Lc15$a;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v4}, Lc15;-><init>(Ljava/util/Map;)V

    iput-object v6, p0, Lx05$a;->a:Ld15;

    iput-object v2, p0, Lx05$a;->g:Lc15;

    iget-object v2, p0, Lx05$a;->b:Lu49;

    if-nez v2, :cond_5

    new-instance v2, Lu49;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lx05$a;->b:Lu49;

    :cond_5
    iget-object v2, p0, Lx05$a;->c:Lrm9;

    if-nez v2, :cond_6

    new-instance v2, Lrm9;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lx05$a;->c:Lrm9;

    :cond_6
    iget-object v2, p0, Lx05$a;->d:Lqq4;

    if-nez v2, :cond_7

    new-instance v2, Lrq4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lx05$a;->d:Lqq4;

    :cond_7
    iget-object v2, p0, Lx05$a;->e:Li14$a;

    if-nez v2, :cond_8

    new-instance v2, Li14$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lx05$a;->e:Li14$a;

    :cond_8
    iget-object v2, p0, Lx05$a;->f:Lcd2;

    if-nez v2, :cond_9

    new-instance v2, Lcd2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lx05$a;->f:Lcd2;

    :cond_9
    new-instance v2, Lx05;

    invoke-direct {v2, p0}, Lx05;-><init>(Lx05$a;)V

    new-instance p0, Lf15;

    invoke-direct {p0, v5, v3, v2}, Lf15;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ly05;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    new-instance v3, Lv36;

    invoke-direct {v3, v0}, Lv36;-><init>(Lv36$a;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, p0, v0}, Ly05;-><init>(Lv36;Lf15;Ljava/util/List;)V

    return-object v2

    :cond_a
    const-string p0, "No plugins were added to this builder. Use #usePlugin method to add them"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method
