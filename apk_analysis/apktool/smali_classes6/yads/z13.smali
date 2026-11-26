.class public final Lyads/z13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y13;


# instance fields
.field public final synthetic a:Lyads/yu3;

.field public final synthetic b:Lyads/a23;


# direct methods
.method public constructor <init>(Lyads/yu3;Lyads/a23;)V
    .locals 0

    iput-object p1, p0, Lyads/z13;->a:Lyads/yu3;

    iput-object p2, p0, Lyads/z13;->b:Lyads/a23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lyads/z13;->a:Lyads/yu3;

    invoke-virtual {v0, p1, p2}, Lyads/yu3;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;

    move-result-object p0
    :try_end_0
    .catch Lyads/a94; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lyads/z13;->b:Lyads/a23;

    iget-object p0, p0, Lyads/a23;->a:Lyads/y13;

    invoke-interface {p0, p1, p2}, Lyads/y13;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lyads/z13;->a:Lyads/yu3;

    invoke-virtual {v0, p1, p2}, Lyads/yu3;->b(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;

    move-result-object p0
    :try_end_0
    .catch Lyads/a94; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lyads/z13;->b:Lyads/a23;

    iget-object p0, p0, Lyads/a23;->a:Lyads/y13;

    invoke-interface {p0, p1, p2}, Lyads/y13;->b(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;

    move-result-object p0

    return-object p0
.end method
