.class public final Ly1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ly1;)V
    .locals 3

    new-instance v0, Lte0;

    new-instance v1, Luj3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Luj3;-><init>(I)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-interface {p0, v0}, Ly1;->k(Lti3;)V

    return-void
.end method
