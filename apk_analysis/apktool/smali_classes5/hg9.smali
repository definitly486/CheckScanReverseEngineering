.class public final Lhg9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v6, "file"

    const-string v7, "content"

    const-string v0, "http"

    const-string v1, "https"

    const-string v2, "about"

    const-string v3, "data"

    const-string v4, "blob"

    const-string v5, "javascript"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lhg9;->a:Ljava/util/Set;

    return-void
.end method
