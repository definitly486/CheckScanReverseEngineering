.class public final Lyads/zf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lyads/zf6;->b:Landroid/widget/ImageView;

    iput-object p2, p0, Lyads/zf6;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/zf6;->b:Landroid/widget/ImageView;

    iget-object p0, p0, Lyads/zf6;->c:Landroid/view/View;

    invoke-static {p1, p0}, Lyads/ag6;->b(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
