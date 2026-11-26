.class public final Lyr3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lyr3;->e:I

    const/16 v0, 0x10

    iput v0, p0, Lyr3;->f:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lyr3;->f:I

    int-to-float v0, v0

    invoke-static {p4, v0}, Lpl2;->b(Landroid/content/Context;F)F

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p0, p0, Lyr3;->e:I

    rem-int/2addr p2, p0

    int-to-float p3, p2

    mul-float/2addr p3, p4

    int-to-float p0, p0

    div-float/2addr p3, p0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float p0, p4, p0

    mul-float/2addr p0, p2

    sub-float/2addr p4, p0

    float-to-int p0, p4

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
