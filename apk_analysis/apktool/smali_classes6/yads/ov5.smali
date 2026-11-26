.class public final Lyads/ov5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pv5;


# instance fields
.field public final synthetic a:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Lyads/ov5;->a:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lyads/xq3;
    .locals 0

    iget-object p0, p0, Lyads/ov5;->a:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xq3;

    return-object p0
.end method
