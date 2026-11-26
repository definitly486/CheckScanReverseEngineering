.class public final Lyads/ar2;
.super Landroid/util/LruCache;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lyads/ja6;

    check-cast p3, Lyads/gr2;

    check-cast p4, Lyads/gr2;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lyads/gr2;->g()V

    :cond_0
    return-void
.end method
