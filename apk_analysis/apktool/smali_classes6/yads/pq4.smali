.class public abstract Lyads/pq4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/ml2;Lll3;)Lyads/sr4;
    .locals 2

    new-instance v0, Lyads/sr4;

    new-instance v1, Lx5a;

    invoke-direct {v1, p1}, Lx5a;-><init>(Lll3;)V

    invoke-direct {v0, v1, p0}, Lyads/sr4;-><init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;Lyads/ml2;)V

    return-object v0
.end method

.method public static final a(Lll3;)Z
    .locals 0

    .line 11
    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
