.class public final Lyads/px;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pv5;


# instance fields
.field public final a:Lyads/gf3;


# direct methods
.method public constructor <init>(Lyads/gf3;Lyads/nv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/px;->a:Lyads/gf3;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lyads/xq3;
    .locals 0

    iget-object p0, p0, Lyads/px;->a:Lyads/gf3;

    iget-object p0, p0, Lyads/gf3;->a:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xq3;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
