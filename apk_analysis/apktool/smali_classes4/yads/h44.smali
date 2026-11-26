.class public abstract synthetic Lyads/h44;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/i44;Lyads/ip0;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method
