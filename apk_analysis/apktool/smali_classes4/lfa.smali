.class public final Llfa;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Llfa;->e:I

    iput p2, p0, Llfa;->f:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Llfa;->e:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 p2, p2, 0x2

    iget p0, p0, Llfa;->f:I

    if-nez p2, :cond_0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void

    :cond_0
    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
