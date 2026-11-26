.class public final Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionPositionCompat"
.end annotation


# instance fields
.field final mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-direct {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public getNode()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOffset()I
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastB_1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$SelectionPositionCompat;->mPosition:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method
