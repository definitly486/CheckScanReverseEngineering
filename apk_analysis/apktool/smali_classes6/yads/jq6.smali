.class public abstract Lyads/jq6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/dp6;)V
    .locals 1

    iget-boolean v0, p0, Lyads/dp6;->f:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lyads/dp6;->g:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "AdSession is finished"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "AdSession is not started"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
