.class public abstract Lyads/lq4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/d2;)Lyads/iq4;
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    new-instance v0, Lyads/kq4;

    invoke-direct {v0, p0, p1}, Lyads/kq4;-><init>(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/d2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/jq4;

    invoke-direct {v0}, Lyads/jq4;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lyads/jq4;

    invoke-direct {v0}, Lyads/jq4;-><init>()V

    :goto_1
    check-cast v0, Lyads/iq4;

    return-object v0
.end method
