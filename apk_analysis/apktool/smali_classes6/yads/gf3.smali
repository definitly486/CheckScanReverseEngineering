.class public final Lyads/gf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pv5;


# instance fields
.field public final a:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lyads/gf3;->a:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lyads/xq3;
    .locals 0

    iget-object p0, p0, Lyads/gf3;->a:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xq3;

    return-object p0
.end method
