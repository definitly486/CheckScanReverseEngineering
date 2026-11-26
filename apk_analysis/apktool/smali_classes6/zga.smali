.class public final synthetic Lzga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzga;->b:Lbm3;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lzga;->b:Lbm3;

    invoke-static {p0, p1, p2}, Lyads/wy1;->a(Lbm3;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
