.class public final Lyads/rv5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/et4;


# direct methods
.method public constructor <init>(Lyads/e42;Lyads/et4;Lyads/l93;Lyads/yr3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/rv5;->a:Lyads/et4;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Lyads/ht1;

    new-instance p3, Lyads/px;

    new-instance p4, Lyads/gf3;

    invoke-direct {p4}, Lyads/gf3;-><init>()V

    new-instance v0, Lyads/nv5;

    invoke-direct {v0}, Lyads/nv5;-><init>()V

    invoke-direct {p3, p4, v0}, Lyads/px;-><init>(Lyads/gf3;Lyads/nv5;)V

    invoke-direct {p1, p2, p3}, Lyads/ht1;-><init>(Lyads/et4;Lyads/px;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Luc6;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Luc6;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lfh8;

    invoke-direct {p0, p1}, Lfh8;-><init>(Lll3;)V

    return-void
.end method

.method public static final a(Lyads/rv5;)Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lyads/rv5;->a:Lyads/et4;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Storage cannot work with templates!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method
