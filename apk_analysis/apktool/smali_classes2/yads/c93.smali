.class public final Lyads/c93;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lnt6;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lnt6;-><init>(I)V

    new-instance p1, Lfh8;

    invoke-direct {p1, p0}, Lfh8;-><init>(Lll3;)V

    return-void
.end method

.method public static final a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
