.class public abstract Lyads/yt2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lyads/xt2;)Z
    .locals 1

    const-string v0, "YadPreferenceFile"

    invoke-static {p0, v0}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p0

    iget-object p1, p1, Lyads/xt2;->b:Ljava/lang/String;

    check-cast p0, Lyads/av3;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyads/av3;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
