.class public abstract Lho9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lho9$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Z)Lcom/my/target/n;
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    sget-boolean p1, Lho9$a;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/my/target/h;

    invoke-direct {p1, p0}, Lcom/my/target/h;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaUtils error: exception occurred while creating ExoVideoPlayer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/my/target/g;

    invoke-direct {p1, p0}, Lcom/my/target/g;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
