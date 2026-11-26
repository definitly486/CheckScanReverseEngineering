.class public final Lyads/bi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/bi2;->a:J

    iput-object v0, p0, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>(JLandroidx/collection/ArrayMap;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lyads/bi2;->a:J

    .line 15
    iput-object p3, p0, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lyads/ai2;
    .locals 0

    iget-object p0, p0, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ai2;

    return-object p0
.end method
