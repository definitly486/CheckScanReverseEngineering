.class public final Lyads/ib2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bt0;

.field public final b:Lyads/bo2;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lyads/bt0;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ib2;->a:Lyads/bt0;

    iput-object p2, p0, Lyads/ib2;->b:Lyads/bo2;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lyads/ib2;->c:Ljava/util/Map;

    return-void
.end method
