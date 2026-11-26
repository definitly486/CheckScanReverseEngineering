.class public final Lyads/wf6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/c9;

.field public final b:Lyads/aw3;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/c9;

    invoke-direct {v0}, Lyads/c9;-><init>()V

    sget-object v1, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/wf6;->a:Lyads/c9;

    iput-object v1, p0, Lyads/wf6;->b:Lyads/aw3;

    return-void
.end method

.method public static final b(Landroid/view/ViewGroup;Z)V
    .locals 5

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    xor-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    if-lez v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lyads/qs;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/qs;

    invoke-virtual {v0}, Lyads/qs;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Z)V
    .locals 2

    iget-object p0, p0, Lyads/wf6;->b:Lyads/aw3;

    new-instance v0, Lr8a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lr8a;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method
