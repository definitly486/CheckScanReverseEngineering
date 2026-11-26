.class public final synthetic Lok7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lok7;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Lok7;->c:I

    iput p3, p0, Lok7;->d:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget v0, p0, Lok7;->c:I

    iget v1, p0, Lok7;->d:I

    iget-object p0, p0, Lok7;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/material/search/SearchView;->l(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
