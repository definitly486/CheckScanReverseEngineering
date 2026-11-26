.class public final Lc78$a;
.super Lc78;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public volatile a:Z


# virtual methods
.method public final a()V
    .locals 0

    iget-boolean p0, p0, Lc78$a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Already released"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
