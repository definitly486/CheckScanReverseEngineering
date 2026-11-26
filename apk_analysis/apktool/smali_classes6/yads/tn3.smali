.class public abstract Lyads/tn3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/pn3;Lyads/yn;)Lyads/qn3;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lyads/sn3;

    invoke-direct {p0}, Lyads/sn3;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lyads/rn3;

    invoke-direct {p0, p1}, Lyads/rn3;-><init>(Lyads/yn;)V

    return-object p0
.end method
