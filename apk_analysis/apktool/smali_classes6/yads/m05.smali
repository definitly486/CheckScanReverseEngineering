.class public abstract Lyads/m05;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final mTouchRecorder:Lyads/yz5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lyads/yz5;

    invoke-direct {v0, p1}, Lyads/yz5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/m05;->mTouchRecorder:Lyads/yz5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p2, Lyads/yz5;

    invoke-direct {p2, p1}, Lyads/yz5;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyads/m05;->mTouchRecorder:Lyads/yz5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p2, Lyads/yz5;

    invoke-direct {p2, p1}, Lyads/yz5;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyads/m05;->mTouchRecorder:Lyads/yz5;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lyads/m05;->mTouchRecorder:Lyads/yz5;

    iget-object v0, v0, Lyads/yz5;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getTouchRecorder()Lyads/yz5;
    .locals 0

    iget-object p0, p0, Lyads/m05;->mTouchRecorder:Lyads/yz5;

    return-object p0
.end method
