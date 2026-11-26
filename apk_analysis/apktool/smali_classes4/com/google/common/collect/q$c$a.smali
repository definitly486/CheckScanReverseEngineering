.class public final Lcom/google/common/collect/q$c$a;
.super Lcom/google/common/collect/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/q$c;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/q$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/q$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/q$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/q$c$a;->b:Lcom/google/common/collect/q$c;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/q$c$a;->b:Lcom/google/common/collect/q$c;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/q$c$a;->b:Lcom/google/common/collect/q$c;

    invoke-virtual {p0}, Lcom/google/common/collect/q$c;->a()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
