.class public final Lyads/a23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y13;


# instance fields
.field public final a:Lyads/y13;


# direct methods
.method public constructor <init>(Lyads/y13;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a23;->a:Lyads/y13;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lyads/a23;
    .locals 2

    new-instance v0, Lyads/yu3;

    invoke-direct {v0, p1}, Lyads/yu3;-><init>(Ljava/util/ArrayList;)V

    new-instance p1, Lyads/a23;

    new-instance v1, Lyads/z13;

    invoke-direct {v1, v0, p0}, Lyads/z13;-><init>(Lyads/yu3;Lyads/a23;)V

    invoke-direct {p1, v1}, Lyads/a23;-><init>(Lyads/y13;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;
    .locals 0

    .line 16
    iget-object p0, p0, Lyads/a23;->a:Lyads/y13;

    invoke-interface {p0, p1, p2}, Lyads/y13;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;
    .locals 0

    iget-object p0, p0, Lyads/a23;->a:Lyads/y13;

    invoke-interface {p0, p1, p2}, Lyads/y13;->b(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;

    move-result-object p0

    return-object p0
.end method
