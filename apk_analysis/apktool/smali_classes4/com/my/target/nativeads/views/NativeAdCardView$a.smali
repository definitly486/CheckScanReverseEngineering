.class public final Lcom/my/target/nativeads/views/NativeAdCardView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/NativeAdCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/my/target/nativeads/views/NativeAdCardView;


# direct methods
.method public constructor <init>(Lcom/my/target/nativeads/views/NativeAdCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/nativeads/views/NativeAdCardView$a;->b:Lcom/my/target/nativeads/views/NativeAdCardView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/NativeAdCardView$a;->b:Lcom/my/target/nativeads/views/NativeAdCardView;

    iget-object p1, p0, Lcom/my/target/nativeads/views/NativeAdCardView;->f:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
