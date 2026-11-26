.class public final synthetic Lmn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn9;->b:Landroid/widget/ImageView;

    iput-object p2, p0, Lmn9;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmn9;->b:Landroid/widget/ImageView;

    iget-object p0, p0, Lmn9;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lyads/ag6;->a(Landroid/widget/ImageView;Landroid/view/View;)Lj59;

    move-result-object p0

    return-object p0
.end method
