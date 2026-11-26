.class public final Lyads/ge4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/hk4;->c:Lyads/hk4;

    new-instance v1, Lyads/cj4;

    invoke-direct {v1, p1}, Lyads/cj4;-><init>(Lyads/bf5;)V

    new-instance v2, Lb36;

    invoke-direct {v2, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/hk4;->d:Lyads/hk4;

    new-instance v1, Lyads/hi4;

    invoke-direct {v1, p1}, Lyads/hi4;-><init>(Lyads/bf5;)V

    new-instance p1, Lb36;

    invoke-direct {p1, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/hk4;->e:Lyads/hk4;

    new-instance v1, Lyads/tm5;

    invoke-direct {v1}, Lyads/tm5;-><init>()V

    new-instance v3, Lb36;

    invoke-direct {v3, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, p1, v3}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lyads/ge4;->a:Ljava/util/Map;

    return-void
.end method
