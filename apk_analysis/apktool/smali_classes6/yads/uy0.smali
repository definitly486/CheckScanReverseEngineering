.class public final Lyads/uy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    instance-of p0, p2, Lyads/by0;

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->clearFocus()V

    invoke-static {p3}, Lyads/o01;->a(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
