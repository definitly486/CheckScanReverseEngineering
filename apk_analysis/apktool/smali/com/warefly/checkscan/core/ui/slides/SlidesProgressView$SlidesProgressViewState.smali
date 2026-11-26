.class final Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlidesProgressViewState"
.end annotation


# instance fields
.field public final b:Landroid/os/Parcelable;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;->b:Landroid/os/Parcelable;

    iput p2, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView$SlidesProgressViewState;->c:I

    return-void
.end method
